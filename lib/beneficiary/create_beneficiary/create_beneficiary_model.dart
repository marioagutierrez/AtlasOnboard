import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateBeneficiaryModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  TextEditingController? textController2;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for firstname widget.
  TextEditingController? firstnameController;
  String? Function(BuildContext, String?)? firstnameControllerValidator;
  // State field(s) for secondname widget.
  TextEditingController? secondnameController;
  String? Function(BuildContext, String?)? secondnameControllerValidator;
  // State field(s) for lastname widget.
  TextEditingController? lastnameController;
  String? Function(BuildContext, String?)? lastnameControllerValidator;
  // State field(s) for secondlastname widget.
  TextEditingController? secondlastnameController;
  String? Function(BuildContext, String?)? secondlastnameControllerValidator;
  // State field(s) for spouse_last_name widget.
  TextEditingController? spouseLastNameController;
  String? Function(BuildContext, String?)? spouseLastNameControllerValidator;
  DateTime? datePicked1;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for nationality_Issuing widget.
  String? nationalityIssuingValue;
  FormFieldController<String>? nationalityIssuingValueController;
  // State field(s) for id_number_nationality widget.
  TextEditingController? idNumberNationalityController;
  String? Function(BuildContext, String?)?
      idNumberNationalityControllerValidator;
  DateTime? datePicked2;
  // State field(s) for passport_Issuing widget.
  String? passportIssuingValue;
  FormFieldController<String>? passportIssuingValueController;
  // State field(s) for id_number_passport widget.
  TextEditingController? idNumberPassportController;
  String? Function(BuildContext, String?)? idNumberPassportControllerValidator;
  DateTime? datePicked3;
  // State field(s) for marital_status widget.
  String? maritalStatusValue;
  FormFieldController<String>? maritalStatusValueController;
  // State field(s) for employ_status widget.
  String? employStatusValue;
  FormFieldController<String>? employStatusValueController;
  // State field(s) for name_company widget.
  TextEditingController? nameCompanyController;
  String? Function(BuildContext, String?)? nameCompanyControllerValidator;
  // State field(s) for ocupation widget.
  TextEditingController? ocupationController;
  String? Function(BuildContext, String?)? ocupationControllerValidator;
  // State field(s) for job_address_one widget.
  TextEditingController? jobAddressOneController;
  String? Function(BuildContext, String?)? jobAddressOneControllerValidator;
  // State field(s) for job_address_two widget.
  TextEditingController? jobAddressTwoController;
  String? Function(BuildContext, String?)? jobAddressTwoControllerValidator;
  // State field(s) for telephone_company widget.
  TextEditingController? telephoneCompanyController;
  String? Function(BuildContext, String?)? telephoneCompanyControllerValidator;
  // State field(s) for salary_year widget.
  TextEditingController? salaryYearController;
  String? Function(BuildContext, String?)? salaryYearControllerValidator;
  // State field(s) for position widget.
  TextEditingController? positionController;
  String? Function(BuildContext, String?)? positionControllerValidator;
  // State field(s) for type_business widget.
  String? typeBusinessValue;
  FormFieldController<String>? typeBusinessValueController;
  // State field(s) for source_networth widget.
  TextEditingController? sourceNetworthController;
  String? Function(BuildContext, String?)? sourceNetworthControllerValidator;
  // State field(s) for country widget.
  String? countryValue;
  FormFieldController<String>? countryValueController;
  // State field(s) for state widget.
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  // State field(s) for District widget.
  TextEditingController? districtController;
  String? Function(BuildContext, String?)? districtControllerValidator;
  // State field(s) for city widget.
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  // State field(s) for street widget.
  TextEditingController? streetController1;
  String? Function(BuildContext, String?)? streetController1Validator;
  // State field(s) for building widget.
  TextEditingController? buildingController;
  String? Function(BuildContext, String?)? buildingControllerValidator;
  // State field(s) for house_apartment widget.
  TextEditingController? houseApartmentController;
  String? Function(BuildContext, String?)? houseApartmentControllerValidator;
  // State field(s) for zipcode widget.
  TextEditingController? zipcodeController;
  String? Function(BuildContext, String?)? zipcodeControllerValidator;
  // State field(s) for dependents widget.
  TextEditingController? dependentsController;
  String? Function(BuildContext, String?)? dependentsControllerValidator;
  // State field(s) for educational_level widget.
  String? educationalLevelValue;
  FormFieldController<String>? educationalLevelValueController;
  // State field(s) for street widget.
  TextEditingController? streetController2;
  String? Function(BuildContext, String?)? streetController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    emailAddressController?.dispose();
    textController3?.dispose();
    firstnameController?.dispose();
    secondnameController?.dispose();
    lastnameController?.dispose();
    secondlastnameController?.dispose();
    spouseLastNameController?.dispose();
    idNumberNationalityController?.dispose();
    idNumberPassportController?.dispose();
    nameCompanyController?.dispose();
    ocupationController?.dispose();
    jobAddressOneController?.dispose();
    jobAddressTwoController?.dispose();
    telephoneCompanyController?.dispose();
    salaryYearController?.dispose();
    positionController?.dispose();
    sourceNetworthController?.dispose();
    stateController?.dispose();
    districtController?.dispose();
    cityController?.dispose();
    streetController1?.dispose();
    buildingController?.dispose();
    houseApartmentController?.dispose();
    zipcodeController?.dispose();
    dependentsController?.dispose();
    streetController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
