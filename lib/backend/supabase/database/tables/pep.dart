import '../database.dart';

class PepTable extends SupabaseTable<PepRow> {
  @override
  String get tableName => 'pep';

  @override
  PepRow createRow(Map<String, dynamic> data) => PepRow(data);
}

class PepRow extends SupabaseDataRow {
  PepRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PepTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get pepType => getField<String>('pepType');
  set pepType(String? value) => setField<String>('pepType', value);

  String? get namePEP => getField<String>('namePEP');
  set namePEP(String? value) => setField<String>('namePEP', value);

  String? get relationship => getField<String>('relationship');
  set relationship(String? value) => setField<String>('relationship', value);

  String? get jobTitle => getField<String>('jobTitle');
  set jobTitle(String? value) => setField<String>('jobTitle', value);

  String? get jobDescription => getField<String>('jobDescription');
  set jobDescription(String? value) =>
      setField<String>('jobDescription', value);

  String? get entity => getField<String>('entity');
  set entity(String? value) => setField<String>('entity', value);

  int? get supaUserID => getField<int>('supaUserID');
  set supaUserID(int? value) => setField<int>('supaUserID', value);

  String? get fireUserID => getField<String>('fireUserID');
  set fireUserID(String? value) => setField<String>('fireUserID', value);
}
