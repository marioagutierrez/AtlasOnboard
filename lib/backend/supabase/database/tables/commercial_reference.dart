import '../database.dart';

class CommercialReferenceTable extends SupabaseTable<CommercialReferenceRow> {
  @override
  String get tableName => 'commercial_Reference';

  @override
  CommercialReferenceRow createRow(Map<String, dynamic> data) =>
      CommercialReferenceRow(data);
}

class CommercialReferenceRow extends SupabaseDataRow {
  CommercialReferenceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CommercialReferenceTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get companyName => getField<String>('companyName');
  set companyName(String? value) => setField<String>('companyName', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get relationship => getField<String>('relationship');
  set relationship(String? value) => setField<String>('relationship', value);

  String? get contactPerson => getField<String>('contactPerson');
  set contactPerson(String? value) => setField<String>('contactPerson', value);

  String? get fireUserID => getField<String>('fireUserID');
  set fireUserID(String? value) => setField<String>('fireUserID', value);

  int? get supaUserID => getField<int>('supaUserID');
  set supaUserID(int? value) => setField<int>('supaUserID', value);
}
