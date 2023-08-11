import '../database.dart';

class SignatoriesTable extends SupabaseTable<SignatoriesRow> {
  @override
  String get tableName => 'signatories';

  @override
  SignatoriesRow createRow(Map<String, dynamic> data) => SignatoriesRow(data);
}

class SignatoriesRow extends SupabaseDataRow {
  SignatoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SignatoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get firebaseId => getField<String>('firebase_id');
  set firebaseId(String? value) => setField<String>('firebase_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get instructions => getField<String>('instructions');
  set instructions(String? value) => setField<String>('instructions', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get idNumber => getField<String>('id_number');
  set idNumber(String? value) => setField<String>('id_number', value);

  String? get signature => getField<String>('signature');
  set signature(String? value) => setField<String>('signature', value);
}
