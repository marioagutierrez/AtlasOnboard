import '/admin_pages/main_web_nav_admin/main_web_nav_admin_widget.dart';
import '/admin_pages/main_web_nav_short_admin/main_web_nav_short_admin_widget.dart';
import '/admin_pages/mobile_nav_admin/mobile_nav_admin_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApplicationListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav_shortAdmin component.
  late MainWebNavShortAdminModel mainWebNavShortAdminModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for mobileNavAdmin component.
  late MobileNavAdminModel mobileNavAdminModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for mainWebNavAdmin component.
  late MainWebNavAdminModel mainWebNavAdminModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavShortAdminModel =
        createModel(context, () => MainWebNavShortAdminModel());
    mobileNavAdminModel = createModel(context, () => MobileNavAdminModel());
    mainWebNavAdminModel = createModel(context, () => MainWebNavAdminModel());
  }

  void dispose() {
    unfocusNode.dispose();
    mainWebNavShortAdminModel.dispose();
    tabBarController?.dispose();
    mobileNavAdminModel.dispose();
    textController?.dispose();
    mainWebNavAdminModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
