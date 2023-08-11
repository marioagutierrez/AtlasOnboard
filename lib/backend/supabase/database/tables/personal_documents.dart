import '../database.dart';

class PersonalDocumentsTable extends SupabaseTable<PersonalDocumentsRow> {
  @override
  String get tableName => 'personalDocuments';

  @override
  PersonalDocumentsRow createRow(Map<String, dynamic> data) =>
      PersonalDocumentsRow(data);
}

class PersonalDocumentsRow extends SupabaseDataRow {
  PersonalDocumentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PersonalDocumentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get localIdUrl => getField<String>('local_id_url');
  set localIdUrl(String? value) => setField<String>('local_id_url', value);

  String? get passportUrl => getField<String>('passport_url');
  set passportUrl(String? value) => setField<String>('passport_url', value);

  String? get proofOfPayUrl => getField<String>('proof_of_pay_url');
  set proofOfPayUrl(String? value) =>
      setField<String>('proof_of_pay_url', value);

  String? get invoicePayServUrl => getField<String>('invoice_pay_serv_url');
  set invoicePayServUrl(String? value) =>
      setField<String>('invoice_pay_serv_url', value);

  String? get firebaseId => getField<String>('firebase_id');
  set firebaseId(String? value) => setField<String>('firebase_id', value);
}
