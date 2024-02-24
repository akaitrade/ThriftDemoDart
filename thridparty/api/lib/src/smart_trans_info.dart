/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.smart_trans_info;

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

class SmartTransInfo implements TBase {
  static final TStruct _STRUCT_DESC = TStruct("SmartTransInfo");
  static final TField _V_TOKEN_DEPLOY_FIELD_DESC = TField("v_tokenDeploy", TType.STRUCT, 1);
  static final TField _V_TOKEN_TRANSFER_FIELD_DESC = TField("v_tokenTransfer", TType.STRUCT, 2);
  static final TField _V_SMART_DEPLOY_FIELD_DESC = TField("v_smartDeploy", TType.STRUCT, 3);
  static final TField _V_SMART_EXECUTION_FIELD_DESC = TField("v_smartExecution", TType.STRUCT, 4);
  static final TField _V_SMART_STATE_FIELD_DESC = TField("v_smartState", TType.STRUCT, 5);

  TokenDeployTransInfo? _v_tokenDeploy;
  static const int V_TOKENDEPLOY = 1;
  TokenTransferTransInfo? _v_tokenTransfer;
  static const int V_TOKENTRANSFER = 2;
  SmartDeployTransInfo? _v_smartDeploy;
  static const int V_SMARTDEPLOY = 3;
  SmartExecutionTransInfo? _v_smartExecution;
  static const int V_SMARTEXECUTION = 4;
  SmartStateTransInfo? _v_smartState;
  static const int V_SMARTSTATE = 5;

  //bool __isset_v_tokenDeploy = false;
  //bool __isset_v_tokenTransfer = false;
  //bool __isset_v_smartDeploy = false;
  //bool __isset_v_smartExecution = false;
  //bool __isset_v_smartState = false;

  SmartTransInfo() {
  }

  // v_tokenDeploy
  TokenDeployTransInfo? get v_tokenDeploy => this._v_tokenDeploy;

  set v_tokenDeploy(TokenDeployTransInfo? v_tokenDeploy) {
    this._v_tokenDeploy = v_tokenDeploy;
    //this.__isset_v_tokenDeploy = true;
  }

  bool isSetV_tokenDeploy() => this.v_tokenDeploy != null;

  unsetV_tokenDeploy() {
    this.v_tokenDeploy = null;
  }

  // v_tokenTransfer
  TokenTransferTransInfo? get v_tokenTransfer => this._v_tokenTransfer;

  set v_tokenTransfer(TokenTransferTransInfo? v_tokenTransfer) {
    this._v_tokenTransfer = v_tokenTransfer;
    //this.__isset_v_tokenTransfer = true;
  }

  bool isSetV_tokenTransfer() => this.v_tokenTransfer != null;

  unsetV_tokenTransfer() {
    this.v_tokenTransfer = null;
  }

  // v_smartDeploy
  SmartDeployTransInfo? get v_smartDeploy => this._v_smartDeploy;

  set v_smartDeploy(SmartDeployTransInfo? v_smartDeploy) {
    this._v_smartDeploy = v_smartDeploy;
    //this.__isset_v_smartDeploy = true;
  }

  bool isSetV_smartDeploy() => this.v_smartDeploy != null;

  unsetV_smartDeploy() {
    this.v_smartDeploy = null;
  }

  // v_smartExecution
  SmartExecutionTransInfo? get v_smartExecution => this._v_smartExecution;

  set v_smartExecution(SmartExecutionTransInfo? v_smartExecution) {
    this._v_smartExecution = v_smartExecution;
    //this.__isset_v_smartExecution = true;
  }

  bool isSetV_smartExecution() => this.v_smartExecution != null;

  unsetV_smartExecution() {
    this.v_smartExecution = null;
  }

  // v_smartState
  SmartStateTransInfo? get v_smartState => this._v_smartState;

  set v_smartState(SmartStateTransInfo? v_smartState) {
    this._v_smartState = v_smartState;
    //this.__isset_v_smartState = true;
  }

  bool isSetV_smartState() => this.v_smartState != null;

  unsetV_smartState() {
    this.v_smartState = null;
  }

  @override
  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case V_TOKENDEPLOY:
          if (field.type == TType.STRUCT) {
            this.v_tokenDeploy = TokenDeployTransInfo();
            this.v_tokenDeploy!.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case V_TOKENTRANSFER:
          if (field.type == TType.STRUCT) {
            this.v_tokenTransfer = TokenTransferTransInfo();
            this.v_tokenTransfer!.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case V_SMARTDEPLOY:
          if (field.type == TType.STRUCT) {
            this.v_smartDeploy = SmartDeployTransInfo();
            this.v_smartDeploy!.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case V_SMARTEXECUTION:
          if (field.type == TType.STRUCT) {
            this.v_smartExecution = SmartExecutionTransInfo();
            this.v_smartExecution!.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case V_SMARTSTATE:
          if (field.type == TType.STRUCT) {
            this.v_smartState = SmartStateTransInfo();
            this.v_smartState!.read(iprot);
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
    if (isSetV_tokenDeploy()) {
      oprot.writeFieldBegin(_V_TOKEN_DEPLOY_FIELD_DESC);
      this.v_tokenDeploy?.write(oprot);
      oprot.writeFieldEnd();
    }
    if (isSetV_tokenTransfer()) {
      oprot.writeFieldBegin(_V_TOKEN_TRANSFER_FIELD_DESC);
      this.v_tokenTransfer?.write(oprot);
      oprot.writeFieldEnd();
    }
    if (isSetV_smartDeploy()) {
      oprot.writeFieldBegin(_V_SMART_DEPLOY_FIELD_DESC);
      this.v_smartDeploy?.write(oprot);
      oprot.writeFieldEnd();
    }
    if (isSetV_smartExecution()) {
      oprot.writeFieldBegin(_V_SMART_EXECUTION_FIELD_DESC);
      this.v_smartExecution?.write(oprot);
      oprot.writeFieldEnd();
    }
    if (isSetV_smartState()) {
      oprot.writeFieldBegin(_V_SMART_STATE_FIELD_DESC);
      this.v_smartState?.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  @override
  String toString() {
    StringBuffer ret = StringBuffer("SmartTransInfo(");

    if (isSetV_tokenDeploy()) {
      ret.write("v_tokenDeploy:");
      if (this.v_tokenDeploy == null) {
        ret.write("null");
      } else {
        ret.write(this.v_tokenDeploy);
      }
    }

    if (isSetV_tokenTransfer()) {
      ret.write(", ");
      ret.write("v_tokenTransfer:");
      if (this.v_tokenTransfer == null) {
        ret.write("null");
      } else {
        ret.write(this.v_tokenTransfer);
      }
    }

    if (isSetV_smartDeploy()) {
      ret.write(", ");
      ret.write("v_smartDeploy:");
      if (this.v_smartDeploy == null) {
        ret.write("null");
      } else {
        ret.write(this.v_smartDeploy);
      }
    }

    if (isSetV_smartExecution()) {
      ret.write(", ");
      ret.write("v_smartExecution:");
      if (this.v_smartExecution == null) {
        ret.write("null");
      } else {
        ret.write(this.v_smartExecution);
      }
    }

    if (isSetV_smartState()) {
      ret.write(", ");
      ret.write("v_smartState:");
      if (this.v_smartState == null) {
        ret.write("null");
      } else {
        ret.write(this.v_smartState);
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

