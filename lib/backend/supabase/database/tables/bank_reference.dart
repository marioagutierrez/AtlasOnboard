import '../database.dart';

class BankReferenceTable extends SupabaseTable<BankReferenceRow> {
  @override
  String get tableName => 'bank_Reference';

  @override
  BankReferenceRow createRow(Map<String, dynamic> data) =>
      BankReferenceRow(data);
}

class BankReferenceRow extends SupabaseDataRow {
  BankReferenceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BankReferenceTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get bankName => getField<String>('bankName');
  set bankName(String? value) => setField<String>('bankName', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get accountType => getField<String>('accountType');
  set accountType(String? value) => setField<String>('accountType', value);

  String? get contactPerson => getField<String>('contactPerson');
  set contactPerson(String? value) => setField<String>('contactPerson', value);

  int? get supaUserID => getField<int>('supaUserID');
  set supaUserID(int? value) => setField<int>('supaUserID', value);

  String? get fireUserID => getField<String>('fireUserID');
  set fireUserID(String? value) => setField<String>('fireUserID', value);
}
