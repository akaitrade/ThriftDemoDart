/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.transaction_type;

class TransactionType {
  static const int TT_Transfer = 0;
  static const int TT_ContractDeploy = 1;
  static const int TT_ContractCall = 2;
  static const int TT_ContractState = 3;
  static const int TT_ContractReplenish = 4;
  static const int TT_TokenDeploy = 5;
  static const int TT_TokenTransfer = 6;
  static const int TT_Delegation = 7;
  static const int TT_RevokeDelegation = 8;
  static const int TT_Hold = 9;
  static const int TT_Release = 10;
  static const int TT_CancelHold = 11;
  static const int TT_DelayedTransfer = 12;
  static const int TT_UpdateBootstrapList = 13;
  static const int TT_UpdateSettings = 14;
  static const int TT_Malformed = 15;
  static const int TT_ContractEmitted = 16;
  static const int TT_Utility = 17;
  static const int TT_Other = 18;

  static final VALID_VALUES = {
    TT_Transfer
    , TT_ContractDeploy
    , TT_ContractCall
    , TT_ContractState
    , TT_ContractReplenish
    , TT_TokenDeploy
    , TT_TokenTransfer
    , TT_Delegation
    , TT_RevokeDelegation
    , TT_Hold
    , TT_Release
    , TT_CancelHold
    , TT_DelayedTransfer
    , TT_UpdateBootstrapList
    , TT_UpdateSettings
    , TT_Malformed
    , TT_ContractEmitted
    , TT_Utility
    , TT_Other
  };
  static final Map<int, String> VALUES_TO_NAMES = {
    TT_Transfer: 'TT_Transfer'
    , TT_ContractDeploy: 'TT_ContractDeploy'
    , TT_ContractCall: 'TT_ContractCall'
    , TT_ContractState: 'TT_ContractState'
    , TT_ContractReplenish: 'TT_ContractReplenish'
    , TT_TokenDeploy: 'TT_TokenDeploy'
    , TT_TokenTransfer: 'TT_TokenTransfer'
    , TT_Delegation: 'TT_Delegation'
    , TT_RevokeDelegation: 'TT_RevokeDelegation'
    , TT_Hold: 'TT_Hold'
    , TT_Release: 'TT_Release'
    , TT_CancelHold: 'TT_CancelHold'
    , TT_DelayedTransfer: 'TT_DelayedTransfer'
    , TT_UpdateBootstrapList: 'TT_UpdateBootstrapList'
    , TT_UpdateSettings: 'TT_UpdateSettings'
    , TT_Malformed: 'TT_Malformed'
    , TT_ContractEmitted: 'TT_ContractEmitted'
    , TT_Utility: 'TT_Utility'
    , TT_Other: 'TT_Other'
  };
}
