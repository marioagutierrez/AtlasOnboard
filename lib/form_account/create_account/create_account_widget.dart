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
import 'create_account_model.dart';
export 'create_account_model.dart';

class CreateAccountWidget extends StatefulWidget {
  const CreateAccountWidget({Key? key}) : super(key: key);

  @override
  _CreateAccountWidgetState createState() => _CreateAccountWidgetState();
}

class _CreateAccountWidgetState extends State<CreateAccountWidget>
    with TickerProviderStateMixin {
  late CreateAccountModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 200.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 250.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 250.ms,
          duration: 600.ms,
          begin: Offset(0.0, 70.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateAccountModel());

    _model.textController1 ??=
        TextEditingController(text: FFAppState().initialDeposit);
    _model.descriptionController1 ??= TextEditingController();
    _model.descriptionController2 ??=
        TextEditingController(text: FFAppState().OriginofReccurentFunds);
    _model.descriptionController3 ??=
        TextEditingController(text: FFAppState().OriginofNetWorth);
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5.0,
        sigmaY: 4.0,
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0x10EEEEEE),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: FutureBuilder<List<ProfileRecordAtlasRow>>(
                  future: ProfileRecordAtlasTable().querySingleRow(
                    queryFn: (q) => q.eq(
                      'firebase_id',
                      currentUserUid,
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<ProfileRecordAtlasRow>
                        containerProfileRecordAtlasRowList = snapshot.data!;
                    final containerProfileRecordAtlasRow =
                        containerProfileRecordAtlasRowList.isNotEmpty
                            ? containerProfileRecordAtlasRowList.first
                            : null;
                    return Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        maxWidth: 670.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Diseo_sin_ttulo_(34).png',
                          ).image,
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 1.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 1.0,
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Form(
                              key: _model.formKey,
                              autovalidateMode: AutovalidateMode.always,
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 24.0, 24.0, 24.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 4.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wbiw7d1s' /* ACCOUNT OPENING FORM */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 60.0,
                                              icon: Icon(
                                                Icons.close_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                size: 30.0,
                                              ),
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'CREATE_ACCOUNT_close_rounded_ICN_ON_TAP');
                                                logFirebaseEvent(
                                                    'IconButton_bottom_sheet');
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 16.0),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 5.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Container(
                                                  width: 120.0,
                                                  height: 198.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset:
                                                            Offset(0.0, 10.0),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10.0,
                                                                10.0,
                                                                10.0,
                                                                10.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'otc0tvpz' /* Account type */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                fontSize: 25.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            5.0,
                                                                            5.0,
                                                                            5.0),
                                                                child:
                                                                    FlutterFlowRadioButton(
                                                                  options: [
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'hz9ijfnl' /* Current Account  */,
                                                                    ),
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '62sjr0bg' /* Savings Account (only USD) */,
                                                                    ),
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '7ksdkh8x' /* Standard */,
                                                                    ),
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'zcltve18' /* Premium */,
                                                                    )
                                                                  ].toList(),
                                                                  onChanged: (val) =>
                                                                      setState(
                                                                          () {}),
                                                                  controller: _model
                                                                      .radioButtonValueController ??= FormFieldController<
                                                                          String>(
                                                                      FFAppState()
                                                                          .Accounttype),
                                                                  optionHeight:
                                                                      32.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  buttonPosition:
                                                                      RadioButtonPosition
                                                                          .left,
                                                                  direction: Axis
                                                                      .vertical,
                                                                  radioButtonColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                  inactiveRadioButtonColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  toggleable:
                                                                      false,
                                                                  horizontalAlignment:
                                                                      WrapAlignment
                                                                          .spaceEvenly,
                                                                  verticalAlignment:
                                                                      WrapCrossAlignment
                                                                          .start,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 5.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  child: Container(
                                                    width: 120.0,
                                                    height: 94.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 10.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  10.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'uze98pzs' /* Initial Deposit */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  fontSize:
                                                                      25.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                FlutterFlowDropDown<
                                                                    String>(
                                                                  controller: _model
                                                                          .dropDownValueController1 ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model.dropDownValue1 ??=
                                                                        FFAppState()
                                                                            .currency,
                                                                  ),
                                                                  options: [
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'na2qfe0m' /* US Dollar */,
                                                                    ),
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '8llibwpp' /* Euros */,
                                                                    )
                                                                  ],
                                                                  onChanged: (val) =>
                                                                      setState(() =>
                                                                          _model.dropDownValue1 =
                                                                              val),
                                                                  width: 149.0,
                                                                  height: 50.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                  hintText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    '7x6i8ek0' /* Please select... */,
                                                                  ),
                                                                  icon: Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                    size: 24.0,
                                                                  ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      2.0,
                                                                  borderColor:
                                                                      Color(
                                                                          0x00A1A1A1),
                                                                  borderWidth:
                                                                      2.0,
                                                                  borderRadius:
                                                                      8.0,
                                                                  margin: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isSearchable:
                                                                      false,
                                                                ),
                                                                SizedBox(
                                                                  height: 40.0,
                                                                  child:
                                                                      VerticalDivider(
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .textController1,
                                                                      autofocus:
                                                                          true,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            FFLocalizations.of(context).getText(
                                                                          'z1smdq25' /* Label here... */,
                                                                        ),
                                                                        labelStyle:
                                                                            FlutterFlowTheme.of(context).labelMedium,
                                                                        hintStyle:
                                                                            FlutterFlowTheme.of(context).labelMedium,
                                                                        enabledBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Color(0x00A1A1A1),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      keyboardType: const TextInputType
                                                                          .numberWithOptions(
                                                                          signed:
                                                                              true,
                                                                          decimal:
                                                                              true),
                                                                      validator: _model
                                                                          .textController1Validator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '3ycwtnzf' /* Method of Initial Deposit  */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 20.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownValueController2 ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropDownValue2 ??=
                                                        FFAppState()
                                                            .MethodofInitialDeposit,
                                                  ),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2zbmdbb8' /* Cash */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tj3tpho2' /* Atlas Bank Check */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4wdk81op' /* Cashier Check */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k504toup' /* Other Bank Check  */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '90f41kb4' /* Local Transfer */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'krl54z45' /* Internal Transfer */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nxnd3vlj' /* International Transfer */,
                                                    )
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .dropDownValue2 =
                                                          val),
                                                  width: 300.0,
                                                  height: 50.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '7v9bj05i' /* Please select... */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Color(0x00A1A1A1),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 10.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8fa6t8zc' /* Purpose of the Account */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 20.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child:
                                                    FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropDownValueController3 ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropDownValue3 ??=
                                                        FFAppState()
                                                            .PurposeoftheAccount,
                                                  ),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n5crudw6' /* Savings */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9qfcwmh9' /* Personal Expenses  */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tiv4ug2h' /* Loan Repayment  */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm4d56obz' /* Utility Payments */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wpxfc86n' /* Working Capital Needs  */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h8s6m29p' /* Payment to Suppliers */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't3si03a7' /* Payroll */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'btf1szb5' /* Other */,
                                                    )
                                                  ],
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .dropDownValue3 =
                                                          val),
                                                  width: 300.0,
                                                  height: 50.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'b3hipbut' /* Please select... */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      Color(0x00A1A1A1),
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 4.0, 16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isSearchable: false,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'ebuy7b0v' /* Origin of Funds */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  fontSize: 20.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMediumFamily),
                                                ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        child: TextFormField(
                                          controller:
                                              _model.descriptionController1,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFAppState().OriginofFunds,
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge,
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'kp9atiy2' /* Description here... */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          maxLines: 5,
                                          validator: _model
                                              .descriptionController1Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hm728atg' /* Origin of Reccurent Funds */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 20.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        child: TextFormField(
                                          controller:
                                              _model.descriptionController2,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge,
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '58v7dacc' /* Description here... */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          maxLines: 5,
                                          validator: _model
                                              .descriptionController2Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'qrjj1uap' /* Origin of NetWorth */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 20.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        child: TextFormField(
                                          controller:
                                              _model.descriptionController3,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge,
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '77lokim1' /* Description here... */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                          maxLines: 5,
                                          validator: _model
                                              .descriptionController3Validator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 4.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'CREATE_ACCOUNT_COMP_CONTINUE_BTN_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Button_update_app_state');
                                                  setState(() {
                                                    FFAppState().OriginofFunds =
                                                        valueOrDefault<String>(
                                                      _model
                                                          .descriptionController1
                                                          .text,
                                                      'null',
                                                    );
                                                    FFAppState()
                                                            .OriginofReccurentFunds =
                                                        valueOrDefault<String>(
                                                      _model
                                                          .descriptionController2
                                                          .text,
                                                      'null',
                                                    );
                                                    FFAppState()
                                                            .OriginofNetWorth =
                                                        valueOrDefault<String>(
                                                      _model
                                                          .descriptionController3
                                                          .text,
                                                      'null',
                                                    );
                                                    FFAppState()
                                                            .MethodofInitialDeposit =
                                                        _model.dropDownValue2!;
                                                    FFAppState()
                                                            .PurposeoftheAccount =
                                                        _model.dropDownValue3!;
                                                    FFAppState().Accounttype =
                                                        _model
                                                            .radioButtonValue!;
                                                    FFAppState().currency =
                                                        _model.dropDownValue1!;
                                                    FFAppState()
                                                            .initialDeposit =
                                                        _model.textController1
                                                            .text;
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_bottom_sheet');
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child:
                                                            CreateAccountStep2Widget(),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));

                                                  logFirebaseEvent(
                                                      'Button_bottom_sheet');
                                                  Navigator.pop(context);
                                                },
                                                text:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'hco26x98' /* Continue */,
                                                ),
                                                options: FFButtonOptions(
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          32.0, 0.0, 32.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: Colors.white,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallFamily),
                                                          ),
                                                  elevation: 2.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          40.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation2']!);
                  },
                ),
              ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
    );
  }
}
