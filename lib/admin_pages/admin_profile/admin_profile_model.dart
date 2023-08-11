import '/admin_pages/main_web_nav_admin/main_web_nav_admin_widget.dart';
import '/admin_pages/main_web_nav_short_admin/main_web_nav_short_admin_widget.dart';
import '/admin_pages/mobile_nav_admin/mobile_nav_admin_widget.dart';
import '/affiliate_referral/mobile_nav_afiliate/mobile_nav_afiliate_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/reset_password_mail/reset_password_mail_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav_shortAdmin component.
  late MainWebNavShortAdminModel mainWebNavShortAdminModel;
  // Model for mobileNavAfiliate component.
  late MobileNavAfiliateModel mobileNavAfiliateModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for FirstNameAdmin widget.
  TextEditingController? firstNameAdminController;
  String? Function(BuildContext, String?)? firstNameAdminControllerValidator;
  // State field(s) for emailAddressAdmin widget.
  TextEditingController? emailAddressAdminController;
  String? Function(BuildContext, String?)? emailAddressAdminControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for mobileNavAdmin component.
  late MobileNavAdminModel mobileNavAdminModel;
  // Model for mainWebNavAdmin component.
  late MainWebNavAdminModel mainWebNavAdminModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavShortAdminModel =
        createModel(context, () => MainWebNavShortAdminModel());
    mobileNavAfiliateModel =
        createModel(context, () => MobileNavAfiliateModel());
    mobileNavAdminModel = createModel(context, () => MobileNavAdminModel());
    mainWebNavAdminModel = createModel(context, () => MainWebNavAdminModel());
  }

  void dispose() {
    unfocusNode.dispose();
    mainWebNavShortAdminModel.dispose();
    mobileNavAfiliateModel.dispose();
    firstNameAdminController?.dispose();
    emailAddressAdminController?.dispose();
    textController2?.dispose();
    mobileNavAdminModel.dispose();
    mainWebNavAdminModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
