import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BeneficiaryCrateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for street widget.
  TextEditingController? streetController1;
  String? Function(BuildContext, String?)? streetController1Validator;
  DateTime? datePicked;
  // State field(s) for IDNo widget.
  TextEditingController? iDNoController;
  String? Function(BuildContext, String?)? iDNoControllerValidator;
  // State field(s) for street widget.
  TextEditingController? streetController2;
  String? Function(BuildContext, String?)? streetController2Validator;
  // State field(s) for street widget.
  TextEditingController? streetController3;
  String? Function(BuildContext, String?)? streetController3Validator;
  // State field(s) for street widget.
  TextEditingController? streetController4;
  String? Function(BuildContext, String?)? streetController4Validator;
  // State field(s) for street widget.
  TextEditingController? streetController5;
  String? Function(BuildContext, String?)? streetController5Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    streetController1?.dispose();
    iDNoController?.dispose();
    streetController2?.dispose();
    streetController3?.dispose();
    streetController4?.dispose();
    streetController5?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
