import '/affiliate_referral/main_web_nav_afiliate/main_web_nav_afiliate_widget.dart';
import '/affiliate_referral/main_web_nav_short_afiliate/main_web_nav_short_afiliate_widget.dart';
import '/affiliate_referral/mobile_nav_afiliate/mobile_nav_afiliate_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReferralsAfiliatePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav_shortAfiliate component.
  late MainWebNavShortAfiliateModel mainWebNavShortAfiliateModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for mobileNavAfiliate component.
  late MobileNavAfiliateModel mobileNavAfiliateModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for mainWebNavAfiliate component.
  late MainWebNavAfiliateModel mainWebNavAfiliateModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    mainWebNavShortAfiliateModel =
        createModel(context, () => MainWebNavShortAfiliateModel());
    mobileNavAfiliateModel =
        createModel(context, () => MobileNavAfiliateModel());
    mainWebNavAfiliateModel =
        createModel(context, () => MainWebNavAfiliateModel());
  }

  void dispose() {
    unfocusNode.dispose();
    mainWebNavShortAfiliateModel.dispose();
    tabBarController?.dispose();
    mobileNavAfiliateModel.dispose();
    textController?.dispose();
    mainWebNavAfiliateModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
