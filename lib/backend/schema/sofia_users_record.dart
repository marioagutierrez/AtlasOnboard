import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SofiaUsersRecord extends FirestoreRecord {
  SofiaUsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "onboarding" field.
  bool? _onboarding;
  bool get onboarding => _onboarding ?? false;
  bool hasOnboarding() => _onboarding != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "bank_profile" field.
  bool? _bankProfile;
  bool get bankProfile => _bankProfile ?? false;
  bool hasBankProfile() => _bankProfile != null;

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  bool hasCountryName() => _countryName != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "dialCountry" field.
  String? _dialCountry;
  String get dialCountry => _dialCountry ?? '';
  bool hasDialCountry() => _dialCountry != null;

  // "local_id_url" field.
  String? _localIdUrl;
  String get localIdUrl => _localIdUrl ?? '';
  bool hasLocalIdUrl() => _localIdUrl != null;

  // "passport_url" field.
  String? _passportUrl;
  String get passportUrl => _passportUrl ?? '';
  bool hasPassportUrl() => _passportUrl != null;

  // "proofPayment_url" field.
  String? _proofPaymentUrl;
  String get proofPaymentUrl => _proofPaymentUrl ?? '';
  bool hasProofPaymentUrl() => _proofPaymentUrl != null;

  // "invoice_url" field.
  String? _invoiceUrl;
  String get invoiceUrl => _invoiceUrl ?? '';
  bool hasInvoiceUrl() => _invoiceUrl != null;

  // "signature" field.
  String? _signature;
  String get signature => _signature ?? '';
  bool hasSignature() => _signature != null;

  // "admin" field.
  bool? _admin;
  bool get admin => _admin ?? false;
  bool hasAdmin() => _admin != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "lastActive" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "corp" field.
  bool? _corp;
  bool get corp => _corp ?? false;
  bool hasCorp() => _corp != null;

  // "legalName" field.
  String? _legalName;
  String get legalName => _legalName ?? '';
  bool hasLegalName() => _legalName != null;

  // "commercialName" field.
  String? _commercialName;
  String get commercialName => _commercialName ?? '';
  bool hasCommercialName() => _commercialName != null;

  // "ruc" field.
  String? _ruc;
  String get ruc => _ruc ?? '';
  bool hasRuc() => _ruc != null;

  // "pep" field.
  bool? _pep;
  bool get pep => _pep ?? false;
  bool hasPep() => _pep != null;

  // "afiliate" field.
  bool? _afiliate;
  bool get afiliate => _afiliate ?? false;
  bool hasAfiliate() => _afiliate != null;

  // "onboardingProcess" field.
  double? _onboardingProcess;
  double get onboardingProcess => _onboardingProcess ?? 0.0;
  bool hasOnboardingProcess() => _onboardingProcess != null;

  // "onboardingComplete" field.
  bool? _onboardingComplete;
  bool get onboardingComplete => _onboardingComplete ?? false;
  bool hasOnboardingComplete() => _onboardingComplete != null;

  // "referenceBank" field.
  bool? _referenceBank;
  bool get referenceBank => _referenceBank ?? false;
  bool hasReferenceBank() => _referenceBank != null;

  // "referenceCommercial" field.
  bool? _referenceCommercial;
  bool get referenceCommercial => _referenceCommercial ?? false;
  bool hasReferenceCommercial() => _referenceCommercial != null;

  // "beneficiary" field.
  bool? _beneficiary;
  bool get beneficiary => _beneficiary ?? false;
  bool hasBeneficiary() => _beneficiary != null;

  // "beneficiaryAlternative" field.
  bool? _beneficiaryAlternative;
  bool get beneficiaryAlternative => _beneficiaryAlternative ?? false;
  bool hasBeneficiaryAlternative() => _beneficiaryAlternative != null;

  // "signatureAuth" field.
  bool? _signatureAuth;
  bool get signatureAuth => _signatureAuth ?? false;
  bool hasSignatureAuth() => _signatureAuth != null;

  // "local_Id_upload" field.
  bool? _localIdUpload;
  bool get localIdUpload => _localIdUpload ?? false;
  bool hasLocalIdUpload() => _localIdUpload != null;

  // "passport_upload" field.
  bool? _passportUpload;
  bool get passportUpload => _passportUpload ?? false;
  bool hasPassportUpload() => _passportUpload != null;

  // "proof_Pay_upload" field.
  bool? _proofPayUpload;
  bool get proofPayUpload => _proofPayUpload ?? false;
  bool hasProofPayUpload() => _proofPayUpload != null;

  // "invoicePay_upload" field.
  bool? _invoicePayUpload;
  bool get invoicePayUpload => _invoicePayUpload ?? false;
  bool hasInvoicePayUpload() => _invoicePayUpload != null;

  // "referralCode" field.
  String? _referralCode;
  String get referralCode => _referralCode ?? '';
  bool hasReferralCode() => _referralCode != null;

  // "personalUser" field.
  bool? _personalUser;
  bool get personalUser => _personalUser ?? false;
  bool hasPersonalUser() => _personalUser != null;

  // "codeAsigned" field.
  bool? _codeAsigned;
  bool get codeAsigned => _codeAsigned ?? false;
  bool hasCodeAsigned() => _codeAsigned != null;

  void _initializeFields() {
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _onboarding = snapshotData['onboarding'] as bool?;
    _firstname = snapshotData['firstname'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _bankProfile = snapshotData['bank_profile'] as bool?;
    _countryName = snapshotData['countryName'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _dialCountry = snapshotData['dialCountry'] as String?;
    _localIdUrl = snapshotData['local_id_url'] as String?;
    _passportUrl = snapshotData['passport_url'] as String?;
    _proofPaymentUrl = snapshotData['proofPayment_url'] as String?;
    _invoiceUrl = snapshotData['invoice_url'] as String?;
    _signature = snapshotData['signature'] as String?;
    _admin = snapshotData['admin'] as bool?;
    _status = snapshotData['status'] as String?;
    _lastActive = snapshotData['lastActive'] as DateTime?;
    _corp = snapshotData['corp'] as bool?;
    _legalName = snapshotData['legalName'] as String?;
    _commercialName = snapshotData['commercialName'] as String?;
    _ruc = snapshotData['ruc'] as String?;
    _pep = snapshotData['pep'] as bool?;
    _afiliate = snapshotData['afiliate'] as bool?;
    _onboardingProcess = castToType<double>(snapshotData['onboardingProcess']);
    _onboardingComplete = snapshotData['onboardingComplete'] as bool?;
    _referenceBank = snapshotData['referenceBank'] as bool?;
    _referenceCommercial = snapshotData['referenceCommercial'] as bool?;
    _beneficiary = snapshotData['beneficiary'] as bool?;
    _beneficiaryAlternative = snapshotData['beneficiaryAlternative'] as bool?;
    _signatureAuth = snapshotData['signatureAuth'] as bool?;
    _localIdUpload = snapshotData['local_Id_upload'] as bool?;
    _passportUpload = snapshotData['passport_upload'] as bool?;
    _proofPayUpload = snapshotData['proof_Pay_upload'] as bool?;
    _invoicePayUpload = snapshotData['invoicePay_upload'] as bool?;
    _referralCode = snapshotData['referralCode'] as String?;
    _personalUser = snapshotData['personalUser'] as bool?;
    _codeAsigned = snapshotData['codeAsigned'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sofiaUsers');

  static Stream<SofiaUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SofiaUsersRecord.fromSnapshot(s));

  static Future<SofiaUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SofiaUsersRecord.fromSnapshot(s));

  static SofiaUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SofiaUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SofiaUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SofiaUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SofiaUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SofiaUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSofiaUsersRecordData({
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? email,
  bool? onboarding,
  String? firstname,
  String? lastname,
  bool? bankProfile,
  String? countryName,
  String? displayName,
  String? dialCountry,
  String? localIdUrl,
  String? passportUrl,
  String? proofPaymentUrl,
  String? invoiceUrl,
  String? signature,
  bool? admin,
  String? status,
  DateTime? lastActive,
  bool? corp,
  String? legalName,
  String? commercialName,
  String? ruc,
  bool? pep,
  bool? afiliate,
  double? onboardingProcess,
  bool? onboardingComplete,
  bool? referenceBank,
  bool? referenceCommercial,
  bool? beneficiary,
  bool? beneficiaryAlternative,
  bool? signatureAuth,
  bool? localIdUpload,
  bool? passportUpload,
  bool? proofPayUpload,
  bool? invoicePayUpload,
  String? referralCode,
  bool? personalUser,
  bool? codeAsigned,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'email': email,
      'onboarding': onboarding,
      'firstname': firstname,
      'lastname': lastname,
      'bank_profile': bankProfile,
      'countryName': countryName,
      'display_name': displayName,
      'dialCountry': dialCountry,
      'local_id_url': localIdUrl,
      'passport_url': passportUrl,
      'proofPayment_url': proofPaymentUrl,
      'invoice_url': invoiceUrl,
      'signature': signature,
      'admin': admin,
      'status': status,
      'lastActive': lastActive,
      'corp': corp,
      'legalName': legalName,
      'commercialName': commercialName,
      'ruc': ruc,
      'pep': pep,
      'afiliate': afiliate,
      'onboardingProcess': onboardingProcess,
      'onboardingComplete': onboardingComplete,
      'referenceBank': referenceBank,
      'referenceCommercial': referenceCommercial,
      'beneficiary': beneficiary,
      'beneficiaryAlternative': beneficiaryAlternative,
      'signatureAuth': signatureAuth,
      'local_Id_upload': localIdUpload,
      'passport_upload': passportUpload,
      'proof_Pay_upload': proofPayUpload,
      'invoicePay_upload': invoicePayUpload,
      'referralCode': referralCode,
      'personalUser': personalUser,
      'codeAsigned': codeAsigned,
    }.withoutNulls,
  );

  return firestoreData;
}

class SofiaUsersRecordDocumentEquality implements Equality<SofiaUsersRecord> {
  const SofiaUsersRecordDocumentEquality();

  @override
  bool equals(SofiaUsersRecord? e1, SofiaUsersRecord? e2) {
    return e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.email == e2?.email &&
        e1?.onboarding == e2?.onboarding &&
        e1?.firstname == e2?.firstname &&
        e1?.lastname == e2?.lastname &&
        e1?.bankProfile == e2?.bankProfile &&
        e1?.countryName == e2?.countryName &&
        e1?.displayName == e2?.displayName &&
        e1?.dialCountry == e2?.dialCountry &&
        e1?.localIdUrl == e2?.localIdUrl &&
        e1?.passportUrl == e2?.passportUrl &&
        e1?.proofPaymentUrl == e2?.proofPaymentUrl &&
        e1?.invoiceUrl == e2?.invoiceUrl &&
        e1?.signature == e2?.signature &&
        e1?.admin == e2?.admin &&
        e1?.status == e2?.status &&
        e1?.lastActive == e2?.lastActive &&
        e1?.corp == e2?.corp &&
        e1?.legalName == e2?.legalName &&
        e1?.commercialName == e2?.commercialName &&
        e1?.ruc == e2?.ruc &&
        e1?.pep == e2?.pep &&
        e1?.afiliate == e2?.afiliate &&
        e1?.onboardingProcess == e2?.onboardingProcess &&
        e1?.onboardingComplete == e2?.onboardingComplete &&
        e1?.referenceBank == e2?.referenceBank &&
        e1?.referenceCommercial == e2?.referenceCommercial &&
        e1?.beneficiary == e2?.beneficiary &&
        e1?.beneficiaryAlternative == e2?.beneficiaryAlternative &&
        e1?.signatureAuth == e2?.signatureAuth &&
        e1?.localIdUpload == e2?.localIdUpload &&
        e1?.passportUpload == e2?.passportUpload &&
        e1?.proofPayUpload == e2?.proofPayUpload &&
        e1?.invoicePayUpload == e2?.invoicePayUpload &&
        e1?.referralCode == e2?.referralCode &&
        e1?.personalUser == e2?.personalUser &&
        e1?.codeAsigned == e2?.codeAsigned;
  }

  @override
  int hash(SofiaUsersRecord? e) => const ListEquality().hash([
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.email,
        e?.onboarding,
        e?.firstname,
        e?.lastname,
        e?.bankProfile,
        e?.countryName,
        e?.displayName,
        e?.dialCountry,
        e?.localIdUrl,
        e?.passportUrl,
        e?.proofPaymentUrl,
        e?.invoiceUrl,
        e?.signature,
        e?.admin,
        e?.status,
        e?.lastActive,
        e?.corp,
        e?.legalName,
        e?.commercialName,
        e?.ruc,
        e?.pep,
        e?.afiliate,
        e?.onboardingProcess,
        e?.onboardingComplete,
        e?.referenceBank,
        e?.referenceCommercial,
        e?.beneficiary,
        e?.beneficiaryAlternative,
        e?.signatureAuth,
        e?.localIdUpload,
        e?.passportUpload,
        e?.proofPayUpload,
        e?.invoicePayUpload,
        e?.referralCode,
        e?.personalUser,
        e?.codeAsigned
      ]);

  @override
  bool isValidKey(Object? o) => o is SofiaUsersRecord;
}
