import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditCommreferenceModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for street widget.
  TextEditingController? streetController1;
  String? Function(BuildContext, String?)? streetController1Validator;
  // State field(s) for street widget.
  TextEditingController? streetController2;
  String? Function(BuildContext, String?)? streetController2Validator;
  // State field(s) for street widget.
  TextEditingController? streetController3;
  String? Function(BuildContext, String?)? streetController3Validator;
  // State field(s) for street widget.
  TextEditingController? streetController4;
  String? Function(BuildContext, String?)? streetController4Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    streetController1?.dispose();
    streetController2?.dispose();
    streetController3?.dispose();
    streetController4?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
