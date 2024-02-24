/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library general.src.method_signature;

//import 'package:thrift/src/protocol/t_protocol.dart';
import 'package:thrift/thrift.dart';
import 'class_object.dart';
import 'object.dart';
import 'amount.dart';
import 'variant.dart';
import 'annotation.dart';
import 'method_argument.dart';
import 'method_description.dart';
import 'byte_code_object.dart';
import 'method_signature.dart';
import 'method_short_argument.dart';
import 'method_short_description.dart';
import 'api_response.dart';

class MethodSignature implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("MethodSignature");
  static final TField _SIGNATURE_FIELD_DESC = TField("signature", TType.STRING, 1);
  static final TField _ADDRESS_FIELD_DESC = TField("address", TType.STRING, 2);

  String _signature = "";
  static const int SIGNATURE = 1;
  Uint8List _address = "";
  static const int ADDRESS = 2;


  MethodSignature() {
  }

  // signature
  String get signature => this._signature;

  set signature(String signature) {
    this._signature = signature;
  }

  // address
  Uint8List get address => this._address;

  set address(Uint8List address) {
    this._address = address;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_signature = false;
    bool __isset_address = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case SIGNATURE:
          if (field.type == TType.STRING) {
            this.signature = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ADDRESS:
          if (field.type == TType.STRING) {
            this.address = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  @override
  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldBegin(_SIGNATURE_FIELD_DESC);
    oprot.writeString(this.signature);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_ADDRESS_FIELD_DESC);
    oprot.writeBinary(this.address);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("MethodSignature(");

    ret.write("signature:");
    ret.write(this.signature);

    ret.write(", ");
    ret.write("address:");
    ret.write("BINARY");

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

