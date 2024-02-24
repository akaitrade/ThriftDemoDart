/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.token_holder;

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

class TokenHolder implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("TokenHolder");
  static final TField _HOLDER_FIELD_DESC = TField("holder", TType.STRING, 1);
  static final TField _TOKEN_FIELD_DESC = TField("token", TType.STRING, 2);
  static final TField _BALANCE_FIELD_DESC = TField("balance", TType.STRING, 3);
  static final TField _TRANSFERS_COUNT_FIELD_DESC = TField("transfersCount", TType.I32, 4);

  Uint8List _holder = Uint8List(0);
  static const int HOLDER = 1;
  Uint8List _token = Uint8List(0);
  static const int TOKEN = 2;
  String _balance = "";
  static const int BALANCE = 3;
  int _transfersCount = 0;
  static const int TRANSFERSCOUNT = 4;


  TokenHolder() {
  }

  // holder
  Uint8List get holder => this._holder;

  set holder(Uint8List holder) {
    this._holder = holder;
  }

  // token
  Uint8List get token => this._token;

  set token(Uint8List token) {
    this._token = token;
  }

  // balance
  String get balance => this._balance;

  set balance(String balance) {
    this._balance = balance;
  }

  // transfersCount
  int get transfersCount => this._transfersCount;

  set transfersCount(int transfersCount) {
    this._transfersCount = transfersCount;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_holder = false;
    bool __isset_token = false;
    bool __isset_balance = false;
    bool __isset_transfersCount = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case HOLDER:
          if (field.type == TType.STRING) {
            this.holder = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TOKEN:
          if (field.type == TType.STRING) {
            this.token = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BALANCE:
          if (field.type == TType.STRING) {
            this.balance = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TRANSFERSCOUNT:
          if (field.type == TType.I32) {
            this.transfersCount = iprot.readI32();
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
    oprot.writeFieldBegin(_HOLDER_FIELD_DESC);
    oprot.writeBinary(this.holder);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TOKEN_FIELD_DESC);
    oprot.writeBinary(this.token);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_BALANCE_FIELD_DESC);
    oprot.writeString(this.balance);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TRANSFERS_COUNT_FIELD_DESC);
    oprot.writeI32(this.transfersCount);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("TokenHolder(");

    ret.write("holder:");
    ret.write(this.holder);

    ret.write(", ");
    ret.write("token:");
    ret.write(this.token);

    ret.write(", ");
    ret.write("balance:");
    ret.write(this.balance);

    ret.write(", ");
    ret.write("transfersCount:");
    ret.write(this.transfersCount);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

