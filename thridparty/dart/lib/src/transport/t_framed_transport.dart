/// Licensed to the Apache Software Foundation (ASF) under one
/// or more contributor license agreements. See the NOTICE file
/// distributed with this work for additional information
/// regarding copyright ownership. The ASF licenses this file
/// to you under the Apache License, Version 2.0 (the
/// "License"); you may not use this file except in compliance
/// with the License. You may obtain a copy of the License at
///
/// http://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing,
/// software distributed under the License is distributed on an
/// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
/// KIND, either express or implied. See the License for the
/// specific language governing permissions and limitations
/// under the License.

part of thrift;

/// Framed [TTransport].
///
/// Adapted from the Java Framed transport.
class TFramedTransport extends TBufferedTransport {
  static const int headerByteCount = 4;

  final TTransport _transport;

  final Uint8List _headerBytes = Uint8List(headerByteCount);
  int _receivedHeaderBytes = 0;

  int _bodySize = 0;
  Uint8List? _body;
  int _receivedBodyBytes = 0;

  Completer<Uint8List>? _frameCompleter;

  TFramedTransport(TTransport transport) : _transport = transport {
    reset(isOpen: true);
    // if (transport == null) {
    //   throw ArgumentError.notNull("transport");
    // }
  }

  @override
  bool get isOpen => _transport.isOpen;

  @override
  Future<void> open() {
    reset(isOpen: true);
    return _transport.open();
  }

  @override
  Future<void> close() {
    reset(isOpen: false);
    return _transport.close();
  }

  @override
  Future<int> read(Uint8List buffer, int offset, int length) async {
    if (hasReadData) {
      int got = await super.read(buffer, offset, length);
      if (got > 0) return got;
    }

    // read another frame of data (taken from the Java implementation)
    // NOT taken from the dart 1 implementation
    // NOT SURE IF THIS IS THE RIGHT WAY TO DO IT
    await _readFrame();

    // IMPORTANT: by the time you've got here,
    // an entire frame is available for reading

    return super.read(buffer, offset, length);
  }

  Future<void> _readFrame() async {
    if (_body == null) {
      bool gotFullHeader = await _readFrameHeader();
      if (!gotFullHeader) {
        return;
      }
    }

    await _readFrameBody();
  }

  Future<bool> _readFrameHeader() async {
    var remainingHeaderBytes = headerByteCount - _receivedHeaderBytes;

    int got = await _transport.read(
        _headerBytes, _receivedHeaderBytes, remainingHeaderBytes);
    if (got < 0) {
      throw TTransportError(TTransportErrorType.UNKNOWN,
          "Socket closed during frame header read");
    }

    _receivedHeaderBytes += got;

    if (_receivedHeaderBytes == headerByteCount) {
      int size = _headerBytes.buffer.asByteData().getUint32(0);

      _receivedHeaderBytes = 0;

      if (size < 0) {
        throw TTransportError(
            TTransportErrorType.UNKNOWN, "Read a negative frame size: $size");
      }

      _bodySize = size;
      _body = Uint8List(_bodySize);
      _receivedBodyBytes = 0;

      return true;
    } else {
      _registerForReadableBytes();
      return false;
    }
  }

  Future<void> _readFrameBody() async {
    var remainingBodyBytes = _bodySize - _receivedBodyBytes;

    int got =
        await _transport.read(_body!, _receivedBodyBytes, remainingBodyBytes);
    if (got < 0) {
      throw TTransportError(
          TTransportErrorType.UNKNOWN, "Socket closed during frame body read");
    }

    _receivedBodyBytes += got;

    if (_receivedBodyBytes == _bodySize) {
      var body = _body!;

      _bodySize = 0;
      _body = null;
      _receivedBodyBytes = 0;

      setReadBuffer(body);

      var completer = _frameCompleter;
      _frameCompleter = null;
      completer!.complete(Uint8List(0));
    } else {
      _registerForReadableBytes();
    }
  }

  @override
  Future<void> flush() {
    if (_frameCompleter == null) {
      Uint8List buffer = consumeWriteBuffer();
      int length = buffer.length;

      _headerBytes.buffer.asByteData().setUint32(0, length);
      _transport.write(_headerBytes, 0, headerByteCount);
      _transport.write(buffer, 0, length);

      _frameCompleter = Completer<Uint8List>();
      _registerForReadableBytes();
    }

    return _frameCompleter!.future;
  }

  void _registerForReadableBytes() {
    _transport.flush().then((_) {
      _readFrame();
    }).catchError((e) {
      var completer = _frameCompleter!;

      _receivedHeaderBytes = 0;
      _bodySize = 0;
      _body = null;
      _receivedBodyBytes = 0;
      _frameCompleter = null;

      completer.completeError(e);
    });
  }
}
