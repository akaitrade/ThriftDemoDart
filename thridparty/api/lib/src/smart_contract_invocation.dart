/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.smart_contract_invocation;

//import 'package:thrift/src/protocol/t_protocol.dart';
import 'package:thrift/thrift.dart';
import 'transaction_type.dart';
import 'smart_operation_state.dart';
import 'transaction_state.dart';
import 'tokens_list_sort_field.dart';
import 'token_holders_sort_field.dart';
import 'wallets_list_sort.dart';
import 'package:general/general.dart' as t_general;
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

class SmartContractInvocation implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("SmartContractInvocation");
  static final TField _METHOD_FIELD_DESC = TField("method", TType.STRING, 1);
  static final TField _PARAMS_FIELD_DESC = TField("params", TType.LIST, 2);
  static final TField _USED_CONTRACTS_FIELD_DESC = TField("usedContracts", TType.LIST, 3);
  static final TField _FORGET_NEW_STATE_FIELD_DESC = TField("forgetNewState", TType.BOOL, 4);
  static final TField _SMART_CONTRACT_DEPLOY_FIELD_DESC = TField("smartContractDeploy", TType.STRUCT, 5);
  static final TField _VERSION_FIELD_DESC = TField("version", TType.I16, 6);

  String _method = "";
  static const int METHOD = 1;
  List<t_general.Variant> _params = [];
  static const int PARAMS = 2;
  List<Uint8List> _usedContracts = [];
  static const int USEDCONTRACTS = 3;
  bool _forgetNewState = false;
  static const int FORGETNEWSTATE = 4;
  SmartContractDeploy? _smartContractDeploy;
  static const int SMARTCONTRACTDEPLOY = 5;
  int _version = 0;
  static const int VERSION = 6;

  //bool __isset_smartContractDeploy = false;

  SmartContractInvocation() {
    this.version = 1;

  }

  // method
  String get method => this._method;

  set method(String method) {
    this._method = method;
  }

  // params
  List<t_general.Variant> get params => this._params;

  set params(List<t_general.Variant> params) {
    this._params = params;
  }

  // usedContracts
  List<Uint8List> get usedContracts => this._usedContracts;

  set usedContracts(List<Uint8List> usedContracts) {
    this._usedContracts = usedContracts;
  }

  // forgetNewState
  bool get forgetNewState => this._forgetNewState;

  set forgetNewState(bool forgetNewState) {
    this._forgetNewState = forgetNewState;
  }

  // smartContractDeploy
  SmartContractDeploy? get smartContractDeploy => this._smartContractDeploy;

  set smartContractDeploy(SmartContractDeploy? smartContractDeploy) {
    this._smartContractDeploy = smartContractDeploy;
    //this.__isset_smartContractDeploy = true;
  }

  bool isSetSmartContractDeploy() => this.smartContractDeploy != null;

  unsetSmartContractDeploy() {
    this.smartContractDeploy = null;
  }

  // version
  int get version => this._version;

  set version(int version) {
    this._version = version;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_method = false;
    bool __isset_params = false;
    bool __isset_usedContracts = false;
    bool __isset_forgetNewState = false;
    bool __isset_version = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case METHOD:
          if (field.type == TType.STRING) {
            this.method = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PARAMS:
          if (field.type == TType.LIST) {
            {
              TList _list8 = iprot.readListBegin();
              this.params = [];
              for (int _i9 = 0; _i9 < _list8.length; ++_i9) {
                t_general.Variant _elem10;//declare element for this.params
                _elem10 = t_general.Variant();
                _elem10.read(iprot);
                this.params.add(_elem10);//add element to parent this.params
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case USEDCONTRACTS:
          if (field.type == TType.LIST) {
            {
              TList _list11 = iprot.readListBegin();
              this.usedContracts = [];
              for (int _i12 = 0; _i12 < _list11.length; ++_i12) {
                Uint8List _elem13;//declare element for this.usedContracts
                _elem13 = iprot.readBinary();
                this.usedContracts.add(_elem13);//add element to parent this.usedContracts
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case FORGETNEWSTATE:
          if (field.type == TType.BOOL) {
            this.forgetNewState = iprot.readBool();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SMARTCONTRACTDEPLOY:
          if (field.type == TType.STRUCT) {
            this.smartContractDeploy = SmartContractDeploy();
            this.smartContractDeploy!.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case VERSION:
          if (field.type == TType.I16) {
            this.version = iprot.readI16();
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
    oprot.writeFieldBegin(_METHOD_FIELD_DESC);
    oprot.writeString(this.method);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_PARAMS_FIELD_DESC);
    {
      oprot.writeListBegin(TList(TType.STRUCT, this.params.length));
      for (var elem14 in this.params) {
        elem14.write(oprot);
      }
      oprot.writeListEnd();
    }
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_USED_CONTRACTS_FIELD_DESC);
    {
      oprot.writeListBegin(TList(TType.STRING, this.usedContracts.length));
      for (var elem15 in this.usedContracts) {
        oprot.writeBinary(elem15);
      }
      oprot.writeListEnd();
    }
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_FORGET_NEW_STATE_FIELD_DESC);
    oprot.writeBool(this.forgetNewState);
    oprot.writeFieldEnd();
    if (isSetSmartContractDeploy()) {
      oprot.writeFieldBegin(_SMART_CONTRACT_DEPLOY_FIELD_DESC);
      this.smartContractDeploy?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_VERSION_FIELD_DESC);
    oprot.writeI16(this.version);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("SmartContractInvocation(");

    ret.write("method:");
    ret.write(this.method);

    ret.write(", ");
    ret.write("params:");
    ret.write(this.params);

    ret.write(", ");
    ret.write("usedContracts:");
    ret.write(this.usedContracts);

    ret.write(", ");
    ret.write("forgetNewState:");
    ret.write(this.forgetNewState);

    if (isSetSmartContractDeploy()) {
      ret.write(", ");
      ret.write("smartContractDeploy:");
      if (this.smartContractDeploy == null) {
        ret.write("null");
      } else {
        ret.write(this.smartContractDeploy);
      }
    }

    ret.write(", ");
    ret.write("version:");
    ret.write(this.version);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

