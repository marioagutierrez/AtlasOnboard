import '../database.dart';

class ReferralsTable extends SupabaseTable<ReferralsRow> {
  @override
  String get tableName => 'referrals';

  @override
  ReferralsRow createRow(Map<String, dynamic> data) => ReferralsRow(data);
}

class ReferralsRow extends SupabaseDataRow {
  ReferralsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReferralsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get fistName => getField<String>('fistName');
  set fistName(String? value) => setField<String>('fistName', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get dialCountry => getField<String>('dialCountry');
  set dialCountry(String? value) => setField<String>('dialCountry', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get firebaseId => getField<String>('firebase_id');
  set firebaseId(String? value) => setField<String>('firebase_id', value);
}
