import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'commercial_reference_model.dart';
export 'commercial_reference_model.dart';

class CommercialReferenceWidget extends StatefulWidget {
  const CommercialReferenceWidget({Key? key}) : super(key: key);

  @override
  _CommercialReferenceWidgetState createState() =>
      _CommercialReferenceWidgetState();
}

class _CommercialReferenceWidgetState extends State<CommercialReferenceWidget> {
  late CommercialReferenceModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommercialReferenceModel());

    _model.streetController1 ??= TextEditingController();
    _model.streetController2 ??= TextEditingController();
    _model.streetController3 ??= TextEditingController();
    _model.streetController4 ??= TextEditingController();
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

    return FutureBuilder<List<ProfileRecordAtlasRow>>(
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
        List<ProfileRecordAtlasRow> createNoteProfileRecordAtlasRowList =
            snapshot.data!;
        final createNoteProfileRecordAtlasRow =
            createNoteProfileRecordAtlasRowList.isNotEmpty
                ? createNoteProfileRecordAtlasRowList.first
                : null;
        return Material(
          color: Colors.transparent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Container(
            width: double.infinity,
            height: 486.0,
            decoration: BoxDecoration(
              color: Color(0xFFD4D4D4),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Container(
                          width: 50.0,
                          height: 4.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '4dr05q94' /* Create Commercial Reference */,
                      ),
                      style: FlutterFlowTheme.of(context).headlineMedium,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '7dokw2uo' /* Fill in all the fields */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.streetController1,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'xwteoa0e' /* Company Name */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 24.0, 0.0, 24.0),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.streetController1Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.streetController2,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'qiwjntle' /* Address */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 24.0, 0.0, 24.0),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.streetController2Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.streetController3,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'sbus37v1' /* Contact Person */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 24.0, 0.0, 24.0),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.streetController3Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.streetController4,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'jfr4bfuu' /* Relationship with Company */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              16.0, 24.0, 0.0, 24.0),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    validator: _model.streetController4Validator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 44.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'COMMERCIAL_REFERENCE_CREATE_REFERENCE_BT');
                            logFirebaseEvent('Button_backend_call');
                            await CommercialReferenceTable().insert({
                              'created_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'address': _model.streetController2.text,
                              'contactPerson': _model.streetController3.text,
                              'supaUserID': createNoteProfileRecordAtlasRow?.id,
                              'fireUserID': currentUserUid,
                              'companyName': _model.streetController1.text,
                              'relationship': _model.streetController4.text,
                            });
                            logFirebaseEvent('Button_backend_call');

                            await currentUserReference!
                                .update(createSofiaUsersRecordData(
                              referenceCommercial: true,
                            ));
                            logFirebaseEvent('Button_backend_call');

                            await currentUserReference!.update({
                              'onboardingProcess': FieldValue.increment(0.1),
                            });
                            logFirebaseEvent('Button_bottom_sheet');
                            Navigator.pop(context);
                          },
                          text: FFLocalizations.of(context).getText(
                            'm89p7rmm' /* Create Reference */,
                          ),
                          options: FFButtonOptions(
                            width: 270.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color: Colors.white,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
