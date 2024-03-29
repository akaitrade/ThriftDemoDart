/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library general.src.api_response;

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

class APIResponse implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("APIResponse");
  static final TField _CODE_FIELD_DESC = TField("code", TType.BYTE, 1);
  static final TField _MESSAGE_FIELD_DESC = TField("message", TType.STRING, 2);

  int _code = 0;
  static const int CODE = 1;
  String _message = "";
  static const int MESSAGE = 2;


  APIResponse() {
  }

  // code
  int get code => this._code;

  set code(int code) {
    this._code = code;
  }

  // message
  String get message => this._message;

  set message(String message) {
    this._message = message;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_code = false;
    bool __isset_message = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case CODE:
          if (field.type == TType.BYTE) {
            this.code = iprot.readByte();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case MESSAGE:
          if (field.type == TType.STRING) {
            this.message = iprot.readString();
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
    oprot.writeFieldBegin(_CODE_FIELD_DESC);
    oprot.writeByte(this.code);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_MESSAGE_FIELD_DESC);
    oprot.writeString(this.message);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("APIResponse(");

    ret.write("code:");
    ret.write(this.code);

    ret.write(", ");
    ret.write("message:");
    ret.write(this.message);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

