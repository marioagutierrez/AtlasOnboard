import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateBoardMembersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for employ_status widget.
  String? employStatusValue1;
  FormFieldController<String>? employStatusValueController1;
  // State field(s) for street widget.
  TextEditingController? streetController;
  String? Function(BuildContext, String?)? streetControllerValidator;
  // State field(s) for employ_status widget.
  String? employStatusValue2;
  FormFieldController<String>? employStatusValueController2;
  // State field(s) for IDNo widget.
  TextEditingController? iDNoController;
  String? Function(BuildContext, String?)? iDNoControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for employ_status widget.
  String? employStatusValue3;
  FormFieldController<String>? employStatusValueController3;
  // State field(s) for employ_status widget.
  String? employStatusValue4;
  FormFieldController<String>? employStatusValueController4;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    streetController?.dispose();
    iDNoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
