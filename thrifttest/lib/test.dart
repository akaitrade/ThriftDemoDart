import 'package:thrift/thrift.dart';
import 'package:thrifttest/api/lib/api.dart';
import 'dart:async';
import 'dart:io';
import 'package:thrift/thrift_console.dart';
import 'dart:convert'; // For Encoding
import 'dart:typed_data'; // For working with bytes
// Assume `ed25519_dart` for Ed25519, adjust based on actual library used
//import 'package:ed25519_dart/ed25519_dart.dart';
// Your Thrift imports here, adjusted to your generated Dart files

class Client {
  late TTransport transport;
  late TProtocol protocol;
  late APIClient api;
  late Keys keys;
  late TTransport _transport;
  // Private constructor
  Client._();

  // Asynchronous factory constructor
  static Future<Client> create(String ip, int port, String publicKey, String privateKey, String targetKey) async {
    var client = Client._();

    Socket socket = await Socket.connect(ip, port);
    client._transport = TAsyncClientSocketTransport(TTcpSocket(socket), TMessageReader(TBinaryProtocolFactory()));
    client.protocol = TBinaryProtocol(client._transport);
    client.api = APIClient(client.protocol);
    await client._transport.open();
    /*client.transport = TSocketTransport(socket);
    client.protocol = TBinaryProtocol(client.transport);
    client.api = APIClient(client.protocol);
    client.transport.open();*/
    client.keys = Keys(publicKey: publicKey, privateKey: privateKey, targetKey: targetKey);
    return client;
  }
  
  @override
  void dispose() {
    transport?.close();
  }

  void transactionGet(int poolSeq, int index) {
    var tr = TransactionId();
    tr.index = index;
    tr.poolSeq  = poolSeq;
    var trgr = api?.transactionGet(tr);
  }

  Future<WalletBalanceGetResult> walletGetBalance() async {
  if (api == null) {
    throw Exception('API client is not initialized.');
  }
  try {
    // Assuming `walletBalanceGet` returns a Future<WalletBalanceGetResult>
    WalletBalanceGetResult value = await api!.walletBalanceGet(keys.publicKeyBytes);
    return value;
  } catch (e) {
    // Handle or rethrow the error as appropriate
    throw Exception('Failed to get wallet balance: $e');
  }
}
/*
  TransactionFlowResult transferCoins(int integral, int fraction, double fee) {
    return api?.transactionFlow(createTransaction(integral, fraction, fee));
  }

  TransactionFlowResult deploySmartContract(String smCode) {
    return api?.transactionFlow(createTransactionWithSmartContract(smCode));
  }

  Transaction createTransaction(int integral, int fraction, double fee) {
    var transaction = Transaction();
    // Populate transaction fields similarly to C# version
    // Handling of bytes and signatures will need to adjust for Dart libraries

    Uint8List bytes = Uint8List(86);
    // Fill `bytes` similarly to the C# code, adjusting for Dart's way of handling byte arrays

    Uint8List signature = Ed25519.sign(bytes, keys.privateKeyBytes);
    bool verifyResult = Ed25519.verify(signature, bytes, keys.publicKeyBytes);
    if (!verifyResult) throw Exception("Signature could not be verified");

    transaction.signature = signature;
    return transaction;
  }

  Uint8List reverse(Uint8List arr) {
    return Uint8List.fromList(arr.reversed.toList());
  }

  int fee(double value) {
    // Implement fee calculation logic similar to C# version
  }*/
}

class Keys {
  String publicKey;
  String privateKey;
  String targetKey;
  Uint8List get publicKeyBytes => Uint8List.fromList(utf8.encode(publicKey));
  Uint8List get privateKeyBytes => Uint8List.fromList(utf8.encode(privateKey));
  Uint8List get targetKeyBytes => Uint8List.fromList(utf8.encode(targetKey));

  Keys({required this.publicKey, required this.privateKey, required this.targetKey});
}

// Assume `Transaction`, `TransactionId`, `TransactionGetResult`, `WalletBalanceGetResult`, `TransactionFlowResult`, and other necessary classes are defined based on your Thrift definitions.
