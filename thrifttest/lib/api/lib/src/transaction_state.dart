/// Autogenerated by Thrift Compiler (0.20.0)
/// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
///  @generated


// ignore_for_file: unused_import
library api.src.transaction_state;

class TransactionState {
  static const int INVALID = 0;
  static const int VALID = 1;
  static const int INPROGRESS = 2;

  static final VALID_VALUES = {
    INVALID
    , VALID
    , INPROGRESS
  };
  static final Map<int, String> VALUES_TO_NAMES = {
    INVALID: 'INVALID'
    , VALID: 'VALID'
    , INPROGRESS: 'INPROGRESS'
  };
}
