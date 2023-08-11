import '/affiliate_referral/main_web_nav_afiliate/main_web_nav_afiliate_widget.dart';
import '/affiliate_referral/main_web_nav_short_afiliate/main_web_nav_short_afiliate_widget.dart';
import '/affiliate_referral/mobile_nav_afiliate/mobile_nav_afiliate_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfilereferralsAfiliatePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav_shortAfiliate component.
  late MainWebNavShortAfiliateModel mainWebNavShortAfiliateModel;
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
    mobileNavAfiliateModel.dispose();
    textController?.dispose();
    mainWebNavAfiliateModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
