import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start PDFapiCall Group Code

class PDFapiCallGroup {
  static String baseUrl = 'https://atlaspdf-namw-dev.fl0.io';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static PersonalFormCall personalFormCall = PersonalFormCall();
  static PersonalFormCopyCall personalFormCopyCall = PersonalFormCopyCall();
}

class PersonalFormCall {
  Future<ApiCallResponse> call(
      {String? tituloarchivo = '',
      String? nationality0 = '',
      String? street2 = '',
      String? city3 = '',
      String? email4 = '',
      String? salary5 = '',
      String? ocupation6 = '',
      String? date7 = '',
      String? firstName8 = '',
      String? lastName9 = '',
      String? marriedNameFirstName = '',
      String? marriedNameMi = '',
      String? lastName = '',
      String? state1 = '',
      String? dateOfBirth11 = '',
      String? placeOfBirth12 = '',
      String? referredBy13 = '',
      String? middleNameFirstName = '',
      String? middleNameMi = '',
      String? middleNameLastName = '',
      String? secondLastName15 = '',
      String? idType16 = '',
      String? idExpirationDate17 = '',
      String? countryOfIssuance18 = '',
      String? jobAddress19 = '',
      String? typeOfBusiness20 = '',
      String? sourceOfWealth121 = '',
      String? sourceOfWealth222 = '',
      String? apartmentNumber23 = '',
      String? buildingNameFirstName = '',
      String? buildingNameMi = '',
      String? buildingNameLastName = '',
      String? phoneNumber25 = '',
      String? phoneNumberRegion = '',
      String? phoneNumberBaseRegion = '',
      String? mailingAddress26 = '',
      String? cellPhoneNumber_num = '',
      String? cellPhoneNumber_region = '',
      String? cellPhoneNumber_baseRegion = '',
      String? country28 = '',
      String? bankingBankName_firstName = '',
      String? bankingBankName_mi = '',
      String? bankingBankName_lastName = '',
      String? bankAddress30 = '',
      String? bankAccountType31 = '',
      String? bankContactPerson32 = '',
      String? bankingBankName2_fisrtName = '',
      String? bankingBankName2_mi = '',
      String? bankingBankName2_lastName = '',
      String? bankAddress234 = '',
      String? bankAccountType235 = '',
      String? bankContactPerson236 = '',
      String? commercialCompanyName37 = '',
      String? companyAddress38 = '',
      String? relationshipType39 = '',
      String? companyContactPerson40 = '',
      String? commercialCompanyName241 = '',
      String? companyAddress242 = '',
      String? relationshipType243 = '',
      String? companyContactPerson244 = '',
      String? idNumber45 = '',
      String? single46 = '',
      String? divorced47 = '',
      String? female48 = '',
      String? married49 = '',
      String? other50 = '',
      String? male51 = '',
      String? dependientes52 = '',
      String? widowed53 = '',
      String? highSchool54 = '',
      String? bachelorsDegree55 = '',
      String? mastersDegree56 = '',
      String? phd57 = '',
      String? placeOfWork58 = '',
      String? noPep59 = '',
      String? pep60 = '',
      String? pepRelated61 = '',
      String? factaGreenCard62 = '',
      String? fatcaGreenCardNo63 = '',
      String? fatcaCitizemYes64 = '',
      String? fatcaCitizemNo65 = '',
      String? fatcaUsPassportYes66 = '',
      String? fatcaUsPassportNo67 = '',
      String? fatcaDoubleNationalityYes68 = '',
      String? fatcaDoubleNationalityNo69 = '',
      String? fatcaGivenUpYourUsCitizenshipYes70 = '',
      String? fatcaGivenUpYourUsCitizenshipNo71 = '',
      String? namePep72_firstName = '',
      String? namePep72_mi = '',
      String? namePep72_lastName = '',
      String? relationshioPep73 = '',
      String? jobTitlePep74 = '',
      String? lenghOfTimeAffiliationPep75 = '',
      String? jobDescriptionPep76 = '',
      String? entityPep77 = '',
      String? taxResidenceAddress78 = '',
      String? taxIdentificationNumber79 = '',
      String? taxIdentificationNumber180 = '',
      String? mentionTheCountry81 = '',
      String? intermediaryYes82 = '',
      String? intermediaryNo83 = '',
      String? ownerName84_fisrtName = '',
      String? ownerName84_mi = '',
      String? ownerName84_lastName = '',
      String? ownerNationality85 = '',
      String? ownerLastName86 = '',
      String? ownerIdNumer87 = '',
      String? optOutOnlineYes88 = '',
      String? optOutOnlineNo89 = '',
      String? nameNombre90_fisrtName = '',
      String? nameNombre90_mi = '',
      String? nameNombre90_lastName = '',
      String? idNumber91 = '',
      String? employer92 = '',
      String? jobTitle93 = ''}) {
    final body = '''
{
  "file_name": "${tituloarchivo}.pdf",
  "data": {
    "title": "FORM 001 Individual Client Form",
    "fontSize": "10",
    "textColor": "#333333",
    "data": {
      "nationality0": "${nationality0}",
      "state1": "${state1}",
      "street2": "${street2}",
      "city3": "${city3}",
      "email4": "${email4}",
      "salary5": "${salary5}",
      "ocupation6": "${ocupation6}",
      "date7": "${date7}",
      "firstName8": "${firstName8}",
      "lastName9": "${lastName9}",
      "marriedName10": {
        "firstName": "${marriedNameFirstName}",
        "mi": "${marriedNameMi}",
        "lastName": "${lastName}"
      },
      "dateOfBirth11": "${dateOfBirth11}",
      "placeOfBirth12": "${placeOfBirth12}",
      "referredBy13": "${referredBy13}",
      "middleName14": {
        "firstName": "${middleNameFirstName}",
        "mi": "${middleNameMi}",
        "lastName": "${middleNameLastName}"
      },
      "secondLastName15": "${secondLastName15}",
      "idType16": "${idType16}",
      "idExpirationDate17": "${idExpirationDate17}",
      "countryOfIssuance18": "${countryOfIssuance18}",
      "jobAddress19": "${jobAddress19}",
      "typeOfBusiness20": "${typeOfBusiness20}",
      "sourceOfWealth121": "${sourceOfWealth121}",
      "sourceOfWealth222": "${sourceOfWealth222}",
      "apartmentNumber23": "${apartmentNumber23}",
      "buildingName24": {
        "firstName": "${buildingNameFirstName}",
        "mi": "${buildingNameMi}",
        "lastName": "${buildingNameLastName}"
      },
      "phoneNumber25": {
        "num": "${phoneNumber25}",
        "region": "${phoneNumberRegion}",
        "baseRegion": "${phoneNumberBaseRegion}"
      },
      "mailingAddress26": "${mailingAddress26}",
      "cellPhoneNumber27": {
        "num": "${cellPhoneNumber_num}",
        "region": "${cellPhoneNumber_region}",
        "baseRegion": "${cellPhoneNumber_baseRegion}"
      },
      "country28": "${country28}",
      "bankingBankName29": {
        "firstName": "${bankingBankName_firstName}",
        "mi": "${bankingBankName_mi}",
        "lastName": "${bankingBankName_lastName}"
      },
      "bankAddress30": "${bankAddress30}",
      "bankAccountType31": "${bankAccountType31}",
      "bankContactPerson32": "${bankContactPerson32}",
      "bankingBankName233": {
        "firstName": "${bankingBankName2_fisrtName}",
        "mi": "${bankingBankName2_mi}",
        "lastName": "${bankingBankName2_lastName}"
      },
      "bankAddress234": "${bankAddress234}",
      "bankAccountType235": "${bankAccountType235}",
      "bankContactPerson236": "${bankContactPerson236}",
      "commercialCompanyName37": "${commercialCompanyName37}",
      "companyAddress38": "${companyAddress38}",
      "relationshipType39": "${relationshipType39}",
      "companyContactPerson40": "${companyContactPerson40}",
      "commercialCompanyName241": "${commercialCompanyName241}",
      "companyAddress242": "${companyAddress242}",
      "relationshipType243": "${relationshipType243}",
      "companyContactPerson244": "${companyContactPerson244}",
      "idNumber45": "${idNumber45}",
      "single46": "${single46}",
      "divorced47": "${divorced47}",
      "female48": "${female48}",
      "married49": "${married49}",
      "other50": "${other50}",
      "male51": "${male51}",
      "dependientes52": "${dependientes52}",
      "widowed53": "${widowed53}",
      "highSchool54": "${highSchool54}",
      "bachelorsDegree55": "${bachelorsDegree55}",
      "mastersDegree56": "${mastersDegree56}",
      "phd57": "${phd57}",
      "placeOfWork58": "${placeOfWork58}",
      "noPep59": "${noPep59}",
      "pep60": "${pep60}",
      "pepRelated61": "${pepRelated61}",
      "factaGreenCard62": "${factaGreenCard62}",
      "fatcaGreenCardNo63": "${fatcaGreenCardNo63}",
      "fatcaCitizemYes64": "${fatcaCitizemYes64}",
      "fatcaCitizemNo65": "${fatcaCitizemNo65}",
      "fatcaUsPassportYes66": "${fatcaUsPassportYes66}",
      "fatcaUsPassportNo67": "${fatcaUsPassportNo67}",
      "fatcaDoubleNationalityYes68": "${fatcaDoubleNationalityYes68}",
      "fatcaDoubleNationalityNo69": "${fatcaDoubleNationalityNo69}",
      "fatcaGivenUpYourUsCitizenshipYes70": "${fatcaGivenUpYourUsCitizenshipYes70}",
      "fatcaGivenUpYourUsCitizenshipNo71": "${fatcaGivenUpYourUsCitizenshipNo71}",
      "namePep72": {
        "firstName": "${namePep72_firstName}",
        "mi": "${namePep72_mi}",
        "lastName": "${namePep72_lastName}"
      },
      "relationshioPep73": "${relationshioPep73}",
      "jobTitlePep74": "${jobTitlePep74}",
      "lenghOfTimeAffiliationPep75": "${lenghOfTimeAffiliationPep75}",
      "jobDescriptionPep76": "${jobDescriptionPep76}",
      "entityPep77": "${entityPep77}",
      "taxResidenceAddress78": "${taxResidenceAddress78}",
      "taxIdentificationNumber79": "${taxIdentificationNumber79}",
      "taxIdentificationNumber180": "${taxIdentificationNumber180}",
      "mentionTheCountry81": "${mentionTheCountry81}",
      "intermediaryYes82": "${intermediaryYes82}",
      "intermediaryNo83": "${intermediaryNo83}",
      "ownerName84": {
        "firstName": "${ownerName84_fisrtName}",
        "mi": "${ownerName84_mi}",
        "lastName": "${ownerName84_lastName}"
      },
      "ownerNationality85": "${ownerNationality85}",
      "ownerLastName86": "${ownerLastName86}",
      "ownerIdNumer87": "${ownerIdNumer87}",
      "optOutOnlineYes88": "${optOutOnlineYes88}",
      "optOutOnlineNo89": "${optOutOnlineNo89}",
      "nameNombre90": {
        "firstName": "${nameNombre90_fisrtName}",
        "mi": "${nameNombre90_mi}",
        "lastName": "${nameNombre90_lastName}"
      },
      "idNumber91": "${idNumber91}",
      "employer92": "${employer92}",
      "jobTitle93": "${jobTitle93}"
    }
  }
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'PersonalForm',
      apiUrl: '${PDFapiCallGroup.baseUrl}/form01/upload',
      callType: ApiCallType.POST,
      headers: {
        ...PDFapiCallGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic pdfUrl(dynamic response) => getJsonField(
        response,
        r'''$.link.data.publicUrl''',
      );
  dynamic pdfName(dynamic response) => getJsonField(
        response,
        r'''$.file_name''',
      );
}

class PersonalFormCopyCall {
  Future<ApiCallResponse> call() {
    final body = '''
{
  "file_name": "test4testt32.pdf",
  "data": {
    "title": "FORM 001 Individual Client Form",
    "fontSize": "10",
    "textColor": "#333333",
    "data": {
      "nationality0": "<nationality0>",
      "state1": "<state1>",
      "street2": "<street2>",
      "city3": "<city3>",
      "email4": "<email4>",
      "salary5": "<salary5>",
      "ocupation6": "<ocupation6>",
      "date7": "<date7>",
      "firstName8": "<firstName8>",
      "lastName9": "<lastName9>",
      "marriedName10": {
        "firstName": "<marriedName_firstName>",
        "mi": "<marriedName_mi>",
        "lastName": "<lastName>"
      },
      "dateOfBirth11": "<dateOfBirth11>",
      "placeOfBirth12": "<placeOfBirth12>",
      "referredBy13": "<referredBy13>",
      "middleName14": {
        "firstName": "<middleName_firstName>",
        "mi": "<middleName_mi>",
        "lastName": "<middleName_lastName>"
      },
      "secondLastName15": "<secondLastName15>",
      "idType16": "<idType16>",
      "idExpirationDate17": "<idExpirationDate17>",
      "countryOfIssuance18": "<countryOfIssuance18>",
      "jobAddress19": "<jobAddress19>",
      "typeOfBusiness20": "<typeOfBusiness20>",
      "sourceOfWealth121": "<sourceOfWealth121>",
      "sourceOfWealth222": "<sourceOfWealth222>",
      "apartmentNumber23": "<apartmentNumber23>",
      "buildingName24": {
        "firstName": "<buildingName_firstName>",
        "mi": "<buildingName_mi>",
        "lastName": "<buildingName_lastName>"
      },
      "phoneNumber25": {
        "num": "<phoneNumber25>",
        "region": "<phoneNumber_region>",
        "baseRegion": "<phoneNumber_baseRegion>"
      },
      "mailingAddress26": "<mailingAddress26>",
      "cellPhoneNumber27": {
        "num": "<cellPhoneNumber_num>",
        "region": "<cellPhoneNumber_region>",
        "baseRegion": "<cellPhoneNumber_baseRegion>"
      },
      "country28": "<country28>",
      "bankingBankName29": {
        "firstName": "<bankingBankName_firstName>",
        "mi": "<bankingBankName_mi>",
        "lastName": "<bankingBankName_lastName>"
      },
      "bankAddress30": "<bankAddress30>",
      "bankAccountType31": "<bankAccountType31>",
      "bankContactPerson32": "<bankContactPerson32>",
      "bankingBankName233": {
        "firstName": "<bankingBankName2_fisrtName>",
        "mi": "<bankingBankName2_mi>",
        "lastName": "<bankingBankName2_lastName>"
      },
      "bankAddress234": "<bankAddress234>",
      "bankAccountType235": "<bankAccountType235>",
      "bankContactPerson236": "<bankContactPerson236>",
      "commercialCompanyName37": "<commercialCompanyName37>",
      "companyAddress38": "<companyAddress38>",
      "relationshipType39": "<relationshipType39>",
      "companyContactPerson40": "<companyContactPerson40>",
      "commercialCompanyName241": "<commercialCompanyName241>",
      "companyAddress242": "<companyAddress242>",
      "relationshipType243": "<relationshipType243>",
      "companyContactPerson244": "<companyContactPerson244>",
      "idNumber45": "<idNumber45>",
      "single46": "<single46>",
      "divorced47": "<divorced47>",
      "female48": "<female48>",
      "married49": "<married49>",
      "other50": "<other50>",
      "male51": "<male51>",
      "dependientes52": "<dependientes52>",
      "widowed53": "<widowed53>",
      "highSchool54": "<highSchool54>",
      "bachelorsDegree55": "<bachelorsDegree55>",
      "mastersDegree56": "<mastersDegree56>",
      "phd57": "<phd57>",
      "placeOfWork58": "<placeOfWork58>",
      "noPep59": "<noPep59>",
      "pep60": "<pep60>",
      "pepRelated61": "<pepRelated61>",
      "factaGreenCard62": "<factaGreenCard62>",
      "fatcaGreenCardNo63": "<fatcaGreenCardNo63>",
      "fatcaCitizemYes64": "<fatcaCitizemYes64>",
      "fatcaCitizemNo65": "<fatcaCitizemNo65>",
      "fatcaUsPassportYes66": "<fatcaUsPassportYes66>",
      "fatcaUsPassportNo67": "<fatcaUsPassportNo67>",
      "fatcaDoubleNationalityYes68": "<fatcaDoubleNationalityYes68>",
      "fatcaDoubleNationalityNo69": "<fatcaDoubleNationalityNo69>",
      "fatcaGivenUpYourUsCitizenshipYes70": "<fatcaGivenUpYourUsCitizenshipYes70>",
      "fatcaGivenUpYourUsCitizenshipNo71": "<fatcaGivenUpYourUsCitizenshipNo71>",
      "namePep72": {
        "firstName": "<namePep72_firstName>",
        "mi": "<namePep72_mi>",
        "lastName": "<namePep72_lastName>"
      },
      "relationshioPep73": "<relationshioPep73>",
      "jobTitlePep74": "<jobTitlePep74>",
      "lenghOfTimeAffiliationPep75": "<lenghOfTimeAffiliationPep75>",
      "jobDescriptionPep76": "<jobDescriptionPep76>",
      "entityPep77": "<entityPep77>",
      "taxResidenceAddress78": "<taxResidenceAddress78>",
      "taxIdentificationNumber79": "<taxIdentificationNumber79>",
      "taxIdentificationNumber180": "<taxIdentificationNumber180>",
      "mentionTheCountry81": "<mentionTheCountry81>",
      "intermediaryYes82": "<intermediaryYes82>",
      "intermediaryNo83": "<intermediaryNo83>",
      "ownerName84": {
        "firstName": "<ownerName84_fisrtName>",
        "mi": "<ownerName84_mi>",
        "lastName": "<ownerName84_lastName>"
      },
      "ownerNationality85": "<ownerNationality85>",
      "ownerLastName86": "<ownerLastName86>",
      "ownerIdNumer87": "<ownerIdNumer87>",
      "optOutOnlineYes88": "<optOutOnlineYes88>",
      "optOutOnlineNo89": "<optOutOnlineNo89>",
      "nameNombre90": {
        "firstName": "<nameNombre90_fisrtName>",
        "mi": "<nameNombre90_mi>",
        "lastName": "<nameNombre90_lastName>"
      },
      "dateFecha91": "<dateFecha91>",
      "clientId92": "<clientId92>",
      "jobTitle93": "<jobTitle93>"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PersonalForm Copy',
      apiUrl: '${PDFapiCallGroup.baseUrl}/form01/upload',
      callType: ApiCallType.POST,
      headers: {
        ...PDFapiCallGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic pdfUrl(dynamic response) => getJsonField(
        response,
        r'''$.link.data.publicUrl''',
      );
  dynamic pdfName(dynamic response) => getJsonField(
        response,
        r'''$.file_name''',
      );
}

/// End PDFapiCall Group Code

class PdfFillPOSTCall {
  static Future<ApiCallResponse> call({
    String? apiKey = '',
    String? title = '',
    String? nationality0 = '',
    String? state1 = '',
    String? street2 = '',
    String? city3 = '',
    String? email4 = '',
    String? salary5 = '',
    String? ocupation6 = '',
  }) {
    final body = '''
{
  "title": "FORM 001 Individual Client Form",
  "fontSize": 10,
  "textColor": "#333333",
  "data": {
    "nationality0": "nationality",
    "state1": "state",
    "street2": "street",
    "city3": "city",
    "email4": "testy@example.com",
    "salary5": "salary",
    "ocupation6": "ocupation",
    "date7": "2023-04-04",
    "firstName8": "first_name",
    "lastName9": "last_name",
    "marriedName10": {
      "firstName": "Robin",
      "mi": "W",
      "lastName": "Smith"
    },
    "dateOfBirth11": "2023-04-04",
    "placeOfBirth12": "place_of_birth",
    "referredBy13": "referred_by",
    "middleName14": {
      "firstName": "Robin",
      "mi": "W",
      "lastName": "Smith"
    },
    "secondLastName15": "second_last_name",
    "idType16": "id_type",
    "idExpirationDate17": "2023-04-04",
    "countryOfIssuance18": "country_of_issuance",
    "jobAddress19": "job_address",
    "typeOfBusiness20": "type_of_business",
    "sourceOfWealth121": "source_of_wealth1",
    "sourceOfWealth222": "source_of_wealth2",
    "apartmentNumber23": "apartment_number",
    "buildingName24": {
      "firstName": "Robin",
      "mi": "W",
      "lastName": "Smith"
    },
    "phoneNumber25": {
      "num": "5554443333",
      "region": "US",
      "baseRegion": "US"
    },
    "mailingAddress26": "mailing_address",
    "cellPhoneNumber27": {
      "num": "5554443333",
      "region": "US",
      "baseRegion": "US"
    },
    "country28": "country",
    "bankingBankName29": {
      "firstName": "Robin",
      "mi": "W",
      "lastName": "Smith"
    },
    "bankAddress30": "bank_address",
    "bankAccountType31": "bank_account_type",
    "bankContactPerson32": "bank_contact_person",
    "bankingBankName233": {
      "firstName": "Robin",
      "mi": "W",
      "lastName": "Smith"
    },
    "bankAddress234": "bank_address2",
    "bankAccountType235": "bank_account_type2",
    "bankContactPerson236": "bank_contact_person2",
    "commercialCompanyName37": "commercial_company_name",
    "companyAddress38": "company_address",
    "relationshipType39": "relationship_type",
    "companyContactPerson40": "company_contact_person",
    "commercialCompanyName241": "commercial_company_name2",
    "companyAddress242": "company_address2",
    "relationshipType243": "relationship_type2",
    "companyContactPerson244": "company_contact_person2",
    "idNumber45": "id_number",
    "single46": true,
    "divorced47": true,
    "female48": true,
    "married49": true,
    "other50": true,
    "male51": true,
    "dependientes52": "dependientes",
    "widowed53": true,
    "highSchool54": true,
    "bachelorsDegree55": true,
    "mastersDegree56": true,
    "phd57": true,
    "placeOfWork58": "place_of_work",
    "noPep59": true,
    "pep60": true,
    "pepRelated61": true,
    "factaGreenCard62": true,
    "fatcaGreenCardNo63": true,
    "fatcaCitizemYes64": true,
    "fatcaCitizemNo65": true,
    "fatcaUsPassportYes66": true,
    "fatcaUsPassportNo67": true,
    "fatcaDoubleNationalityYes68": true,
    "fatcaDoubleNationalityNo69": true,
    "fatcaGivenUpYourUsCitizenshipYes70": true,
    "fatcaGivenUpYourUsCitizenshipNo71": true,
    "namePep72": {
      "firstName": "Robin",
      "mi": "W",
      "lastName": "Smith"
    },
    "relationshioPep73": "relationshio_pep",
    "jobTitlePep74": "job_title_pep",
    "lenghOfTimeAffiliationPep75": "lengh_of_time_affiliation_pep",
    "jobDescriptionPep76": "job_description_pep",
    "entityPep77": "entity_pep",
    "taxResidenceAddress78": "tax_residence_address",
    "taxIdentificationNumber79": "tax_identification_number",
    "taxIdentificationNumber180": true,
    "mentionTheCountry81": "mention_the_country",
    "intermediaryYes82": true,
    "intermediaryNo83": true,
    "ownerName84": {
      "firstName": "Robin",
      "mi": "W",
      "lastName": "Smith"
    },
    "ownerNationality85": "owner_nationality",
    "ownerLastName86": "owner_last_name",
    "ownerIdNumer87": "owner_id_numer",
    "optOutOnlineYes88": true,
    "optOutOnlineNo89": true,
    "nameNombre90": {
      "firstName": "Robin",
      "mi": "W",
      "lastName": "Smith"
    },
    "dateFecha91": "2023-04-04",
    "clientId92": "client_ID",
    "jobTitle93": "job_title"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pdfFillPOST',
      apiUrl: 'https://app.useanvil.com/api/v1/fill/aN0QkXcSWl4GCHI7iVME.pdf',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Basic ${apiKey}',
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate, br',
        'Connection': 'Keep-alive',
        'Content-Length': '<calculated when request is sent>',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
