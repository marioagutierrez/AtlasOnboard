import '/affiliate_referral/main_web_nav_afiliate/main_web_nav_afiliate_widget.dart';
import '/affiliate_referral/main_web_nav_short_afiliate/main_web_nav_short_afiliate_widget.dart';
import '/affiliate_referral/mobile_nav_afiliate/mobile_nav_afiliate_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/reset_password_mail/reset_password_mail_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingAfiliatePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav_shortAfiliate component.
  late MainWebNavShortAfiliateModel mainWebNavShortAfiliateModel;
  // Model for mobileNavAfiliate component.
  late MobileNavAfiliateModel mobileNavAfiliateModel1;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for FirstNameAfiliate widget.
  TextEditingController? firstNameAfiliateController;
  String? Function(BuildContext, String?)? firstNameAfiliateControllerValidator;
  // State field(s) for lastName widget.
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for TextField widget.
  final textFieldKey1 = GlobalKey();
  TextEditingController? textController3;
  String? textFieldSelectedOption1;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Model for mobileNavAfiliate component.
  late MobileNavAfiliateModel mobileNavAfiliateModel2;
  // Model for mainWebNavAfiliate component.
  late MainWebNavAfiliateModel mainWebNavAfiliateModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavShortAfiliateModel =
        createModel(context, () => MainWebNavShortAfiliateModel());
    mobileNavAfiliateModel1 =
        createModel(context, () => MobileNavAfiliateModel());
    mobileNavAfiliateModel2 =
        createModel(context, () => MobileNavAfiliateModel());
    mainWebNavAfiliateModel =
        createModel(context, () => MainWebNavAfiliateModel());
  }

  void dispose() {
    unfocusNode.dispose();
    mainWebNavShortAfiliateModel.dispose();
    mobileNavAfiliateModel1.dispose();
    firstNameAfiliateController?.dispose();
    lastNameController?.dispose();
    emailAddressController?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    mobileNavAfiliateModel2.dispose();
    mainWebNavAfiliateModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
