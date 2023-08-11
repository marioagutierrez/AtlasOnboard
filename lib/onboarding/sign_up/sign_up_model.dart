import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for referralCode widget.
  TextEditingController? referralCodeController;
  String? Function(BuildContext, String?)? referralCodeControllerValidator;
  // State field(s) for legalName widget.
  TextEditingController? legalNameController;
  String? Function(BuildContext, String?)? legalNameControllerValidator;
  // State field(s) for CommercialName widget.
  TextEditingController? commercialNameController;
  String? Function(BuildContext, String?)? commercialNameControllerValidator;
  // State field(s) for ruc widget.
  TextEditingController? rucController;
  String? Function(BuildContext, String?)? rucControllerValidator;
  // State field(s) for emailAddressCorp widget.
  TextEditingController? emailAddressCorpController;
  String? Function(BuildContext, String?)? emailAddressCorpControllerValidator;
  // State field(s) for country_corp widget.
  final countryCorpKey = GlobalKey();
  TextEditingController? countryCorpController;
  String? countryCorpSelectedOption;
  String? Function(BuildContext, String?)? countryCorpControllerValidator;
  // State field(s) for phone_corp widget.
  TextEditingController? phoneCorpController;
  String? Function(BuildContext, String?)? phoneCorpControllerValidator;
  // State field(s) for passwordCorp widget.
  TextEditingController? passwordCorpController;
  late bool passwordCorpVisibility;
  String? Function(BuildContext, String?)? passwordCorpControllerValidator;
  // State field(s) for confirmpasswoCorp widget.
  TextEditingController? confirmpasswoCorpController;
  late bool confirmpasswoCorpVisibility;
  String? Function(BuildContext, String?)? confirmpasswoCorpControllerValidator;
  // State field(s) for referralCodePer widget.
  TextEditingController? referralCodePerController;
  String? Function(BuildContext, String?)? referralCodePerControllerValidator;
  // State field(s) for first_name_personal widget.
  TextEditingController? firstNamePersonalController1;
  String? Function(BuildContext, String?)?
      firstNamePersonalController1Validator;
  // State field(s) for first_name_personal widget.
  TextEditingController? firstNamePersonalController2;
  String? Function(BuildContext, String?)?
      firstNamePersonalController2Validator;
  // State field(s) for first_name_personal widget.
  TextEditingController? firstNamePersonalController3;
  String? Function(BuildContext, String?)?
      firstNamePersonalController3Validator;
  // State field(s) for emailAddress_personal widget.
  TextEditingController? emailAddressPersonalController;
  String? Function(BuildContext, String?)?
      emailAddressPersonalControllerValidator;
  // State field(s) for country_personal widget.
  final countryPersonalKey = GlobalKey();
  TextEditingController? countryPersonalController;
  String? countryPersonalSelectedOption;
  String? Function(BuildContext, String?)? countryPersonalControllerValidator;
  // State field(s) for phone_personal widget.
  TextEditingController? phonePersonalController;
  String? Function(BuildContext, String?)? phonePersonalControllerValidator;
  // State field(s) for password_persona widget.
  TextEditingController? passwordPersonaController;
  late bool passwordPersonaVisibility;
  String? Function(BuildContext, String?)? passwordPersonaControllerValidator;
  // State field(s) for confirmpassworPersonal widget.
  TextEditingController? confirmpassworPersonalController;
  late bool confirmpassworPersonalVisibility;
  String? Function(BuildContext, String?)?
      confirmpassworPersonalControllerValidator;
  // State field(s) for first_name_afiliate widget.
  TextEditingController? firstNameAfiliateController;
  String? Function(BuildContext, String?)? firstNameAfiliateControllerValidator;
  // State field(s) for emailAddress_afiliate widget.
  TextEditingController? emailAddressAfiliateController;
  String? Function(BuildContext, String?)?
      emailAddressAfiliateControllerValidator;
  // State field(s) for pais_afiliate widget.
  final paisAfiliateKey = GlobalKey();
  TextEditingController? paisAfiliateController;
  String? paisAfiliateSelectedOption;
  String? Function(BuildContext, String?)? paisAfiliateControllerValidator;
  // State field(s) for phone_afiliate widget.
  TextEditingController? phoneAfiliateController;
  String? Function(BuildContext, String?)? phoneAfiliateControllerValidator;
  // State field(s) for password_afiliate widget.
  TextEditingController? passwordAfiliateController;
  late bool passwordAfiliateVisibility;
  String? Function(BuildContext, String?)? passwordAfiliateControllerValidator;
  // State field(s) for confirmpasswor_afiliate widget.
  TextEditingController? confirmpassworAfiliateController;
  late bool confirmpassworAfiliateVisibility;
  String? Function(BuildContext, String?)?
      confirmpassworAfiliateControllerValidator;
  // State field(s) for displayName widget.
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;
  // State field(s) for emailAddress_Login widget.
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for password_Login widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordCorpVisibility = false;
    confirmpasswoCorpVisibility = false;
    passwordPersonaVisibility = false;
    confirmpassworPersonalVisibility = false;
    passwordAfiliateVisibility = false;
    confirmpassworAfiliateVisibility = false;
    passwordLoginVisibility = false;
  }

  void dispose() {
    tabBarController?.dispose();
    referralCodeController?.dispose();
    legalNameController?.dispose();
    commercialNameController?.dispose();
    rucController?.dispose();
    emailAddressCorpController?.dispose();
    phoneCorpController?.dispose();
    passwordCorpController?.dispose();
    confirmpasswoCorpController?.dispose();
    referralCodePerController?.dispose();
    firstNamePersonalController1?.dispose();
    firstNamePersonalController2?.dispose();
    firstNamePersonalController3?.dispose();
    emailAddressPersonalController?.dispose();
    phonePersonalController?.dispose();
    passwordPersonaController?.dispose();
    confirmpassworPersonalController?.dispose();
    firstNameAfiliateController?.dispose();
    emailAddressAfiliateController?.dispose();
    phoneAfiliateController?.dispose();
    passwordAfiliateController?.dispose();
    confirmpassworAfiliateController?.dispose();
    displayNameController?.dispose();
    emailAddressLoginController?.dispose();
    passwordLoginController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
