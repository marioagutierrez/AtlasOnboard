import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/components/bank_profile_incomplete/bank_profile_incomplete_widget.dart';
import '/components/dev_notice/dev_notice_widget.dart';
import '/components/main_web_nav/main_web_nav_widget.dart';
import '/components/main_web_nav_short/main_web_nav_short_widget.dart';
import '/components/mobile_nav/mobile_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/form_account/create_account/create_account_widget.dart';
import 'package:badges/badges.dart' as badges;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomePersonalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for mainWebNav_short component.
  late MainWebNavShortModel mainWebNavShortModel;
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
    mobileNavModel.dispose();
    mainWebNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
