import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/supabase/supabase.dart';
import '/beneficiary/beneficiary_type/beneficiary_type_widget.dart';
import '/commercial_bank/create_board_members/create_board_members_widget.dart';
import '/commercial_bank/edit_board_members/edit_board_members_widget.dart';
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
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProfileCommercialModel extends FlutterFlowModel {
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
  TextEditingController? firstnameController1;
  String? Function(BuildContext, String?)? firstnameController1Validator;
  // State field(s) for lastname widget.
  TextEditingController? lastnameController1;
  String? Function(BuildContext, String?)? lastnameController1Validator;
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
  DateTime? datePicked2;
  // State field(s) for type_business widget.
  String? typeBusinessValue1;
  FormFieldController<String>? typeBusinessValueController1;
  // State field(s) for spouse_last_name widget.
  TextEditingController? spouseLastNameController2;
  String? Function(BuildContext, String?)? spouseLastNameController2Validator;
  // State field(s) for gender widget.
  String? genderValue2;
  FormFieldController<String>? genderValueController2;
  DateTime? datePicked3;
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
  // State field(s) for country widget.
  String? countryValue1;
  FormFieldController<String>? countryValueController1;
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
  // State field(s) for mailingAddress widget.
  TextEditingController? mailingAddressController1;
  String? Function(BuildContext, String?)? mailingAddressController1Validator;
  // State field(s) for firstname widget.
  TextEditingController? firstnameController2;
  String? Function(BuildContext, String?)? firstnameController2Validator;
  // State field(s) for lastname widget.
  TextEditingController? lastnameController2;
  String? Function(BuildContext, String?)? lastnameController2Validator;
  // State field(s) for spouse_last_name widget.
  TextEditingController? spouseLastNameController3;
  String? Function(BuildContext, String?)? spouseLastNameController3Validator;
  DateTime? datePicked4;
  // State field(s) for gender widget.
  String? genderValue3;
  FormFieldController<String>? genderValueController3;
  // State field(s) for nationality_Issuing widget.
  String? nationalityIssuingValue2;
  FormFieldController<String>? nationalityIssuingValueController2;
  DateTime? datePicked5;
  // State field(s) for type_business widget.
  String? typeBusinessValue2;
  FormFieldController<String>? typeBusinessValueController2;
  // State field(s) for spouse_last_name widget.
  TextEditingController? spouseLastNameController4;
  String? Function(BuildContext, String?)? spouseLastNameController4Validator;
  // State field(s) for gender widget.
  String? genderValue4;
  FormFieldController<String>? genderValueController4;
  DateTime? datePicked6;
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
  // State field(s) for country widget.
  String? countryValue2;
  FormFieldController<String>? countryValueController2;
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
  // State field(s) for mailingAddress widget.
  TextEditingController? mailingAddressController2;
  String? Function(BuildContext, String?)? mailingAddressController2Validator;
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

  bool isDataUploading6 = false;
  FFUploadedFile uploadedLocalFile6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl6 = '';

  bool isDataUploading7 = false;
  FFUploadedFile uploadedLocalFile7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl7 = '';

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
    firstnameController1?.dispose();
    lastnameController1?.dispose();
    spouseLastNameController1?.dispose();
    spouseLastNameController2?.dispose();
    nameCompanyController1?.dispose();
    ocupationController1?.dispose();
    jobAddressOneController1?.dispose();
    jobAddressTwoController1?.dispose();
    telephoneCompanyController1?.dispose();
    salaryYearController1?.dispose();
    stateController1?.dispose();
    districtController1?.dispose();
    cityController1?.dispose();
    streetController1?.dispose();
    buildingController1?.dispose();
    houseApartmentController1?.dispose();
    mailingAddressController1?.dispose();
    firstnameController2?.dispose();
    lastnameController2?.dispose();
    spouseLastNameController3?.dispose();
    spouseLastNameController4?.dispose();
    nameCompanyController2?.dispose();
    ocupationController2?.dispose();
    jobAddressOneController2?.dispose();
    jobAddressTwoController2?.dispose();
    telephoneCompanyController2?.dispose();
    salaryYearController2?.dispose();
    stateController2?.dispose();
    districtController2?.dispose();
    cityController2?.dispose();
    streetController2?.dispose();
    buildingController2?.dispose();
    houseApartmentController2?.dispose();
    mailingAddressController2?.dispose();
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
}
