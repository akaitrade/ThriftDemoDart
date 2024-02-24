/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.smart_contract_deploy;

//import 'package:thrift/src/protocol/t_protocol.dart';
import 'package:thrift/thrift.dart';
import 'dart:typed_data';
import 'transaction_type.dart';
import 'smart_operation_state.dart';
import 'transaction_state.dart';
import 'tokens_list_sort_field.dart';
import 'token_holders_sort_field.dart';
import 'wallets_list_sort.dart';
import 'package:thrifttest/general/lib/general.dart' as t_general;
import 'amount_commission.dart';
import 'cumulative_amount.dart';
import 'smart_contract_deploy.dart';
import 'smart_contract.dart';
import 'smart_contract_invocation.dart';
import 'transaction_id.dart';
import 'token_deploy_trans_info.dart';
import 'token_transfer_trans_info.dart';
import 'smart_deploy_trans_info.dart';
import 'smart_execution_trans_info.dart';
import 'extra_fee.dart';
import 'smart_state_trans_info.dart';
import 'smart_trans_info.dart';
import 'transaction.dart';
import 'sealed_transaction.dart';
import 'short_transaction.dart';
import 'pool.dart';
import 'delegated_item.dart';
import 'delegated.dart';
import 'wallet_data.dart';
import 'period_stats.dart';
import 'wallet_data_get_result.dart';
import 'wallet_id_get_result.dart';
import 'wallet_transactions_count_get_result.dart';
import 'wallet_balance_get_result.dart';
import 'transaction_get_result.dart';
import 'transactions_get_result.dart';
import 'transaction_flow_result.dart';
import 'single_token_query.dart';
import 'single_query.dart';
import 'transactions_query.dart';
import 'selected_token_transfers.dart';
import 'public_key_transactions.dart';
import 'filtered_transactions_list_result.dart';
import 'pool_list_get_result.dart';
import 'pool_info_get_result.dart';
import 'pool_transactions_get_result.dart';
import 'stats_get_result.dart';
import 'smart_contract_get_result.dart';
import 'smart_contract_addresses_list_get_result.dart';
import 'smart_contracts_list_get_result.dart';
import 'transactions_state_get_result.dart';
import 'smart_method_params_get_result.dart';
import 'contract_all_methods_get_result.dart';
import 'smart_contract_method_argument.dart';
import 'smart_contract_method.dart';
import 'smart_contract_data_result.dart';
import 'smart_contract_compile_result.dart';
import 'token_info.dart';
import 'token_transaction.dart';
import 'token_holder.dart';
import 'token_balance.dart';
import 'token_balances_result.dart';
import 'token_transfer.dart';
import 'token_transfers_result.dart';
import 'token_transactions_result.dart';
import 'token_info_result.dart';
import 'token_holders_result.dart';
import 'send_transaction_result.dart';
import 'tokens_list_result.dart';
import 'wallet_info.dart';
import 'actual_fee_get_result.dart';
import 'wallets_get_result.dart';
import 'trusted_info.dart';
import 'trusted_get_result.dart';
import 'sync_state_result.dart';
import 'execute_count_get_result.dart';
import 'token_filters.dart';
import 'transactions_list.dart';
import 'transactions_list_flow_result.dart';
import 'multiple_request_ids.dart';
import 'addresses.dart';
import 'wallet_balance.dart';
import 'wallet_balance_full.dart';
import 'wallet_balance_results.dart';
import 'accepted_request_id.dart';
import 'round_data.dart';

class SmartContractDeploy implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("SmartContractDeploy");
  static final TField _SOURCE_CODE_FIELD_DESC = TField("sourceCode", TType.STRING, 1);
  static final TField _BYTE_CODE_OBJECTS_FIELD_DESC = TField("byteCodeObjects", TType.LIST, 2);
  static final TField _HASH_STATE_FIELD_DESC = TField("hashState", TType.STRING, 3);
  static final TField _TOKEN_STANDARD_FIELD_DESC = TField("tokenStandard", TType.I32, 4);
  static final TField _LANG_FIELD_DESC = TField("lang", TType.BYTE, 5);
  static final TField _METHODS_FIELD_DESC = TField("methods", TType.LIST, 6);

  String _sourceCode = "";
  static const int SOURCECODE = 1;
  List<t_general.ByteCodeObject> _byteCodeObjects = [];
  static const int BYTECODEOBJECTS = 2;
  String _hashState = "";
  static const int HASHSTATE = 3;
  int _tokenStandard = 0;
  static const int TOKENSTANDARD = 4;
  int _lang = 0;
  static const int LANG = 5;
  List<t_general.MethodShortDescription>? _methods;
  static const int METHODS = 6;

  //bool __isset_methods = false;

  SmartContractDeploy() {
  }

  // sourceCode
  String get sourceCode => this._sourceCode;

  set sourceCode(String sourceCode) {
    this._sourceCode = sourceCode;
  }

  // byteCodeObjects
  List<t_general.ByteCodeObject> get byteCodeObjects => this._byteCodeObjects;

  set byteCodeObjects(List<t_general.ByteCodeObject> byteCodeObjects) {
    this._byteCodeObjects = byteCodeObjects;
  }

  // hashState
  String get hashState => this._hashState;

  set hashState(String hashState) {
    this._hashState = hashState;
  }

  // tokenStandard
  int get tokenStandard => this._tokenStandard;

  set tokenStandard(int tokenStandard) {
    this._tokenStandard = tokenStandard;
  }

  // lang
  int get lang => this._lang;

  set lang(int lang) {
    this._lang = lang;
  }

  // methods
  List<t_general.MethodShortDescription>? get methods => this._methods;

  set methods(List<t_general.MethodShortDescription>? methods) {
    this._methods = methods;
  }

  bool isSetMethods() => this.methods != null;

  unsetMethods() {
    this.methods = null;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_sourceCode = false;
    bool __isset_byteCodeObjects = false;
    bool __isset_hashState = false;
    bool __isset_tokenStandard = false;
    bool __isset_lang = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case SOURCECODE:
          if (field.type == TType.STRING) {
            this.sourceCode = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BYTECODEOBJECTS:
          if (field.type == TType.LIST) {
            {
              TList _list0 = iprot.readListBegin();
              this.byteCodeObjects = [];
              for (int _i1 = 0; _i1 < _list0.length; ++_i1) {
                t_general.ByteCodeObject _elem2;//declare element for this.byteCodeObjects
                _elem2 = t_general.ByteCodeObject();
                _elem2.read(iprot);
                this.byteCodeObjects.add(_elem2);//add element to parent this.byteCodeObjects
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case HASHSTATE:
          if (field.type == TType.STRING) {
            this.hashState = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TOKENSTANDARD:
          if (field.type == TType.I32) {
            this.tokenStandard = iprot.readI32();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LANG:
          if (field.type == TType.BYTE) {
            this.lang = iprot.readByte();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case METHODS:
          if (field.type == TType.LIST) {
            {
              TList _list3 = iprot.readListBegin();
              this.methods = [];
              for (int _i4 = 0; _i4 < _list3.length; ++_i4) {
                t_general.MethodShortDescription _elem5;//declare element for this.methods
                _elem5 = t_general.MethodShortDescription();
                _elem5.read(iprot);
                this.methods?.add(_elem5);//add element to parent this.methods
              }
              iprot.readListEnd();
            }
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
    oprot.writeFieldBegin(_SOURCE_CODE_FIELD_DESC);
    oprot.writeString(this.sourceCode);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_BYTE_CODE_OBJECTS_FIELD_DESC);
    {
      oprot.writeListBegin(TList(TType.STRUCT, this.byteCodeObjects.length));
      for (var elem6 in this.byteCodeObjects) {
        elem6.write(oprot);
      }
      oprot.writeListEnd();
    }
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_HASH_STATE_FIELD_DESC);
    oprot.writeString(this.hashState);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TOKEN_STANDARD_FIELD_DESC);
    oprot.writeI32(this.tokenStandard);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_LANG_FIELD_DESC);
    oprot.writeByte(this.lang);
    oprot.writeFieldEnd();
    if (isSetMethods()) {
      oprot.writeFieldBegin(_METHODS_FIELD_DESC);
      {
        oprot.writeListBegin(TList(TType.STRUCT, this.methods!.length));
        for (var elem7 in this.methods!) {
          elem7.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("SmartContractDeploy(");

    ret.write("sourceCode:");
    ret.write(this.sourceCode);

    ret.write(", ");
    ret.write("byteCodeObjects:");
    ret.write(this.byteCodeObjects);

    ret.write(", ");
    ret.write("hashState:");
    ret.write(this.hashState);

    ret.write(", ");
    ret.write("tokenStandard:");
    ret.write(this.tokenStandard);

    ret.write(", ");
    ret.write("lang:");
    ret.write(this.lang);

    if (isSetMethods()) {
      ret.write(", ");
      ret.write("methods:");
      if (this.methods == null) {
        ret.write("null");
      } else {
        ret.write(this.methods);
      }
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
