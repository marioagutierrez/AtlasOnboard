import '/admin_pages/main_web_nav_admin/main_web_nav_admin_widget.dart';
import '/admin_pages/main_web_nav_short_admin/main_web_nav_short_admin_widget.dart';
import '/admin_pages/mobile_nav_admin/mobile_nav_admin_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AdminDashboardModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav_shortAdmin component.
  late MainWebNavShortAdminModel mainWebNavShortAdminModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for mobileNavAdmin component.
  late MobileNavAdminModel mobileNavAdminModel;
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
    textController?.dispose();
    mobileNavAdminModel.dispose();
    mainWebNavAdminModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
