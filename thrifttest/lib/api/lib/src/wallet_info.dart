/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.wallet_info;

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

class WalletInfo implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("WalletInfo");
  static final TField _ADDRESS_FIELD_DESC = TField("address", TType.STRING, 1);
  static final TField _BALANCE_FIELD_DESC = TField("balance", TType.STRUCT, 2);
  static final TField _TRANSACTIONS_NUMBER_FIELD_DESC = TField("transactionsNumber", TType.I64, 3);
  static final TField _FIRST_TRANSACTION_TIME_FIELD_DESC = TField("firstTransactionTime", TType.I64, 4);
  static final TField _DELEGATED_FIELD_DESC = TField("delegated", TType.STRUCT, 5);

  Uint8List _address = Uint8List(0);
  static const int ADDRESS = 1;
  t_general.Amount _balance = t_general.Amount();
  static const int BALANCE = 2;
  int _transactionsNumber = 0;
  static const int TRANSACTIONSNUMBER = 3;
  int _firstTransactionTime = 0;
  static const int FIRSTTRANSACTIONTIME = 4;
  Delegated? _delegated;
  static const int DELEGATED = 5;

  //bool __isset_delegated = false;

  WalletInfo() {
  }

  // address
  Uint8List get address => this._address;

  set address(Uint8List address) {
    this._address = address;
  }

  // balance
  t_general.Amount get balance => this._balance;

  set balance(t_general.Amount balance) {
    this._balance = balance;
  }

  // transactionsNumber
  int get transactionsNumber => this._transactionsNumber;

  set transactionsNumber(int transactionsNumber) {
    this._transactionsNumber = transactionsNumber;
  }

  // firstTransactionTime
  int get firstTransactionTime => this._firstTransactionTime;

  set firstTransactionTime(int firstTransactionTime) {
    this._firstTransactionTime = firstTransactionTime;
  }

  // delegated
  Delegated? get delegated => this._delegated;

  set delegated(Delegated? delegated) {
    this._delegated = delegated;
    //this.__isset_delegated = true;
  }

  bool isSetDelegated() => this.delegated != null;

  unsetDelegated() {
    this.delegated = null;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_address = false;
    bool __isset_balance = false;
    bool __isset_transactionsNumber = false;
    bool __isset_firstTransactionTime = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case ADDRESS:
          if (field.type == TType.STRING) {
            this.address = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BALANCE:
          if (field.type == TType.STRUCT) {
            this.balance = t_general.Amount();
            this.balance.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TRANSACTIONSNUMBER:
          if (field.type == TType.I64) {
            this.transactionsNumber = iprot.readI64();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case FIRSTTRANSACTIONTIME:
          if (field.type == TType.I64) {
            this.firstTransactionTime = iprot.readI64();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DELEGATED:
          if (field.type == TType.STRUCT) {
            this.delegated = Delegated();
            this.delegated!.read(iprot);
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
    oprot.writeFieldBegin(_ADDRESS_FIELD_DESC);
    oprot.writeBinary(this.address);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_BALANCE_FIELD_DESC);
    this.balance.write(oprot);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TRANSACTIONS_NUMBER_FIELD_DESC);
    oprot.writeI64(this.transactionsNumber);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_FIRST_TRANSACTION_TIME_FIELD_DESC);
    oprot.writeI64(this.firstTransactionTime);
    oprot.writeFieldEnd();
    if (isSetDelegated()) {
      oprot.writeFieldBegin(_DELEGATED_FIELD_DESC);
      this.delegated?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("WalletInfo(");

    ret.write("address:");
    ret.write(this.address);

    ret.write(", ");
    ret.write("balance:");
    ret.write(this.balance);

    ret.write(", ");
    ret.write("transactionsNumber:");
    ret.write(this.transactionsNumber);

    ret.write(", ");
    ret.write("firstTransactionTime:");
    ret.write(this.firstTransactionTime);

    if (isSetDelegated()) {
      ret.write(", ");
      ret.write("delegated:");
      if (this.delegated == null) {
        ret.write("null");
      } else {
        ret.write(this.delegated);
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

