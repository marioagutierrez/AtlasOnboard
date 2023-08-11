import '../database.dart';

class ProfileRecordAtlasTable extends SupabaseTable<ProfileRecordAtlasRow> {
  @override
  String get tableName => 'profile-record-atlas';

  @override
  ProfileRecordAtlasRow createRow(Map<String, dynamic> data) =>
      ProfileRecordAtlasRow(data);
}

class ProfileRecordAtlasRow extends SupabaseDataRow {
  ProfileRecordAtlasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfileRecordAtlasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get photoProfileUrl => getField<String>('photo_profile_url');
  set photoProfileUrl(String? value) =>
      setField<String>('photo_profile_url', value);

  String? get secondName => getField<String>('second_name');
  set secondName(String? value) => setField<String>('second_name', value);

  String? get secondLastName => getField<String>('second_last_name');
  set secondLastName(String? value) =>
      setField<String>('second_last_name', value);

  String? get spouseLastName => getField<String>('spouse_last_name');
  set spouseLastName(String? value) =>
      setField<String>('spouse_last_name', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get nationalityIssuing => getField<String>('nationality_Issuing');
  set nationalityIssuing(String? value) =>
      setField<String>('nationality_Issuing', value);

  String? get passportIssuing => getField<String>('passport_Issuing');
  set passportIssuing(String? value) =>
      setField<String>('passport_Issuing', value);

  String? get idNumberNationality => getField<String>('id_number_nationality');
  set idNumberNationality(String? value) =>
      setField<String>('id_number_nationality', value);

  String? get idNumberPassport => getField<String>('id_number_passport');
  set idNumberPassport(String? value) =>
      setField<String>('id_number_passport', value);

  DateTime? get expDateNationality =>
      getField<DateTime>('exp_date_nationality');
  set expDateNationality(DateTime? value) =>
      setField<DateTime>('exp_date_nationality', value);

  DateTime? get expDatePassport => getField<DateTime>('exp_date_passport');
  set expDatePassport(DateTime? value) =>
      setField<DateTime>('exp_date_passport', value);

  String? get maritalStatus => getField<String>('marital_status');
  set maritalStatus(String? value) => setField<String>('marital_status', value);

  String? get employStatus => getField<String>('employ_status');
  set employStatus(String? value) => setField<String>('employ_status', value);

  String? get nameCompany => getField<String>('name_company');
  set nameCompany(String? value) => setField<String>('name_company', value);

  String? get ocupation => getField<String>('ocupation');
  set ocupation(String? value) => setField<String>('ocupation', value);

  String? get jobAddressOne => getField<String>('job_address_one');
  set jobAddressOne(String? value) =>
      setField<String>('job_address_one', value);

  String? get jobAddressTwo => getField<String>('job_address_two');
  set jobAddressTwo(String? value) =>
      setField<String>('job_address_two', value);

  String? get telephoneCompany => getField<String>('telephone_company');
  set telephoneCompany(String? value) =>
      setField<String>('telephone_company', value);

  double? get salaryYear => getField<double>('salary_year');
  set salaryYear(double? value) => setField<double>('salary_year', value);

  String? get position => getField<String>('position');
  set position(String? value) => setField<String>('position', value);

  String? get typeBusiness => getField<String>('type_business');
  set typeBusiness(String? value) => setField<String>('type_business', value);

  String? get sourceNetworth => getField<String>('source_networth');
  set sourceNetworth(String? value) =>
      setField<String>('source_networth', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  String? get district => getField<String>('district');
  set district(String? value) => setField<String>('district', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get street => getField<String>('street');
  set street(String? value) => setField<String>('street', value);

  String? get building => getField<String>('building');
  set building(String? value) => setField<String>('building', value);

  String? get houseApartment => getField<String>('house_apartment');
  set houseApartment(String? value) =>
      setField<String>('house_apartment', value);

  String? get zipcode => getField<String>('zipcode');
  set zipcode(String? value) => setField<String>('zipcode', value);

  String? get educationalLevel => getField<String>('educational_level');
  set educationalLevel(String? value) =>
      setField<String>('educational_level', value);

  int? get dependents => getField<int>('dependents');
  set dependents(int? value) => setField<int>('dependents', value);

  String? get firstName => getField<String>('firstName');
  set firstName(String? value) => setField<String>('firstName', value);

  String? get lastName => getField<String>('lastName');
  set lastName(String? value) => setField<String>('lastName', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get firebaseId => getField<String>('firebase_id');
  set firebaseId(String? value) => setField<String>('firebase_id', value);

  bool? get pep => getField<bool>('pep');
  set pep(bool? value) => setField<bool>('pep', value);

  DateTime? get birthdate => getField<DateTime>('birthdate');
  set birthdate(DateTime? value) => setField<DateTime>('birthdate', value);

  String? get companyId => getField<String>('company_id');
  set companyId(String? value) => setField<String>('company_id', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get dialCountry => getField<String>('dialCountry');
  set dialCountry(String? value) => setField<String>('dialCountry', value);

  String? get referralCode => getField<String>('referralCode');
  set referralCode(String? value) => setField<String>('referralCode', value);
}
