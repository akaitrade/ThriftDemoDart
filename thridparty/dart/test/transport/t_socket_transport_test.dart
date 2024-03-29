// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements. See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership. The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License. You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

library thrift.test.transport.t_socket_transport_test;

import 'dart:async';
import 'dart:convert' show Utf8Codec, base64;
import 'dart:typed_data' show Uint8List;

import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:thrift/thrift.dart';

void main() {
  const utf8Codec = Utf8Codec();

  final requestText = 'my test request';
  final requestBytes = Uint8List.fromList(utf8Codec.encode(requestText));
  final requestBase64 = base64.encode(requestBytes);

  final responseText = 'response 1';
  final responseBytes = Uint8List.fromList(utf8Codec.encode(responseText));
  final responseBase64 = base64.encode(responseBytes);

  final framedResponseBase64 = base64.encode(_getFramedResponse(responseBytes));

  group('TClientSocketTransport', () {
    late FakeSocket socket;
    late TTransport transport;

    setUp(() async {
      socket = FakeSocket(sync: false);
      await socket.open();
      transport = TClientSocketTransport(socket);
      await transport.open();
      transport.writeAll(requestBytes);
    });

    test('Test client sending data over transport', () async {
      expect(socket.sendPayload, isNull);

      Future responseReady = transport.flush();

      // allow microtask events to finish
      await Future.value();

      expect(socket.sendPayload, isNotNull);
      expect(socket.sendPayload, requestBytes);

      // simulate a response
      socket.receiveFakeMessage(responseBase64);

      await responseReady;
      var buffer = Uint8List(responseBytes.length);
      transport.readAll(buffer, 0, responseBytes.length);
      var bufferText = utf8Codec.decode(buffer);

      expect(bufferText, responseText);
    });
  }, timeout: Timeout(Duration(seconds: 1)));

  group('TClientSocketTransport with FramedTransport', () {
    late FakeSocket socket;
    late TTransport transport;

    setUp(() async {
      socket = FakeSocket(sync: true);
      await socket.open();

      transport = TFramedTransport(TClientSocketTransport(socket));
      await transport.open();
      transport.writeAll(requestBytes);
    });

    test('Test client sending data over framed transport', () async {
      String bufferText = "";

      Future responseReady = transport.flush().then((_) {
        var buffer = Uint8List(responseBytes.length);
        transport.readAll(buffer, 0, responseBytes.length);
        bufferText = utf8Codec.decode(buffer);
      });

      // simulate a response
      socket.receiveFakeMessage(framedResponseBase64);

      await responseReady;
      expect(bufferText, responseText);
    });
  }, timeout: Timeout(Duration(seconds: 1)));

  group('TAsyncClientSocketTransport', () {
    late FakeSocket socket;
    late FakeProtocolFactory protocolFactory;
    late TTransport transport;

    setUp(() async {
      socket = FakeSocket(sync: true);
      await socket.open();

      protocolFactory = FakeProtocolFactory();
      protocolFactory.message = TMessage('foo', TMessageType.CALL, 123);
      transport = TAsyncClientSocketTransport(
          socket, TMessageReader(protocolFactory),
          responseTimeout: Duration.zero);
      await transport.open();
      transport.writeAll(requestBytes);
    });

    test('Test response correlates to correct request', () async {
      String bufferText = "";

      Future responseReady = transport.flush().then((_) {
        var buffer = Uint8List(responseBytes.length);
        transport.readAll(buffer, 0, responseBytes.length);
        bufferText = utf8Codec.decode(buffer);
      });

      // simulate a response
      protocolFactory.message = TMessage('foo', TMessageType.REPLY, 123);
      socket.receiveFakeMessage(responseBase64);

      // simulate a second response
      var response2Text = 'response 2';
      var response2Bytes = Uint8List.fromList(utf8Codec.encode(response2Text));
      var response2Base64 = base64.encode(response2Bytes);
      protocolFactory.message = TMessage('foo2', TMessageType.REPLY, 124);
      socket.receiveFakeMessage(response2Base64);

      await responseReady;
      expect(bufferText, responseText);
    });

    test('Test response timeout', () async {
      Future responseReady = transport.flush();
      expect(responseReady, throwsA(isA<TimeoutException>()));
    });
  }, timeout: Timeout(Duration(seconds: 1)));

  group('TAsyncClientSocketTransport with TFramedTransport', () {
    late FakeSocket socket;
    late FakeProtocolFactory protocolFactory;
    late TTransport transport;

    setUp(() async {
      socket = FakeSocket(sync: true);
      await socket.open();

      protocolFactory = FakeProtocolFactory();
      protocolFactory.message = TMessage('foo', TMessageType.CALL, 123);
      var messageReader = TMessageReader(protocolFactory,
          byteOffset: TFramedTransport.headerByteCount);

      transport = TFramedTransport(TAsyncClientSocketTransport(
          socket, messageReader,
          responseTimeout: Duration.zero));
      await transport.open();
      transport.writeAll(requestBytes);
    });

    test('Test async client sending data over framed transport', () async {
      String bufferText = "";

      Future responseReady = transport.flush().then((_) {
        var buffer = Uint8List(responseBytes.length);
        transport.readAll(buffer, 0, responseBytes.length);
        bufferText = utf8Codec.decode(buffer);
      });

      // simulate a response
      protocolFactory.message = TMessage('foo', TMessageType.REPLY, 123);
      socket.receiveFakeMessage(framedResponseBase64);

      await responseReady;
      expect(bufferText, responseText);
    });
  }, timeout: Timeout(Duration(seconds: 1)));

  group('TServerTransport', () {
    test('Test server transport listens to socket', () async {
      var socket = FakeSocket();
      await socket.open();
      expect(socket.isOpen, isTrue);

      var transport = TServerSocketTransport(socket);
      expect(transport.hasReadData, isFalse);

      socket.receiveFakeMessage(requestBase64);

      // allow microtask events to finish
      await Future.value();

      expect(transport.hasReadData, isTrue);

      var buffer = Uint8List(requestBytes.length);
      transport.readAll(buffer, 0, requestBytes.length);

      var bufferText = utf8Codec.decode(buffer);
      expect(bufferText, requestText);
    });

    test('Test server sending data over transport', () async {
      var socket = FakeSocket();
      await socket.open();

      var transport = TServerSocketTransport(socket);

      transport.writeAll(responseBytes);
      // PaulW - I removed this because _sendPayload is never set to null
      // expect(socket.sendPayload, isNull);

      transport.flush();

      // allow microtask events to finish
      await Future.value();

      expect(socket.sendPayload, isNotNull);
      expect(socket.sendPayload, responseBytes);
    });
  }, timeout: Timeout(Duration(seconds: 1)));
}

class FakeSocket extends TSocket {
  final StreamController<TSocketState> _onStateController;
  @override
  Stream<TSocketState> get onState => _onStateController.stream;

  final StreamController<Object> _onErrorController;
  @override
  Stream<Object> get onError => _onErrorController.stream;

  final StreamController<Uint8List> _onMessageController;
  @override
  Stream<Uint8List> get onMessage => _onMessageController.stream;

  FakeSocket({bool sync = false})
      : _onStateController = StreamController.broadcast(sync: sync),
        _onErrorController = StreamController.broadcast(sync: sync),
        _onMessageController = StreamController.broadcast(sync: sync);

  bool _isOpen = false;

  @override
  bool get isOpen => _isOpen;

  @override
  bool get isClosed => !isOpen;

  @override
  Future open() async {
    _isOpen = true;
    _onStateController.add(TSocketState.OPEN);
  }

  @override
  Future close() async {
    _isOpen = false;
    _onStateController.add(TSocketState.CLOSED);
  }

  Uint8List? _sendPayload;
  Uint8List? get sendPayload => _sendPayload;

  @override
  void send(Uint8List data) {
    if (!isOpen) throw StateError('The socket is not open');

    _sendPayload = data;
  }

  void receiveFakeMessage(String base64text) {
    if (!isOpen) throw StateError('The socket is not open');

    var message = Uint8List.fromList(base64.decode(base64text));
    _onMessageController.add(message);
  }
}

class FakeProtocolFactory implements TProtocolFactory {
  FakeProtocolFactory();

  // Paul here - I added this constructor to make it compile
  TMessage message = TMessage("", TMessageType.CALL, 0 /* seqid */);

  @override
  getProtocol(TTransport transport) => FakeProtocol(message);
}

class FakeProtocol extends Mock implements TProtocol {
  FakeProtocol(this._message);

  TMessage _message;

  @override
  readMessageBegin() => _message;
}

Uint8List _getFramedResponse(Uint8List responseBytes) {
  var byteOffset = TFramedTransport.headerByteCount;
  var response = Uint8List(byteOffset + responseBytes.length);

  response.buffer.asByteData().setInt32(0, responseBytes.length);
  response.setAll(byteOffset, responseBytes);

  return response;
}
