import '../database.dart';

class ProductsListTable extends SupabaseTable<ProductsListRow> {
  @override
  String get tableName => 'ProductsList';

  @override
  ProductsListRow createRow(Map<String, dynamic> data) => ProductsListRow(data);
}

class ProductsListRow extends SupabaseDataRow {
  ProductsListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsListTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get products => getField<String>('products');
  set products(String? value) => setField<String>('products', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get firebaseId => getField<String>('firebase_id');
  set firebaseId(String? value) => setField<String>('firebase_id', value);

  String? get deposit => getField<String>('deposit');
  set deposit(String? value) => setField<String>('deposit', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  String? get methodInitial => getField<String>('method_Initial');
  set methodInitial(String? value) => setField<String>('method_Initial', value);

  String? get purpose => getField<String>('purpose ');
  set purpose(String? value) => setField<String>('purpose ', value);

  String? get originFunds => getField<String>('origin_Funds');
  set originFunds(String? value) => setField<String>('origin_Funds', value);

  String? get originReccurent => getField<String>('origin_Reccurent ');
  set originReccurent(String? value) =>
      setField<String>('origin_Reccurent ', value);

  String? get originNetWorth => getField<String>('origin_NetWorth');
  set originNetWorth(String? value) =>
      setField<String>('origin_NetWorth', value);

  double? get cashDepositsE => getField<double>('cashDepositsE');
  set cashDepositsE(double? value) => setField<double>('cashDepositsE', value);

  double? get cashDepositsT => getField<double>('cashDepositsT');
  set cashDepositsT(double? value) => setField<double>('cashDepositsT', value);

  double? get checkDepositsE => getField<double>('checkDepositsE');
  set checkDepositsE(double? value) =>
      setField<double>('checkDepositsE', value);

  double? get checkDepositsT => getField<double>('checkDepositsT');
  set checkDepositsT(double? value) =>
      setField<double>('checkDepositsT', value);

  double? get incomingTransfersE => getField<double>('incomingTransfersE ');
  set incomingTransfersE(double? value) =>
      setField<double>('incomingTransfersE ', value);

  double? get incomingTransfersT => getField<double>('incomingTransfersT');
  set incomingTransfersT(double? value) =>
      setField<double>('incomingTransfersT', value);

  double? get incomingACHe => getField<double>('incomingACHe');
  set incomingACHe(double? value) => setField<double>('incomingACHe', value);

  double? get incomingACHt => getField<double>('incomingACHt');
  set incomingACHt(double? value) => setField<double>('incomingACHt', value);

  double? get incomingInternalTranE =>
      getField<double>('incomingInternalTranE');
  set incomingInternalTranE(double? value) =>
      setField<double>('incomingInternalTranE', value);

  double? get incomingInternalTranT =>
      getField<double>('incomingInternalTranT');
  set incomingInternalTranT(double? value) =>
      setField<double>('incomingInternalTranT', value);

  double? get totalIncomingE => getField<double>('totalIncomingE ');
  set totalIncomingE(double? value) =>
      setField<double>('totalIncomingE ', value);

  double? get totalIncomingT => getField<double>('totalIncomingT');
  set totalIncomingT(double? value) =>
      setField<double>('totalIncomingT', value);

  double? get cashWithdrawalE => getField<double>('cashWithdrawalE');
  set cashWithdrawalE(double? value) =>
      setField<double>('cashWithdrawalE', value);

  double? get cashWithdrawalT => getField<double>('cashWithdrawalT');
  set cashWithdrawalT(double? value) =>
      setField<double>('cashWithdrawalT', value);

  double? get paymentsByChecksE => getField<double>('payments byChecksE');
  set paymentsByChecksE(double? value) =>
      setField<double>('payments byChecksE', value);

  double? get paymentsByChecksT => getField<double>('payments byChecksT');
  set paymentsByChecksT(double? value) =>
      setField<double>('payments byChecksT', value);

  double? get outgoingTransfersE => getField<double>('outgoingTransfersE');
  set outgoingTransfersE(double? value) =>
      setField<double>('outgoingTransfersE', value);

  double? get outgoingTransfersT => getField<double>('outgoingTransfersT');
  set outgoingTransfersT(double? value) =>
      setField<double>('outgoingTransfersT', value);

  double? get outgoingACHTranE => getField<double>('outgoingACHTranE');
  set outgoingACHTranE(double? value) =>
      setField<double>('outgoingACHTranE', value);

  double? get outgoingACHTranT => getField<double>('outgoingACHTranT');
  set outgoingACHTranT(double? value) =>
      setField<double>('outgoingACHTranT', value);

  double? get outgoingInternalTranE =>
      getField<double>('outgoingInternalTranE');
  set outgoingInternalTranE(double? value) =>
      setField<double>('outgoingInternalTranE', value);

  double? get outgoingInternalTranT =>
      getField<double>('outgoingInternalTranT');
  set outgoingInternalTranT(double? value) =>
      setField<double>('outgoingInternalTranT', value);

  double? get totalOutgoingE => getField<double>('totalOutgoingE');
  set totalOutgoingE(double? value) =>
      setField<double>('totalOutgoingE', value);

  double? get totalOutgoingT => getField<double>('totalOutgoingT');
  set totalOutgoingT(double? value) =>
      setField<double>('totalOutgoingT', value);

  String? get beneficiaries1 => getField<String>('beneficiaries1');
  set beneficiaries1(String? value) =>
      setField<String>('beneficiaries1', value);

  String? get beneficiaries2 => getField<String>('beneficiaries2');
  set beneficiaries2(String? value) =>
      setField<String>('beneficiaries2', value);

  String? get beneficiaries3 => getField<String>('beneficiaries3');
  set beneficiaries3(String? value) =>
      setField<String>('beneficiaries3', value);

  String? get beneficiariesCountry1 =>
      getField<String>('beneficiaries_country1');
  set beneficiariesCountry1(String? value) =>
      setField<String>('beneficiaries_country1', value);

  String? get beneficiariesCountry2 =>
      getField<String>('beneficiaries_country2');
  set beneficiariesCountry2(String? value) =>
      setField<String>('beneficiaries_country2', value);

  String? get beneficiariesCountry3 =>
      getField<String>('beneficiaries_country3');
  set beneficiariesCountry3(String? value) =>
      setField<String>('beneficiaries_country3', value);

  String? get remitters1 => getField<String>('remitters1');
  set remitters1(String? value) => setField<String>('remitters1', value);

  String? get remitters2 => getField<String>('remitters2');
  set remitters2(String? value) => setField<String>('remitters2', value);

  String? get remitters3 => getField<String>('remitters3');
  set remitters3(String? value) => setField<String>('remitters3', value);

  String? get remittersCountry1 => getField<String>('remitters_country1');
  set remittersCountry1(String? value) =>
      setField<String>('remitters_country1', value);

  String? get remittersCountry2 => getField<String>('remitters_country2');
  set remittersCountry2(String? value) =>
      setField<String>('remitters_country2', value);

  String? get remittersCountry3 => getField<String>('remitters_country3');
  set remittersCountry3(String? value) =>
      setField<String>('remitters_country3', value);

  bool? get instructionAuthWritting =>
      getField<bool>('instructionAuth_writting');
  set instructionAuthWritting(bool? value) =>
      setField<bool>('instructionAuth_writting', value);

  bool? get instructionAuthEmail => getField<bool>('instructionAuth_email');
  set instructionAuthEmail(bool? value) =>
      setField<bool>('instructionAuth_email', value);

  bool? get instructionAuthOnline => getField<bool>('instructionAuth_Online');
  set instructionAuthOnline(bool? value) =>
      setField<bool>('instructionAuth_Online', value);

  String? get nameSignatureAuth1 => getField<String>('nameSignatureAuth1');
  set nameSignatureAuth1(String? value) =>
      setField<String>('nameSignatureAuth1', value);

  String? get nameSignatureAuth2 => getField<String>('nameSignatureAuth2');
  set nameSignatureAuth2(String? value) =>
      setField<String>('nameSignatureAuth2', value);

  String? get nameSignatureAuth3 => getField<String>('nameSignatureAuth3');
  set nameSignatureAuth3(String? value) =>
      setField<String>('nameSignatureAuth3', value);

  String? get typeID1 => getField<String>('typeID1');
  set typeID1(String? value) => setField<String>('typeID1', value);

  String? get typeID2 => getField<String>('typeID2');
  set typeID2(String? value) => setField<String>('typeID2', value);

  String? get typeID3 => getField<String>('typeID3');
  set typeID3(String? value) => setField<String>('typeID3', value);

  String? get idSignature1 => getField<String>('id_signature1');
  set idSignature1(String? value) => setField<String>('id_signature1', value);

  String? get idSignature2 => getField<String>('id_signature2');
  set idSignature2(String? value) => setField<String>('id_signature2', value);

  String? get idSignature3 => getField<String>('id_signature3');
  set idSignature3(String? value) => setField<String>('id_signature3', value);

  String? get additionalInstruction =>
      getField<String>('additional_Instruction');
  set additionalInstruction(String? value) =>
      setField<String>('additional_Instruction', value);

  bool? get onlineBanking => getField<bool>('onlineBanking');
  set onlineBanking(bool? value) => setField<bool>('onlineBanking', value);
}
