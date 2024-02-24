/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.stats_get_result;

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

class StatsGetResult implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("StatsGetResult");
  static final TField _STATUS_FIELD_DESC = TField("status", TType.STRUCT, 1);
  static final TField _STATS_FIELD_DESC = TField("stats", TType.LIST, 2);

  t_general.APIResponse _status = t_general.APIResponse();
  static const int STATUS = 1;
  List<PeriodStats> _stats = [];
  static const int STATS = 2;


  StatsGetResult() {
  }

  // status
  t_general.APIResponse get status => this._status;

  set status(t_general.APIResponse status) {
    this._status = status;
  }

  // stats
  List<PeriodStats> get stats => this._stats;

  set stats(List<PeriodStats> stats) {
    this._stats = stats;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_status = false;
    bool __isset_stats = false;
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
        case STATS:
          if (field.type == TType.LIST) {
            {
              TList _list86 = iprot.readListBegin();
              this.stats = [];
              for (int _i87 = 0; _i87 < _list86.length; ++_i87) {
                PeriodStats _elem88;//declare element for this.stats
                _elem88 = PeriodStats();
                _elem88.read(iprot);
                this.stats.add(_elem88);//add element to parent this.stats
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
    oprot.writeFieldBegin(_STATS_FIELD_DESC);
    {
      oprot.writeListBegin(TList(TType.STRUCT, this.stats.length));
      for (var elem89 in this.stats) {
        elem89.write(oprot);
      }
      oprot.writeListEnd();
    }
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("StatsGetResult(");

    ret.write("status:");
    ret.write(this.status);

    ret.write(", ");
    ret.write("stats:");
    ret.write(this.stats);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

