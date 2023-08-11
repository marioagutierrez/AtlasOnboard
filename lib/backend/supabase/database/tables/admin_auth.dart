import '../database.dart';

class AdminAuthTable extends SupabaseTable<AdminAuthRow> {
  @override
  String get tableName => 'adminAuth';

  @override
  AdminAuthRow createRow(Map<String, dynamic> data) => AdminAuthRow(data);
}

class AdminAuthRow extends SupabaseDataRow {
  AdminAuthRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminAuthTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  bool? get admin => getField<bool>('admin');
  set admin(bool? value) => setField<bool>('admin', value);
}
