import '../database.dart';

class BeneficiaryTable extends SupabaseTable<BeneficiaryRow> {
  @override
  String get tableName => 'beneficiary';

  @override
  BeneficiaryRow createRow(Map<String, dynamic> data) => BeneficiaryRow(data);
}

class BeneficiaryRow extends SupabaseDataRow {
  BeneficiaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BeneficiaryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get birth => getField<DateTime>('birth');
  set birth(DateTime? value) => setField<DateTime>('birth', value);

  String? get idNumber => getField<String>('id_Number');
  set idNumber(String? value) => setField<String>('id_Number', value);

  String? get physicalAddress => getField<String>('physical_address');
  set physicalAddress(String? value) =>
      setField<String>('physical_address', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get percentage => getField<int>('percentage');
  set percentage(int? value) => setField<int>('percentage', value);

  int? get supabaseID => getField<int>('supabaseID');
  set supabaseID(int? value) => setField<int>('supabaseID', value);

  String? get firebaseID => getField<String>('firebaseID');
  set firebaseID(String? value) => setField<String>('firebaseID', value);

  String? get accountNumber => getField<String>('accountNumber');
  set accountNumber(String? value) => setField<String>('accountNumber', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get beneficiaryAlternate => getField<bool>('beneficiary_alternate');
  set beneficiaryAlternate(bool? value) =>
      setField<bool>('beneficiary_alternate', value);
}
