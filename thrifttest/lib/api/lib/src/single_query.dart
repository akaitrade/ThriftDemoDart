/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.single_query;

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

class SingleQuery implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("SingleQuery");
  static final TField _REQUESTED_ADDRESS_FIELD_DESC = TField("requestedAddress", TType.STRING, 1);
  static final TField _FROM_ID_FIELD_DESC = TField("fromId", TType.STRUCT, 2);
  static final TField _TOKENS_LIST_FIELD_DESC = TField("tokensList", TType.LIST, 3);

  Uint8List _requestedAddress = Uint8List(0);
  static const int REQUESTEDADDRESS = 1;
  TransactionId _fromId = TransactionId();
  static const int FROMID = 2;
  List<SingleTokenQuery>? _tokensList;
  static const int TOKENSLIST = 3;

  //bool __isset_tokensList = false;

  SingleQuery() {
  }

  // requestedAddress
  Uint8List get requestedAddress => this._requestedAddress;

  set requestedAddress(Uint8List requestedAddress) {
    this._requestedAddress = requestedAddress;
  }

  // fromId
  TransactionId get fromId => this._fromId;

  set fromId(TransactionId fromId) {
    this._fromId = fromId;
  }

  // tokensList
  List<SingleTokenQuery>? get tokensList => this._tokensList;

  set tokensList(List<SingleTokenQuery>? tokensList) {
    this._tokensList = tokensList;
  }

  bool isSetTokensList() => this.tokensList != null;

  unsetTokensList() {
    this.tokensList = null;
  }

  @override
  read(TProtocol iprot) {
    bool __isset_requestedAddress = false;
    bool __isset_fromId = false;
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
        case FROMID:
          if (field.type == TType.STRUCT) {
            this.fromId = TransactionId();
            this.fromId.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TOKENSLIST:
          if (field.type == TType.LIST) {
            {
              TList _list54 = iprot.readListBegin();
              this.tokensList = [];
              for (int _i55 = 0; _i55 < _list54.length; ++_i55) {
                SingleTokenQuery _elem56;//declare element for this.tokensList
                _elem56 = SingleTokenQuery();
                _elem56.read(iprot);
                this.tokensList?.add(_elem56);//add element to parent this.tokensList
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
    oprot.writeFieldBegin(_FROM_ID_FIELD_DESC);
    this.fromId.write(oprot);
    oprot.writeFieldEnd();
    if (isSetTokensList()) {
      oprot.writeFieldBegin(_TOKENS_LIST_FIELD_DESC);
      {
        oprot.writeListBegin(TList(TType.STRUCT, this.tokensList!.length));
        for (var elem57 in this.tokensList!) {
          elem57.write(oprot);
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
    StringBuffer ret = StringBuffer("SingleQuery(");

    ret.write("requestedAddress:");
    ret.write(this.requestedAddress);

    ret.write(", ");
    ret.write("fromId:");
    ret.write(this.fromId);

    if (isSetTokensList()) {
      ret.write(", ");
      ret.write("tokensList:");
      if (this.tokensList == null) {
        ret.write("null");
      } else {
        ret.write(this.tokensList);
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

