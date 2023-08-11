import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/form_account/create_account_step2/create_account_step2_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccountModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for description widget.
  TextEditingController? descriptionController1;
  String? Function(BuildContext, String?)? descriptionController1Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController2;
  String? Function(BuildContext, String?)? descriptionController2Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController3;
  String? Function(BuildContext, String?)? descriptionController3Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    descriptionController1?.dispose();
    descriptionController2?.dispose();
    descriptionController3?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonValueController?.value;
}
