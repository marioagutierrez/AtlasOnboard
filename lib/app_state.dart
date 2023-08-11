import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _OriginofFunds = prefs.getString('ff_OriginofFunds') ?? _OriginofFunds;
    });
    _safeInit(() {
      _OriginofReccurentFunds = prefs.getString('ff_OriginofReccurentFunds') ??
          _OriginofReccurentFunds;
    });
    _safeInit(() {
      _OriginofNetWorth =
          prefs.getString('ff_OriginofNetWorth') ?? _OriginofNetWorth;
    });
    _safeInit(() {
      _MethodofInitialDeposit = prefs.getString('ff_MethodofInitialDeposit') ??
          _MethodofInitialDeposit;
    });
    _safeInit(() {
      _PurposeoftheAccount =
          prefs.getString('ff_PurposeoftheAccount') ?? _PurposeoftheAccount;
    });
    _safeInit(() {
      _Accounttype = prefs.getString('ff_Accounttype') ?? _Accounttype;
    });
    _safeInit(() {
      _currency = prefs.getString('ff_currency') ?? _currency;
    });
    _safeInit(() {
      _initialDeposit = prefs.getString('ff_initialDeposit') ?? _initialDeposit;
    });
    _safeInit(() {
      _AccounStep1 = prefs.getBool('ff_AccounStep1') ?? _AccounStep1;
    });
    _safeInit(() {
      _CashDepositsExp =
          prefs.getDouble('ff_CashDepositsExp') ?? _CashDepositsExp;
    });
    _safeInit(() {
      _CashDepositsTran =
          prefs.getDouble('ff_CashDepositsTran') ?? _CashDepositsTran;
    });
    _safeInit(() {
      _CheckDepositsExp =
          prefs.getDouble('ff_CheckDepositsExp') ?? _CheckDepositsExp;
    });
    _safeInit(() {
      _CheckDepositsTrn =
          prefs.getDouble('ff_CheckDepositsTrn') ?? _CheckDepositsTrn;
    });
    _safeInit(() {
      _IncomingTransfersExp =
          prefs.getDouble('ff_IncomingTransfersExp') ?? _IncomingTransfersExp;
    });
    _safeInit(() {
      _IncomingTransfersTran =
          prefs.getDouble('ff_IncomingTransfersTran') ?? _IncomingTransfersTran;
    });
    _safeInit(() {
      _IncomingACHExp = prefs.getDouble('ff_IncomingACHExp') ?? _IncomingACHExp;
    });
    _safeInit(() {
      _IncomingInternalTraExp = prefs.getDouble('ff_IncomingInternalTraExp') ??
          _IncomingInternalTraExp;
    });
    _safeInit(() {
      _IncomingInternalTraTran =
          prefs.getDouble('ff_IncomingInternalTraTran') ??
              _IncomingInternalTraTran;
    });
    _safeInit(() {
      _TotalIncomingExp =
          prefs.getDouble('ff_TotalIncomingExp') ?? _TotalIncomingExp;
    });
    _safeInit(() {
      _TotalIncomingTra =
          prefs.getDouble('ff_TotalIncomingTra') ?? _TotalIncomingTra;
    });
    _safeInit(() {
      _CashWithdrawalExp =
          prefs.getDouble('ff_CashWithdrawalExp') ?? _CashWithdrawalExp;
    });
    _safeInit(() {
      _CashWithdrawalTra =
          prefs.getDouble('ff_CashWithdrawalTra') ?? _CashWithdrawalTra;
    });
    _safeInit(() {
      _PaymentsbyCheckExp =
          prefs.getDouble('ff_PaymentsbyCheckExp') ?? _PaymentsbyCheckExp;
    });
    _safeInit(() {
      _PaymentsbCheckTra =
          prefs.getDouble('ff_PaymentsbCheckTra') ?? _PaymentsbCheckTra;
    });
    _safeInit(() {
      _OutgoingTransfersExp =
          prefs.getDouble('ff_OutgoingTransfersExp') ?? _OutgoingTransfersExp;
    });
    _safeInit(() {
      _OutgoingTransfersTra =
          prefs.getDouble('ff_OutgoingTransfersTra') ?? _OutgoingTransfersTra;
    });
    _safeInit(() {
      _OutgoingACHExp = prefs.getDouble('ff_OutgoingACHExp') ?? _OutgoingACHExp;
    });
    _safeInit(() {
      _OutgoingACHTra = prefs.getDouble('ff_OutgoingACHTra') ?? _OutgoingACHTra;
    });
    _safeInit(() {
      _OutgoingInternalExp =
          prefs.getDouble('ff_OutgoingInternalExp') ?? _OutgoingInternalExp;
    });
    _safeInit(() {
      _OutgoingInternalTra =
          prefs.getDouble('ff_OutgoingInternalTra') ?? _OutgoingInternalTra;
    });
    _safeInit(() {
      _TotalOutgoingExp =
          prefs.getDouble('ff_TotalOutgoingExp') ?? _TotalOutgoingExp;
    });
    _safeInit(() {
      _TotalOutgoingTra =
          prefs.getDouble('ff_TotalOutgoingTra') ?? _TotalOutgoingTra;
    });
    _safeInit(() {
      _AccountStrep2 = prefs.getBool('ff_AccountStrep2') ?? _AccountStrep2;
    });
    _safeInit(() {
      _IncomingACHTra = prefs.getDouble('ff_IncomingACHTra') ?? _IncomingACHTra;
    });
    _safeInit(() {
      _beneficiaries1 = prefs.getString('ff_beneficiaries1') ?? _beneficiaries1;
    });
    _safeInit(() {
      _beneficiaries2 = prefs.getString('ff_beneficiaries2') ?? _beneficiaries2;
    });
    _safeInit(() {
      _beneficiaries3 = prefs.getString('ff_beneficiaries3') ?? _beneficiaries3;
    });
    _safeInit(() {
      _beneficiariescountry1 =
          prefs.getString('ff_beneficiariescountry1') ?? _beneficiariescountry1;
    });
    _safeInit(() {
      _beneficiariescountry2 =
          prefs.getString('ff_beneficiariescountry2') ?? _beneficiariescountry2;
    });
    _safeInit(() {
      _beneficiariescountry3 =
          prefs.getString('ff_beneficiariescountry3') ?? _beneficiariescountry3;
    });
    _safeInit(() {
      _remitters1 = prefs.getString('ff_remitters1') ?? _remitters1;
    });
    _safeInit(() {
      _remitters2 = prefs.getString('ff_remitters2') ?? _remitters2;
    });
    _safeInit(() {
      _remitters3 = prefs.getString('ff_remitters3') ?? _remitters3;
    });
    _safeInit(() {
      _remitterscountry1 =
          prefs.getString('ff_remitterscountry1') ?? _remitterscountry1;
    });
    _safeInit(() {
      _remitterscountry2 =
          prefs.getString('ff_remitterscountry2') ?? _remitterscountry2;
    });
    _safeInit(() {
      _remitterscountry3 =
          prefs.getString('ff_remitterscountry3') ?? _remitterscountry3;
    });
    _safeInit(() {
      _instructionAuthWritting = prefs.getBool('ff_instructionAuthWritting') ??
          _instructionAuthWritting;
    });
    _safeInit(() {
      _instructionAuthemail =
          prefs.getBool('ff_instructionAuthemail') ?? _instructionAuthemail;
    });
    _safeInit(() {
      _instructionAuthOnline =
          prefs.getBool('ff_instructionAuthOnline') ?? _instructionAuthOnline;
    });
    _safeInit(() {
      _nameSignatureAuth1 =
          prefs.getString('ff_nameSignatureAuth1') ?? _nameSignatureAuth1;
    });
    _safeInit(() {
      _nameSignatureAuth2 =
          prefs.getString('ff_nameSignatureAuth2') ?? _nameSignatureAuth2;
    });
    _safeInit(() {
      _nameSignatureAuth3 =
          prefs.getString('ff_nameSignatureAuth3') ?? _nameSignatureAuth3;
    });
    _safeInit(() {
      _typeID1 = prefs.getString('ff_typeID1') ?? _typeID1;
    });
    _safeInit(() {
      _typeID2 = prefs.getString('ff_typeID2') ?? _typeID2;
    });
    _safeInit(() {
      _typeID3 = prefs.getString('ff_typeID3') ?? _typeID3;
    });
    _safeInit(() {
      _idsignature1 = prefs.getString('ff_idsignature1') ?? _idsignature1;
    });
    _safeInit(() {
      _idsignature2 = prefs.getString('ff_idsignature2') ?? _idsignature2;
    });
    _safeInit(() {
      _idsignature3 = prefs.getString('ff_idsignature3') ?? _idsignature3;
    });
    _safeInit(() {
      _additionalInstruction =
          prefs.getString('ff_additionalInstruction') ?? _additionalInstruction;
    });
    _safeInit(() {
      _onlineBanking = prefs.getBool('ff_onlineBanking') ?? _onlineBanking;
    });
    _safeInit(() {
      _referrerCode = prefs.getString('ff_referrerCode') ?? _referrerCode;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _OriginofFunds = '';
  String get OriginofFunds => _OriginofFunds;
  set OriginofFunds(String _value) {
    _OriginofFunds = _value;
    prefs.setString('ff_OriginofFunds', _value);
  }

  String _OriginofReccurentFunds = '';
  String get OriginofReccurentFunds => _OriginofReccurentFunds;
  set OriginofReccurentFunds(String _value) {
    _OriginofReccurentFunds = _value;
    prefs.setString('ff_OriginofReccurentFunds', _value);
  }

  String _OriginofNetWorth = '';
  String get OriginofNetWorth => _OriginofNetWorth;
  set OriginofNetWorth(String _value) {
    _OriginofNetWorth = _value;
    prefs.setString('ff_OriginofNetWorth', _value);
  }

  String _MethodofInitialDeposit = '';
  String get MethodofInitialDeposit => _MethodofInitialDeposit;
  set MethodofInitialDeposit(String _value) {
    _MethodofInitialDeposit = _value;
    prefs.setString('ff_MethodofInitialDeposit', _value);
  }

  String _PurposeoftheAccount = '';
  String get PurposeoftheAccount => _PurposeoftheAccount;
  set PurposeoftheAccount(String _value) {
    _PurposeoftheAccount = _value;
    prefs.setString('ff_PurposeoftheAccount', _value);
  }

  String _Accounttype = '';
  String get Accounttype => _Accounttype;
  set Accounttype(String _value) {
    _Accounttype = _value;
    prefs.setString('ff_Accounttype', _value);
  }

  String _currency = '';
  String get currency => _currency;
  set currency(String _value) {
    _currency = _value;
    prefs.setString('ff_currency', _value);
  }

  String _initialDeposit = '';
  String get initialDeposit => _initialDeposit;
  set initialDeposit(String _value) {
    _initialDeposit = _value;
    prefs.setString('ff_initialDeposit', _value);
  }

  bool _AccounStep1 = false;
  bool get AccounStep1 => _AccounStep1;
  set AccounStep1(bool _value) {
    _AccounStep1 = _value;
    prefs.setBool('ff_AccounStep1', _value);
  }

  double _CashDepositsExp = 0.0;
  double get CashDepositsExp => _CashDepositsExp;
  set CashDepositsExp(double _value) {
    _CashDepositsExp = _value;
    prefs.setDouble('ff_CashDepositsExp', _value);
  }

  double _CashDepositsTran = 0.0;
  double get CashDepositsTran => _CashDepositsTran;
  set CashDepositsTran(double _value) {
    _CashDepositsTran = _value;
    prefs.setDouble('ff_CashDepositsTran', _value);
  }

  double _CheckDepositsExp = 0.0;
  double get CheckDepositsExp => _CheckDepositsExp;
  set CheckDepositsExp(double _value) {
    _CheckDepositsExp = _value;
    prefs.setDouble('ff_CheckDepositsExp', _value);
  }

  double _CheckDepositsTrn = 0.0;
  double get CheckDepositsTrn => _CheckDepositsTrn;
  set CheckDepositsTrn(double _value) {
    _CheckDepositsTrn = _value;
    prefs.setDouble('ff_CheckDepositsTrn', _value);
  }

  double _IncomingTransfersExp = 0.0;
  double get IncomingTransfersExp => _IncomingTransfersExp;
  set IncomingTransfersExp(double _value) {
    _IncomingTransfersExp = _value;
    prefs.setDouble('ff_IncomingTransfersExp', _value);
  }

  double _IncomingTransfersTran = 0.0;
  double get IncomingTransfersTran => _IncomingTransfersTran;
  set IncomingTransfersTran(double _value) {
    _IncomingTransfersTran = _value;
    prefs.setDouble('ff_IncomingTransfersTran', _value);
  }

  double _IncomingACHExp = 0.0;
  double get IncomingACHExp => _IncomingACHExp;
  set IncomingACHExp(double _value) {
    _IncomingACHExp = _value;
    prefs.setDouble('ff_IncomingACHExp', _value);
  }

  double _IncomingInternalTraExp = 0.0;
  double get IncomingInternalTraExp => _IncomingInternalTraExp;
  set IncomingInternalTraExp(double _value) {
    _IncomingInternalTraExp = _value;
    prefs.setDouble('ff_IncomingInternalTraExp', _value);
  }

  double _IncomingInternalTraTran = 0.0;
  double get IncomingInternalTraTran => _IncomingInternalTraTran;
  set IncomingInternalTraTran(double _value) {
    _IncomingInternalTraTran = _value;
    prefs.setDouble('ff_IncomingInternalTraTran', _value);
  }

  double _TotalIncomingExp = 0.0;
  double get TotalIncomingExp => _TotalIncomingExp;
  set TotalIncomingExp(double _value) {
    _TotalIncomingExp = _value;
    prefs.setDouble('ff_TotalIncomingExp', _value);
  }

  double _TotalIncomingTra = 0.0;
  double get TotalIncomingTra => _TotalIncomingTra;
  set TotalIncomingTra(double _value) {
    _TotalIncomingTra = _value;
    prefs.setDouble('ff_TotalIncomingTra', _value);
  }

  double _CashWithdrawalExp = 0.0;
  double get CashWithdrawalExp => _CashWithdrawalExp;
  set CashWithdrawalExp(double _value) {
    _CashWithdrawalExp = _value;
    prefs.setDouble('ff_CashWithdrawalExp', _value);
  }

  double _CashWithdrawalTra = 0.0;
  double get CashWithdrawalTra => _CashWithdrawalTra;
  set CashWithdrawalTra(double _value) {
    _CashWithdrawalTra = _value;
    prefs.setDouble('ff_CashWithdrawalTra', _value);
  }

  double _PaymentsbyCheckExp = 0.0;
  double get PaymentsbyCheckExp => _PaymentsbyCheckExp;
  set PaymentsbyCheckExp(double _value) {
    _PaymentsbyCheckExp = _value;
    prefs.setDouble('ff_PaymentsbyCheckExp', _value);
  }

  double _PaymentsbCheckTra = 0.0;
  double get PaymentsbCheckTra => _PaymentsbCheckTra;
  set PaymentsbCheckTra(double _value) {
    _PaymentsbCheckTra = _value;
    prefs.setDouble('ff_PaymentsbCheckTra', _value);
  }

  double _OutgoingTransfersExp = 0.0;
  double get OutgoingTransfersExp => _OutgoingTransfersExp;
  set OutgoingTransfersExp(double _value) {
    _OutgoingTransfersExp = _value;
    prefs.setDouble('ff_OutgoingTransfersExp', _value);
  }

  double _OutgoingTransfersTra = 0.0;
  double get OutgoingTransfersTra => _OutgoingTransfersTra;
  set OutgoingTransfersTra(double _value) {
    _OutgoingTransfersTra = _value;
    prefs.setDouble('ff_OutgoingTransfersTra', _value);
  }

  double _OutgoingACHExp = 0.0;
  double get OutgoingACHExp => _OutgoingACHExp;
  set OutgoingACHExp(double _value) {
    _OutgoingACHExp = _value;
    prefs.setDouble('ff_OutgoingACHExp', _value);
  }

  double _OutgoingACHTra = 0.0;
  double get OutgoingACHTra => _OutgoingACHTra;
  set OutgoingACHTra(double _value) {
    _OutgoingACHTra = _value;
    prefs.setDouble('ff_OutgoingACHTra', _value);
  }

  double _OutgoingInternalExp = 0.0;
  double get OutgoingInternalExp => _OutgoingInternalExp;
  set OutgoingInternalExp(double _value) {
    _OutgoingInternalExp = _value;
    prefs.setDouble('ff_OutgoingInternalExp', _value);
  }

  double _OutgoingInternalTra = 0.0;
  double get OutgoingInternalTra => _OutgoingInternalTra;
  set OutgoingInternalTra(double _value) {
    _OutgoingInternalTra = _value;
    prefs.setDouble('ff_OutgoingInternalTra', _value);
  }

  double _TotalOutgoingExp = 0.0;
  double get TotalOutgoingExp => _TotalOutgoingExp;
  set TotalOutgoingExp(double _value) {
    _TotalOutgoingExp = _value;
    prefs.setDouble('ff_TotalOutgoingExp', _value);
  }

  double _TotalOutgoingTra = 0.0;
  double get TotalOutgoingTra => _TotalOutgoingTra;
  set TotalOutgoingTra(double _value) {
    _TotalOutgoingTra = _value;
    prefs.setDouble('ff_TotalOutgoingTra', _value);
  }

  bool _AccountStrep2 = false;
  bool get AccountStrep2 => _AccountStrep2;
  set AccountStrep2(bool _value) {
    _AccountStrep2 = _value;
    prefs.setBool('ff_AccountStrep2', _value);
  }

  double _IncomingACHTra = 0.0;
  double get IncomingACHTra => _IncomingACHTra;
  set IncomingACHTra(double _value) {
    _IncomingACHTra = _value;
    prefs.setDouble('ff_IncomingACHTra', _value);
  }

  String _beneficiaries1 = '';
  String get beneficiaries1 => _beneficiaries1;
  set beneficiaries1(String _value) {
    _beneficiaries1 = _value;
    prefs.setString('ff_beneficiaries1', _value);
  }

  String _beneficiaries2 = '';
  String get beneficiaries2 => _beneficiaries2;
  set beneficiaries2(String _value) {
    _beneficiaries2 = _value;
    prefs.setString('ff_beneficiaries2', _value);
  }

  String _beneficiaries3 = '';
  String get beneficiaries3 => _beneficiaries3;
  set beneficiaries3(String _value) {
    _beneficiaries3 = _value;
    prefs.setString('ff_beneficiaries3', _value);
  }

  String _beneficiariescountry1 = '';
  String get beneficiariescountry1 => _beneficiariescountry1;
  set beneficiariescountry1(String _value) {
    _beneficiariescountry1 = _value;
    prefs.setString('ff_beneficiariescountry1', _value);
  }

  String _beneficiariescountry2 = '';
  String get beneficiariescountry2 => _beneficiariescountry2;
  set beneficiariescountry2(String _value) {
    _beneficiariescountry2 = _value;
    prefs.setString('ff_beneficiariescountry2', _value);
  }

  String _beneficiariescountry3 = '';
  String get beneficiariescountry3 => _beneficiariescountry3;
  set beneficiariescountry3(String _value) {
    _beneficiariescountry3 = _value;
    prefs.setString('ff_beneficiariescountry3', _value);
  }

  String _remitters1 = '';
  String get remitters1 => _remitters1;
  set remitters1(String _value) {
    _remitters1 = _value;
    prefs.setString('ff_remitters1', _value);
  }

  String _remitters2 = '';
  String get remitters2 => _remitters2;
  set remitters2(String _value) {
    _remitters2 = _value;
    prefs.setString('ff_remitters2', _value);
  }

  String _remitters3 = '';
  String get remitters3 => _remitters3;
  set remitters3(String _value) {
    _remitters3 = _value;
    prefs.setString('ff_remitters3', _value);
  }

  String _remitterscountry1 = '';
  String get remitterscountry1 => _remitterscountry1;
  set remitterscountry1(String _value) {
    _remitterscountry1 = _value;
    prefs.setString('ff_remitterscountry1', _value);
  }

  String _remitterscountry2 = '';
  String get remitterscountry2 => _remitterscountry2;
  set remitterscountry2(String _value) {
    _remitterscountry2 = _value;
    prefs.setString('ff_remitterscountry2', _value);
  }

  String _remitterscountry3 = '';
  String get remitterscountry3 => _remitterscountry3;
  set remitterscountry3(String _value) {
    _remitterscountry3 = _value;
    prefs.setString('ff_remitterscountry3', _value);
  }

  bool _instructionAuthWritting = false;
  bool get instructionAuthWritting => _instructionAuthWritting;
  set instructionAuthWritting(bool _value) {
    _instructionAuthWritting = _value;
    prefs.setBool('ff_instructionAuthWritting', _value);
  }

  bool _instructionAuthemail = false;
  bool get instructionAuthemail => _instructionAuthemail;
  set instructionAuthemail(bool _value) {
    _instructionAuthemail = _value;
    prefs.setBool('ff_instructionAuthemail', _value);
  }

  bool _instructionAuthOnline = false;
  bool get instructionAuthOnline => _instructionAuthOnline;
  set instructionAuthOnline(bool _value) {
    _instructionAuthOnline = _value;
    prefs.setBool('ff_instructionAuthOnline', _value);
  }

  String _nameSignatureAuth1 = '';
  String get nameSignatureAuth1 => _nameSignatureAuth1;
  set nameSignatureAuth1(String _value) {
    _nameSignatureAuth1 = _value;
    prefs.setString('ff_nameSignatureAuth1', _value);
  }

  String _nameSignatureAuth2 = '';
  String get nameSignatureAuth2 => _nameSignatureAuth2;
  set nameSignatureAuth2(String _value) {
    _nameSignatureAuth2 = _value;
    prefs.setString('ff_nameSignatureAuth2', _value);
  }

  String _nameSignatureAuth3 = '';
  String get nameSignatureAuth3 => _nameSignatureAuth3;
  set nameSignatureAuth3(String _value) {
    _nameSignatureAuth3 = _value;
    prefs.setString('ff_nameSignatureAuth3', _value);
  }

  String _typeID1 = '';
  String get typeID1 => _typeID1;
  set typeID1(String _value) {
    _typeID1 = _value;
    prefs.setString('ff_typeID1', _value);
  }

  String _typeID2 = '';
  String get typeID2 => _typeID2;
  set typeID2(String _value) {
    _typeID2 = _value;
    prefs.setString('ff_typeID2', _value);
  }

  String _typeID3 = '';
  String get typeID3 => _typeID3;
  set typeID3(String _value) {
    _typeID3 = _value;
    prefs.setString('ff_typeID3', _value);
  }

  String _idsignature1 = '';
  String get idsignature1 => _idsignature1;
  set idsignature1(String _value) {
    _idsignature1 = _value;
    prefs.setString('ff_idsignature1', _value);
  }

  String _idsignature2 = '';
  String get idsignature2 => _idsignature2;
  set idsignature2(String _value) {
    _idsignature2 = _value;
    prefs.setString('ff_idsignature2', _value);
  }

  String _idsignature3 = '';
  String get idsignature3 => _idsignature3;
  set idsignature3(String _value) {
    _idsignature3 = _value;
    prefs.setString('ff_idsignature3', _value);
  }

  String _additionalInstruction = '';
  String get additionalInstruction => _additionalInstruction;
  set additionalInstruction(String _value) {
    _additionalInstruction = _value;
    prefs.setString('ff_additionalInstruction', _value);
  }

  bool _onlineBanking = false;
  bool get onlineBanking => _onlineBanking;
  set onlineBanking(bool _value) {
    _onlineBanking = _value;
    prefs.setBool('ff_onlineBanking', _value);
  }

  bool _signature = false;
  bool get signature => _signature;
  set signature(bool _value) {
    _signature = _value;
  }

  String _referrerCode = '';
  String get referrerCode => _referrerCode;
  set referrerCode(String _value) {
    _referrerCode = _value;
    prefs.setString('ff_referrerCode', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
