import '../database.dart';

class BeneficiaryAlternativeTable
    extends SupabaseTable<BeneficiaryAlternativeRow> {
  @override
  String get tableName => 'beneficiaryAlternative';

  @override
  BeneficiaryAlternativeRow createRow(Map<String, dynamic> data) =>
      BeneficiaryAlternativeRow(data);
}

class BeneficiaryAlternativeRow extends SupabaseDataRow {
  BeneficiaryAlternativeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BeneficiaryAlternativeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get firebaseId => getField<String>('firebase_id');
  set firebaseId(String? value) => setField<String>('firebase_id', value);

  int? get personalProfileId => getField<int>('personalProfile_id');
  set personalProfileId(int? value) =>
      setField<int>('personalProfile_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get idNo => getField<String>('id_no');
  set idNo(String? value) => setField<String>('id_no', value);

  DateTime? get birthdate => getField<DateTime>('birthdate');
  set birthdate(DateTime? value) => setField<DateTime>('birthdate', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
