/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.public_key_transactions;

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

class PublicKeyTransactions implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("PublicKeyTransactions");
  static final TField _REQUESTED_ADDRESS_FIELD_DESC = TField("requestedAddress", TType.STRING, 1);
  static final TField _TRANSACTIONS_FIELD_DESC = TField("transactions", TType.LIST, 2);
  static final TField _TRANSFERS_LIST_FIELD_DESC = TField("transfersList", TType.LIST, 3);

  Uint8List _requestedAddress = "";
  static const int REQUESTEDADDRESS = 1;
  List<ShortTransaction> _transactions = [];
  static const int TRANSACTIONS = 2;
  List<SelectedTokenTransfers>? _transfersList;
  static const int TRANSFERSLIST = 3;

  //bool __isset_transfersList = false;

  PublicKeyTransactions() {
  }

  // requestedAddress
  Uint8List get requestedAddress => this._requestedAddress;

  set requestedAddress(Uint8List requestedAddress) {
    this._requestedAddress = requestedAddress;
  }

  // transactions
  List<ShortTransaction> get transactions => this._transactions;

  set transactions(List<ShortTransaction> transactions) {
    this._transactions = transactions;
  }

  // transfersList
  List<SelectedTokenTransfers>? get transfersList => this._transfersList;

  set transfersList(List<SelectedTokenTransfers>? transfersList) {
    this._transfersList = transfersList;
  }

  bool isSetTransfersList() => this.transfersList != null;

  unsetTransfersList() {
    this.transfersList = null;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_requestedAddress = false;
    bool __isset_transactions = false;
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case REQUESTEDADDRESS:
          if (field.type == TType.STRING) {
            this.requestedAddress = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TRANSACTIONS:
          if (field.type == TType.LIST) {
            {
              TList _list66 = iprot.readListBegin();
              this.transactions = [];
              for (int _i67 = 0; _i67 < _list66.length; ++_i67) {
                ShortTransaction _elem68;//declare element for this.transactions
                _elem68 = ShortTransaction();
                _elem68.read(iprot);
                this.transactions.add(_elem68);//add element to parent this.transactions
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TRANSFERSLIST:
          if (field.type == TType.LIST) {
            {
              TList _list69 = iprot.readListBegin();
              this.transfersList = [];
              for (int _i70 = 0; _i70 < _list69.length; ++_i70) {
                SelectedTokenTransfers _elem71;//declare element for this.transfersList
                _elem71 = SelectedTokenTransfers();
                _elem71.read(iprot);
                this.transfersList?.add(_elem71);//add element to parent this.transfersList
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
    oprot.writeFieldBegin(_REQUESTED_ADDRESS_FIELD_DESC);
    oprot.writeBinary(this.requestedAddress);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TRANSACTIONS_FIELD_DESC);
    {
      oprot.writeListBegin(TList(TType.STRUCT, this.transactions.length));
      for (var elem72 in this.transactions) {
        elem72.write(oprot);
      }
      oprot.writeListEnd();
    }
    oprot.writeFieldEnd();
    if (isSetTransfersList()) {
      oprot.writeFieldBegin(_TRANSFERS_LIST_FIELD_DESC);
      {
        oprot.writeListBegin(TList(TType.STRUCT, this.transfersList!.length));
        for (var elem73 in this.transfersList!) {
          elem73.write(oprot);
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
    StringBuffer ret = StringBuffer("PublicKeyTransactions(");

    ret.write("requestedAddress:");
    ret.write(this.requestedAddress);

    ret.write(", ");
    ret.write("transactions:");
    ret.write(this.transactions);

    if (isSetTransfersList()) {
      ret.write(", ");
      ret.write("transfersList:");
      if (this.transfersList == null) {
        ret.write("null");
      } else {
        ret.write(this.transfersList);
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

