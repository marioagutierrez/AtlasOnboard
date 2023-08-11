import '../database.dart';

class BoardMembersTable extends SupabaseTable<BoardMembersRow> {
  @override
  String get tableName => 'board_members';

  @override
  BoardMembersRow createRow(Map<String, dynamic> data) => BoardMembersRow(data);
}

class BoardMembersRow extends SupabaseDataRow {
  BoardMembersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BoardMembersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get boardPosition => getField<String>('boardPosition');
  set boardPosition(String? value) => setField<String>('boardPosition', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get idNumber => getField<String>('id_number');
  set idNumber(String? value) => setField<String>('id_number', value);

  String? get iDType => getField<String>('ID Type');
  set iDType(String? value) => setField<String>('ID Type', value);

  String? get nationality => getField<String>('nationality');
  set nationality(String? value) => setField<String>('nationality', value);

  String? get countryIssuance => getField<String>('countryIssuance');
  set countryIssuance(String? value) =>
      setField<String>('countryIssuance', value);

  DateTime? get expirationDate => getField<DateTime>('expirationDate');
  set expirationDate(DateTime? value) =>
      setField<DateTime>('expirationDate', value);

  String? get firebaseId => getField<String>('firebase_id');
  set firebaseId(String? value) => setField<String>('firebase_id', value);

  String? get documentIdUrl => getField<String>('document_id_url');
  set documentIdUrl(String? value) =>
      setField<String>('document_id_url', value);
}
