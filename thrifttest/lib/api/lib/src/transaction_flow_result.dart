/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.transaction_flow_result;

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

class TransactionFlowResult implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("TransactionFlowResult");
  static final TField _STATUS_FIELD_DESC = TField("status", TType.STRUCT, 1);
  static final TField _SMART_CONTRACT_RESULT_FIELD_DESC = TField("smart_contract_result", TType.STRUCT, 2);
  static final TField _ROUND_NUM_FIELD_DESC = TField("roundNum", TType.I32, 3);
  static final TField _ID_FIELD_DESC = TField("id", TType.STRUCT, 4);
  static final TField _STATE_ID_FIELD_DESC = TField("stateId", TType.STRUCT, 5);
  static final TField _FEE_FIELD_DESC = TField("fee", TType.STRUCT, 6);
  static final TField _EXTRA_FEE_FIELD_DESC = TField("extraFee", TType.LIST, 7);

  t_general.APIResponse _status = t_general.APIResponse();
  static const int STATUS = 1;
  t_general.Variant? _smart_contract_result;
  static const int SMART_CONTRACT_RESULT = 2;
  int _roundNum = 0;
  static const int ROUNDNUM = 3;
  TransactionId _id = TransactionId();
  static const int ID = 4;
  TransactionId? _stateId;
  static const int STATEID = 5;
  t_general.Amount _fee = t_general.Amount();
  static const int FEE = 6;
  List<ExtraFee>? _extraFee;
  static const int EXTRAFEE = 7;

  //bool __isset_smart_contract_result = false;
  //bool __isset_stateId = false;
  //bool __isset_extraFee = false;

  TransactionFlowResult() {
  }

  // status
  t_general.APIResponse get status => this._status;

  set status(t_general.APIResponse status) {
    this._status = status;
  }

  // smart_contract_result
  t_general.Variant? get smart_contract_result => this._smart_contract_result;

  set smart_contract_result(t_general.Variant? smart_contract_result) {
    this._smart_contract_result = smart_contract_result;
    //this.__isset_smart_contract_result = true;
  }

  bool isSetSmart_contract_result() => this.smart_contract_result != null;

  unsetSmart_contract_result() {
    this.smart_contract_result = null;
  }

  // roundNum
  int get roundNum => this._roundNum;

  set roundNum(int roundNum) {
    this._roundNum = roundNum;
  }

  // id
  TransactionId get id => this._id;

  set id(TransactionId id) {
    this._id = id;
  }

  // stateId
  TransactionId? get stateId => this._stateId;

  set stateId(TransactionId? stateId) {
    this._stateId = stateId;
    //this.__isset_stateId = true;
  }

  bool isSetStateId() => this.stateId != null;

  unsetStateId() {
    this.stateId = null;
  }

  // fee
  t_general.Amount get fee => this._fee;

  set fee(t_general.Amount fee) {
    this._fee = fee;
  }

  // extraFee
  List<ExtraFee>? get extraFee => this._extraFee;

  set extraFee(List<ExtraFee>? extraFee) {
    this._extraFee = extraFee;
  }

  bool isSetExtraFee() => this.extraFee != null;

  unsetExtraFee() {
    this.extraFee = null;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_status = false;
    bool __isset_roundNum = false;
    bool __isset_id = false;
    bool __isset_fee = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case STATUS:
          if (field.type == TType.STRUCT) {
            this.status = t_general.APIResponse();
            this.status.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SMART_CONTRACT_RESULT:
          if (field.type == TType.STRUCT) {
            this.smart_contract_result = t_general.Variant();
            this.smart_contract_result!.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ROUNDNUM:
          if (field.type == TType.I32) {
            this.roundNum = iprot.readI32();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ID:
          if (field.type == TType.STRUCT) {
            this.id = TransactionId();
            this.id.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STATEID:
          if (field.type == TType.STRUCT) {
            this.stateId = TransactionId();
            this.stateId!.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case FEE:
          if (field.type == TType.STRUCT) {
            this.fee = t_general.Amount();
            this.fee.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case EXTRAFEE:
          if (field.type == TType.LIST) {
            {
              TList _list50 = iprot.readListBegin();
              this.extraFee = [];
              for (int _i51 = 0; _i51 < _list50.length; ++_i51) {
                ExtraFee _elem52;//declare element for this.extraFee
                _elem52 = ExtraFee();
                _elem52.read(iprot);
                this.extraFee?.add(_elem52);//add element to parent this.extraFee
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
    oprot.writeFieldBegin(_STATUS_FIELD_DESC);
    this.status.write(oprot);
    oprot.writeFieldEnd();
    if (isSetSmart_contract_result()) {
      oprot.writeFieldBegin(_SMART_CONTRACT_RESULT_FIELD_DESC);
      this.smart_contract_result?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_ROUND_NUM_FIELD_DESC);
    oprot.writeI32(this.roundNum);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_ID_FIELD_DESC);
    this.id.write(oprot);
    oprot.writeFieldEnd();
    if (isSetStateId()) {
      oprot.writeFieldBegin(_STATE_ID_FIELD_DESC);
      this.stateId?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_FEE_FIELD_DESC);
    this.fee.write(oprot);
    oprot.writeFieldEnd();
    if (isSetExtraFee()) {
      oprot.writeFieldBegin(_EXTRA_FEE_FIELD_DESC);
      {
        oprot.writeListBegin(TList(TType.STRUCT, this.extraFee!.length));
        for (var elem53 in this.extraFee!) {
          elem53.write(oprot);
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
    StringBuffer ret = StringBuffer("TransactionFlowResult(");

    ret.write("status:");
    ret.write(this.status);

    if (isSetSmart_contract_result()) {
      ret.write(", ");
      ret.write("smart_contract_result:");
      if (this.smart_contract_result == null) {
        ret.write("null");
      } else {
        ret.write(this.smart_contract_result);
      }
    }

    ret.write(", ");
    ret.write("roundNum:");
    ret.write(this.roundNum);

    ret.write(", ");
    ret.write("id:");
    ret.write(this.id);

    if (isSetStateId()) {
      ret.write(", ");
      ret.write("stateId:");
      if (this.stateId == null) {
        ret.write("null");
      } else {
        ret.write(this.stateId);
      }
    }

    ret.write(", ");
    ret.write("fee:");
    ret.write(this.fee);

    if (isSetExtraFee()) {
      ret.write(", ");
      ret.write("extraFee:");
      if (this.extraFee == null) {
        ret.write("null");
      } else {
        ret.write(this.extraFee);
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

