import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/supabase/supabase.dart';
import '/beneficiary/beneficiary_crate/beneficiary_crate_widget.dart';
import '/components/bank_profile_incomplete/bank_profile_incomplete_widget.dart';
import '/components/empty_list/empty_list_widget.dart';
import '/components/main_web_nav/main_web_nav_widget.dart';
import '/components/main_web_nav_short/main_web_nav_short_widget.dart';
import '/components/mobile_nav/mobile_nav_widget.dart';
import '/components/reset_password_mail/reset_password_mail_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/referencies/bank_reference/bank_reference_widget.dart';
import '/referencies/commercial_reference/commercial_reference_widget.dart';
import '/referencies/more_comm_referencia/more_comm_referencia_widget.dart';
import '/referencies/more_referencia/more_referencia_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProfilePersonalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for mainWebNav_short component.
  late MainWebNavShortModel mainWebNavShortModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  TextEditingController? textController1;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for firstname widget.
  TextEditingController? firstnameController;
  String? Function(BuildContext, String?)? firstnameControllerValidator;
  // State field(s) for secondname widget.
  TextEditingController? secondnameController1;
  String? Function(BuildContext, String?)? secondnameController1Validator;
  // State field(s) for lastname widget.
  TextEditingController? lastnameController;
  String? Function(BuildContext, String?)? lastnameControllerValidator;
  // State field(s) for secondlastname widget.
  TextEditingController? secondlastnameController1;
  String? Function(BuildContext, String?)? secondlastnameController1Validator;
  // State field(s) for spouse_last_name widget.
  TextEditingController? spouseLastNameController1;
  String? Function(BuildContext, String?)? spouseLastNameController1Validator;
  DateTime? datePicked1;
  // State field(s) for gender widget.
  String? genderValue1;
  FormFieldController<String>? genderValueController1;
  // State field(s) for nationality_Issuing widget.
  String? nationalityIssuingValue1;
  FormFieldController<String>? nationalityIssuingValueController1;
  // State field(s) for id_number_nationality widget.
  TextEditingController? idNumberNationalityController1;
  String? Function(BuildContext, String?)?
      idNumberNationalityController1Validator;
  DateTime? datePicked2;
  // State field(s) for passport_Issuing widget.
  String? passportIssuingValue1;
  FormFieldController<String>? passportIssuingValueController1;
  // State field(s) for id_number_passport widget.
  TextEditingController? idNumberPassportController1;
  String? Function(BuildContext, String?)? idNumberPassportController1Validator;
  DateTime? datePicked3;
  // State field(s) for marital_status widget.
  String? maritalStatusValue1;
  FormFieldController<String>? maritalStatusValueController1;
  // State field(s) for employ_status widget.
  String? employStatusValue1;
  FormFieldController<String>? employStatusValueController1;
  // State field(s) for name_company widget.
  TextEditingController? nameCompanyController1;
  String? Function(BuildContext, String?)? nameCompanyController1Validator;
  // State field(s) for ocupation widget.
  TextEditingController? ocupationController1;
  String? Function(BuildContext, String?)? ocupationController1Validator;
  // State field(s) for job_address_one widget.
  TextEditingController? jobAddressOneController1;
  String? Function(BuildContext, String?)? jobAddressOneController1Validator;
  // State field(s) for job_address_two widget.
  TextEditingController? jobAddressTwoController1;
  String? Function(BuildContext, String?)? jobAddressTwoController1Validator;
  // State field(s) for telephone_company widget.
  TextEditingController? telephoneCompanyController1;
  String? Function(BuildContext, String?)? telephoneCompanyController1Validator;
  // State field(s) for salary_year widget.
  TextEditingController? salaryYearController1;
  String? Function(BuildContext, String?)? salaryYearController1Validator;
  // State field(s) for position widget.
  TextEditingController? positionController1;
  String? Function(BuildContext, String?)? positionController1Validator;
  // State field(s) for type_business widget.
  String? typeBusinessValue1;
  FormFieldController<String>? typeBusinessValueController1;
  // State field(s) for source_networth widget.
  TextEditingController? sourceNetworthController1;
  String? Function(BuildContext, String?)? sourceNetworthController1Validator;
  // State field(s) for country widget.
  String? countryValue;
  FormFieldController<String>? countryValueController;
  // State field(s) for state widget.
  TextEditingController? stateController1;
  String? Function(BuildContext, String?)? stateController1Validator;
  // State field(s) for District widget.
  TextEditingController? districtController1;
  String? Function(BuildContext, String?)? districtController1Validator;
  // State field(s) for city widget.
  TextEditingController? cityController1;
  String? Function(BuildContext, String?)? cityController1Validator;
  // State field(s) for street widget.
  TextEditingController? streetController1;
  String? Function(BuildContext, String?)? streetController1Validator;
  // State field(s) for building widget.
  TextEditingController? buildingController1;
  String? Function(BuildContext, String?)? buildingController1Validator;
  // State field(s) for house_apartment widget.
  TextEditingController? houseApartmentController1;
  String? Function(BuildContext, String?)? houseApartmentController1Validator;
  // State field(s) for zipcode widget.
  TextEditingController? zipcodeController1;
  String? Function(BuildContext, String?)? zipcodeController1Validator;
  // State field(s) for dependents widget.
  TextEditingController? dependentsController1;
  String? Function(BuildContext, String?)? dependentsController1Validator;
  // State field(s) for educational_level widget.
  String? educationalLevelValue1;
  FormFieldController<String>? educationalLevelValueController1;
  // State field(s) for firstname_true widget.
  TextEditingController? firstnameTrueController;
  String? Function(BuildContext, String?)? firstnameTrueControllerValidator;
  // State field(s) for secondname widget.
  TextEditingController? secondnameController2;
  String? Function(BuildContext, String?)? secondnameController2Validator;
  // State field(s) for lastname_true widget.
  TextEditingController? lastnameTrueController;
  String? Function(BuildContext, String?)? lastnameTrueControllerValidator;
  // State field(s) for secondlastname widget.
  TextEditingController? secondlastnameController2;
  String? Function(BuildContext, String?)? secondlastnameController2Validator;
  // State field(s) for spouse_last_name widget.
  TextEditingController? spouseLastNameController2;
  String? Function(BuildContext, String?)? spouseLastNameController2Validator;
  DateTime? datePicked4;
  // State field(s) for gender widget.
  String? genderValue2;
  FormFieldController<String>? genderValueController2;
  // State field(s) for nationality_Issuing widget.
  String? nationalityIssuingValue2;
  FormFieldController<String>? nationalityIssuingValueController2;
  // State field(s) for id_number_nationality widget.
  TextEditingController? idNumberNationalityController2;
  String? Function(BuildContext, String?)?
      idNumberNationalityController2Validator;
  DateTime? datePicked5;
  Completer<List<ProfileRecordAtlasRow>>? requestCompleter;
  // State field(s) for passport_Issuing widget.
  String? passportIssuingValue2;
  FormFieldController<String>? passportIssuingValueController2;
  // State field(s) for id_number_passport widget.
  TextEditingController? idNumberPassportController2;
  String? Function(BuildContext, String?)? idNumberPassportController2Validator;
  DateTime? datePicked6;
  // State field(s) for marital_status widget.
  String? maritalStatusValue2;
  FormFieldController<String>? maritalStatusValueController2;
  // State field(s) for employ_status widget.
  String? employStatusValue2;
  FormFieldController<String>? employStatusValueController2;
  // State field(s) for name_company widget.
  TextEditingController? nameCompanyController2;
  String? Function(BuildContext, String?)? nameCompanyController2Validator;
  // State field(s) for ocupation widget.
  TextEditingController? ocupationController2;
  String? Function(BuildContext, String?)? ocupationController2Validator;
  // State field(s) for job_address_one widget.
  TextEditingController? jobAddressOneController2;
  String? Function(BuildContext, String?)? jobAddressOneController2Validator;
  // State field(s) for job_address_two widget.
  TextEditingController? jobAddressTwoController2;
  String? Function(BuildContext, String?)? jobAddressTwoController2Validator;
  // State field(s) for telephone_company widget.
  TextEditingController? telephoneCompanyController2;
  String? Function(BuildContext, String?)? telephoneCompanyController2Validator;
  // State field(s) for salary_year widget.
  TextEditingController? salaryYearController2;
  String? Function(BuildContext, String?)? salaryYearController2Validator;
  // State field(s) for position widget.
  TextEditingController? positionController2;
  String? Function(BuildContext, String?)? positionController2Validator;
  // State field(s) for type_business widget.
  String? typeBusinessValue2;
  FormFieldController<String>? typeBusinessValueController2;
  // State field(s) for source_networth widget.
  TextEditingController? sourceNetworthController2;
  String? Function(BuildContext, String?)? sourceNetworthController2Validator;
  // State field(s) for Country_true widget.
  String? countryTrueValue;
  FormFieldController<String>? countryTrueValueController;
  // State field(s) for state widget.
  TextEditingController? stateController2;
  String? Function(BuildContext, String?)? stateController2Validator;
  // State field(s) for District widget.
  TextEditingController? districtController2;
  String? Function(BuildContext, String?)? districtController2Validator;
  // State field(s) for city widget.
  TextEditingController? cityController2;
  String? Function(BuildContext, String?)? cityController2Validator;
  // State field(s) for street widget.
  TextEditingController? streetController2;
  String? Function(BuildContext, String?)? streetController2Validator;
  // State field(s) for building widget.
  TextEditingController? buildingController2;
  String? Function(BuildContext, String?)? buildingController2Validator;
  // State field(s) for house_apartment widget.
  TextEditingController? houseApartmentController2;
  String? Function(BuildContext, String?)? houseApartmentController2Validator;
  // State field(s) for zipcode widget.
  TextEditingController? zipcodeController2;
  String? Function(BuildContext, String?)? zipcodeController2Validator;
  // State field(s) for dependents widget.
  TextEditingController? dependentsController2;
  String? Function(BuildContext, String?)? dependentsController2Validator;
  // State field(s) for educational_level widget.
  String? educationalLevelValue2;
  FormFieldController<String>? educationalLevelValueController2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // State field(s) for street widget.
  TextEditingController? streetController3;
  String? Function(BuildContext, String?)? streetController3Validator;
  // State field(s) for IDNo widget.
  TextEditingController? iDNoController;
  String? Function(BuildContext, String?)? iDNoControllerValidator;
  DateTime? datePicked7;
  // State field(s) for street widget.
  TextEditingController? streetController4;
  String? Function(BuildContext, String?)? streetController4Validator;
  // State field(s) for street widget.
  TextEditingController? streetController5;
  String? Function(BuildContext, String?)? streetController5Validator;
  // State field(s) for street widget.
  TextEditingController? streetController6;
  String? Function(BuildContext, String?)? streetController6Validator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl5 = '';

  // Model for mobileNav component.
  late MobileNavModel mobileNavModel;
  // Model for mainWebNav component.
  late MainWebNavModel mainWebNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavShortModel = createModel(context, () => MainWebNavShortModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
    mainWebNavModel = createModel(context, () => MainWebNavModel());
  }

  void dispose() {
    unfocusNode.dispose();
    mainWebNavShortModel.dispose();
    emailAddressController?.dispose();
    textController2?.dispose();
    firstnameController?.dispose();
    secondnameController1?.dispose();
    lastnameController?.dispose();
    secondlastnameController1?.dispose();
    spouseLastNameController1?.dispose();
    idNumberNationalityController1?.dispose();
    idNumberPassportController1?.dispose();
    nameCompanyController1?.dispose();
    ocupationController1?.dispose();
    jobAddressOneController1?.dispose();
    jobAddressTwoController1?.dispose();
    telephoneCompanyController1?.dispose();
    salaryYearController1?.dispose();
    positionController1?.dispose();
    sourceNetworthController1?.dispose();
    stateController1?.dispose();
    districtController1?.dispose();
    cityController1?.dispose();
    streetController1?.dispose();
    buildingController1?.dispose();
    houseApartmentController1?.dispose();
    zipcodeController1?.dispose();
    dependentsController1?.dispose();
    firstnameTrueController?.dispose();
    secondnameController2?.dispose();
    lastnameTrueController?.dispose();
    secondlastnameController2?.dispose();
    spouseLastNameController2?.dispose();
    idNumberNationalityController2?.dispose();
    idNumberPassportController2?.dispose();
    nameCompanyController2?.dispose();
    ocupationController2?.dispose();
    jobAddressOneController2?.dispose();
    jobAddressTwoController2?.dispose();
    telephoneCompanyController2?.dispose();
    salaryYearController2?.dispose();
    positionController2?.dispose();
    sourceNetworthController2?.dispose();
    stateController2?.dispose();
    districtController2?.dispose();
    cityController2?.dispose();
    streetController2?.dispose();
    buildingController2?.dispose();
    houseApartmentController2?.dispose();
    zipcodeController2?.dispose();
    dependentsController2?.dispose();
    streetController3?.dispose();
    iDNoController?.dispose();
    streetController4?.dispose();
    streetController5?.dispose();
    streetController6?.dispose();
    mobileNavModel.dispose();
    mainWebNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
