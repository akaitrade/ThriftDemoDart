/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library general.src.byte_code_object;

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

class ByteCodeObject implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("ByteCodeObject");
  static final TField _NAME_FIELD_DESC = TField("name", TType.STRING, 1);
  static final TField _BYTE_CODE_FIELD_DESC = TField("byteCode", TType.STRING, 2);

  String _name = "";
  static const int NAME = 1;
  Uint8List _byteCode = "";
  static const int BYTECODE = 2;


  ByteCodeObject() {
  }

  // name
  String get name => this._name;

  set name(String name) {
    this._name = name;
  }

  // byteCode
  Uint8List get byteCode => this._byteCode;

  set byteCode(Uint8List byteCode) {
    this._byteCode = byteCode;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_name = false;
    bool __isset_byteCode = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case NAME:
          if (field.type == TType.STRING) {
            this.name = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BYTECODE:
          if (field.type == TType.STRING) {
            this.byteCode = iprot.readBinary();
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
    oprot.writeFieldBegin(_NAME_FIELD_DESC);
    oprot.writeString(this.name);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_BYTE_CODE_FIELD_DESC);
    oprot.writeBinary(this.byteCode);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("ByteCodeObject(");

    ret.write("name:");
    ret.write(this.name);

    ret.write(", ");
    ret.write("byteCode:");
    ret.write("BINARY");

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

