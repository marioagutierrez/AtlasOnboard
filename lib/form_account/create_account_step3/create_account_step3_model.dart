import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/form_account/contractofbanking/contractofbanking_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccountStep3Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for description widget.
  TextEditingController? descriptionController1;
  String? Function(BuildContext, String?)? descriptionController1Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController2;
  String? Function(BuildContext, String?)? descriptionController2Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController3;
  String? Function(BuildContext, String?)? descriptionController3Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController4;
  String? Function(BuildContext, String?)? descriptionController4Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController5;
  String? Function(BuildContext, String?)? descriptionController5Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController6;
  String? Function(BuildContext, String?)? descriptionController6Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController7;
  String? Function(BuildContext, String?)? descriptionController7Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController8;
  String? Function(BuildContext, String?)? descriptionController8Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController9;
  String? Function(BuildContext, String?)? descriptionController9Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController10;
  String? Function(BuildContext, String?)? descriptionController10Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController11;
  String? Function(BuildContext, String?)? descriptionController11Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController12;
  String? Function(BuildContext, String?)? descriptionController12Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController13;
  String? Function(BuildContext, String?)? descriptionController13Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for description widget.
  TextEditingController? descriptionController14;
  String? Function(BuildContext, String?)? descriptionController14Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController15;
  String? Function(BuildContext, String?)? descriptionController15Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for description widget.
  TextEditingController? descriptionController16;
  String? Function(BuildContext, String?)? descriptionController16Validator;
  // State field(s) for description widget.
  TextEditingController? descriptionController17;
  String? Function(BuildContext, String?)? descriptionController17Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for description widget.
  TextEditingController? descriptionController18;
  String? Function(BuildContext, String?)? descriptionController18Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    descriptionController1?.dispose();
    descriptionController2?.dispose();
    descriptionController3?.dispose();
    descriptionController4?.dispose();
    descriptionController5?.dispose();
    descriptionController6?.dispose();
    descriptionController7?.dispose();
    descriptionController8?.dispose();
    descriptionController9?.dispose();
    descriptionController10?.dispose();
    descriptionController11?.dispose();
    descriptionController12?.dispose();
    descriptionController13?.dispose();
    descriptionController14?.dispose();
    descriptionController15?.dispose();
    descriptionController16?.dispose();
    descriptionController17?.dispose();
    descriptionController18?.dispose();
    textController19?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
