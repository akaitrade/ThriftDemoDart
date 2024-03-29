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

/// HTTP implementation of [TTransport].
///
/// For example:
///
///     var transport = THttpClientTransport(BrowserClient(),
///         THttpConfig(url, {'X-My-Custom-Header': 'my value'}));
///     var protocol = TJsonProtocol(transport);
///     var client = MyThriftServiceClient(protocol);
///     var result = client.myMethod();
///
/// Adapted from the JS XHR HTTP transport.
class THttpClientTransport extends TBufferedTransport {
  final Client httpClient;
  final THttpConfig config;

  THttpClientTransport(this.httpClient, this.config);

  @override
  Future<void> close() async {
    reset(isOpen: false);
    httpClient.close();
  }

  @override
  Future<void> flush() {
    var requestBody = base64.encode(consumeWriteBuffer());

    // Use a sync completer to ensure that the buffer can be read immediately
    // after the read buffer is set, and avoid a race condition where another
    // response could overwrite the read buffer.
    var completer = Completer<void>.sync();

    httpClient
        .post(config.url, headers: config.headers, body: requestBody)
        .then((response) {
      Uint8List data;
      try {
        data = Uint8List.fromList(base64.decode(response.body));
      } on FormatException catch (_) {
        throw TProtocolError(TProtocolErrorType.INVALID_DATA,
            "Expected a Base 64 encoded string.");
      }

      setReadBuffer(data);
      completer.complete();
    });

    return completer.future;
  }
}

class THttpConfig {
  final Uri url;

  Map<String, String> _headers;
  Map<String, String> get headers => _headers;

  THttpConfig(this.url, this._headers) {
    if (!url.hasAuthority) {
      throw ArgumentError("Invalid url");
    }

    _initHeaders(headers);
  }

  void _initHeaders(Map<String, String> initial) {
    var h = {};

    // if (initial != null) {
    h.addAll(initial);
    // }

    h['Content-Type'] = 'application/x-thrift';
    h['Accept'] = 'application/x-thrift';

    _headers = Map.unmodifiable(h);
  }
}
