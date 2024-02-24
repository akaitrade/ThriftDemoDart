/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library general.src.amount;

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

class Amount implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("Amount");
  static final TField _INTEGRAL_FIELD_DESC = TField("integral", TType.I32, 1);
  static final TField _FRACTION_FIELD_DESC = TField("fraction", TType.I64, 2);

  int _integral = 0;
  static const int INTEGRAL = 1;
  int _fraction = 0;
  static const int FRACTION = 2;


  Amount() {
    this.integral = 0;

    this.fraction = 0;

  }

  // integral
  int get integral => this._integral;

  set integral(int integral) {
    this._integral = integral;
  }

  // fraction
  int get fraction => this._fraction;

  set fraction(int fraction) {
    this._fraction = fraction;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_integral = false;
    bool __isset_fraction = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case INTEGRAL:
          if (field.type == TType.I32) {
            this.integral = iprot.readI32();
            __isset_integral = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case FRACTION:
          if (field.type == TType.I64) {
            this.fraction = iprot.readI64();
            __isset_fraction = true;
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
    if (!__isset_integral) {
        throw TProtocolError(TProtocolErrorType.UNKNOWN, "Required field 'integral' was not found in serialized data! Struct: " + toString());
    }

    if (!__isset_fraction) {
        throw TProtocolError(TProtocolErrorType.UNKNOWN, "Required field 'fraction' was not found in serialized data! Struct: " + toString());
    }

    validate();
  }

  @override
  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldBegin(_INTEGRAL_FIELD_DESC);
    oprot.writeI32(this.integral);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_FRACTION_FIELD_DESC);
    oprot.writeI64(this.fraction);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("Amount(");

    ret.write("integral:");
    ret.write(this.integral);

    ret.write(", ");
    ret.write("fraction:");
    ret.write(this.fraction);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // alas, we cannot check 'integral' because it's a primitive and you chose the non-beans generator.
    // alas, we cannot check 'fraction' because it's a primitive and you chose the non-beans generator.
    // check that fields of type enum have valid values
  }

}

