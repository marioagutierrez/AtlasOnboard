import '../database.dart';

class CommercialRecordAtlasTable
    extends SupabaseTable<CommercialRecordAtlasRow> {
  @override
  String get tableName => 'commercial-record-atlas';

  @override
  CommercialRecordAtlasRow createRow(Map<String, dynamic> data) =>
      CommercialRecordAtlasRow(data);
}

class CommercialRecordAtlasRow extends SupabaseDataRow {
  CommercialRecordAtlasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CommercialRecordAtlasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get legalName => getField<String>('legal_name');
  set legalName(String? value) => setField<String>('legal_name', value);

  String? get commercialName => getField<String>('commercial_name');
  set commercialName(String? value) =>
      setField<String>('commercial_name', value);

  String? get ruc => getField<String>('ruc');
  set ruc(String? value) => setField<String>('ruc', value);

  DateTime? get dateIncorporation => getField<DateTime>('date_incorporation');
  set dateIncorporation(DateTime? value) =>
      setField<DateTime>('date_incorporation', value);

  String? get jurisdiction => getField<String>('jurisdiction');
  set jurisdiction(String? value) => setField<String>('jurisdiction', value);

  String? get countryOperatio => getField<String>('country_operatio');
  set countryOperatio(String? value) =>
      setField<String>('country_operatio', value);

  DateTime? get commencementOperations =>
      getField<DateTime>('commencement_operations');
  set commencementOperations(DateTime? value) =>
      setField<DateTime>('commencement_operations', value);

  String? get economicActivity => getField<String>('economic_activity');
  set economicActivity(String? value) =>
      setField<String>('economic_activity', value);

  String? get expirationArticlesIncorporation =>
      getField<String>('expiration_articles_incorporation');
  set expirationArticlesIncorporation(String? value) =>
      setField<String>('expiration_articles_incorporation', value);

  DateTime? get expirationArticlesIncorporationDate =>
      getField<DateTime>('expiration_articles_incorporation_date');
  set expirationArticlesIncorporationDate(DateTime? value) =>
      setField<DateTime>('expiration_articles_incorporation_date', value);

  double? get annualRevenues => getField<double>('annual_revenues');
  set annualRevenues(double? value) =>
      setField<double>('annual_revenues', value);

  double? get annualExpenses => getField<double>('annual_expenses');
  set annualExpenses(double? value) =>
      setField<double>('annual_expenses', value);

  double? get estimatedEquity => getField<double>('estimated_equity');
  set estimatedEquity(double? value) =>
      setField<double>('estimated_equity', value);

  double? get totalAsset => getField<double>('total_asset');
  set totalAsset(double? value) => setField<double>('total_asset', value);

  int? get totalEmployees => getField<int>('total_employees');
  set totalEmployees(int? value) => setField<int>('total_employees', value);

  String? get referredBy => getField<String>('referred_by');
  set referredBy(String? value) => setField<String>('referred_by', value);

  String? get country => getField<String>('country ');
  set country(String? value) => setField<String>('country ', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get district => getField<String>('district');
  set district(String? value) => setField<String>('district', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get street => getField<String>('street');
  set street(String? value) => setField<String>('street', value);

  String? get buildingName => getField<String>('building_name');
  set buildingName(String? value) => setField<String>('building_name', value);

  String? get website => getField<String>('website');
  set website(String? value) => setField<String>('website', value);

  String? get mailingAddress => getField<String>('mailing_address');
  set mailingAddress(String? value) =>
      setField<String>('mailing_address', value);

  String? get firebaseId => getField<String>('firebase_id');
  set firebaseId(String? value) => setField<String>('firebase_id', value);

  String? get residentAgent => getField<String>('residentAgent ');
  set residentAgent(String? value) => setField<String>('residentAgent ', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);
}
