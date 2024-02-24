/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.send_transaction_result;

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

class SendTransactionResult implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("SendTransactionResult");
  static final TField _STATUS_FIELD_DESC = TField("status", TType.STRUCT, 1);
  static final TField _REQUEST_ID_FIELD_DESC = TField("requestId", TType.I64, 2);
  static final TField _ROUND_NUM_FIELD_DESC = TField("roundNum", TType.I32, 3);

  t_general.APIResponse _status = t_general.APIResponse();
  static const int STATUS = 1;
  int _requestId = 0;
  static const int REQUESTID = 2;
  int _roundNum = 0;
  static const int ROUNDNUM = 3;


  SendTransactionResult() {
  }

  // status
  t_general.APIResponse get status => this._status;

  set status(t_general.APIResponse status) {
    this._status = status;
  }

  // requestId
  int get requestId => this._requestId;

  set requestId(int requestId) {
    this._requestId = requestId;
  }

  // roundNum
  int get roundNum => this._roundNum;

  set roundNum(int roundNum) {
    this._roundNum = roundNum;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_status = false;
    bool __isset_requestId = false;
    bool __isset_roundNum = false;
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
        case REQUESTID:
          if (field.type == TType.I64) {
            this.requestId = iprot.readI64();
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
    oprot.writeFieldBegin(_REQUEST_ID_FIELD_DESC);
    oprot.writeI64(this.requestId);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_ROUND_NUM_FIELD_DESC);
    oprot.writeI32(this.roundNum);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("SendTransactionResult(");

    ret.write("status:");
    ret.write(this.status);

    ret.write(", ");
    ret.write("requestId:");
    ret.write(this.requestId);

    ret.write(", ");
    ret.write("roundNum:");
    ret.write(this.roundNum);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

