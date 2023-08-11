import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_auth_model.dart';
export 'admin_auth_model.dart';

class AdminAuthWidget extends StatefulWidget {
  const AdminAuthWidget({
    Key? key,
    required this.admin,
  }) : super(key: key);

  final SofiaUsersRecord? admin;

  @override
  _AdminAuthWidgetState createState() => _AdminAuthWidgetState();
}

class _AdminAuthWidgetState extends State<AdminAuthWidget> {
  late AdminAuthModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminAuthModel());

    _model.emailAddressCorpController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.admin?.email,
      '-',
    ));
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

    return Container(
      width: double.infinity,
      height: 270.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(0.0, -3.0),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    '5k0l7xz9' /* Administrator Authorization */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).tertiary,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.admin?.displayName,
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.emailAddressCorpController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: FFLocalizations.of(context).getText(
                          'pba29zta' /* Email Address */,
                        ),
                        labelStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).titleSmallFamily,
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 12.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .titleSmallFamily),
                            ),
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF95A1AC),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).grayIcon,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 20.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF14181B),
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                      maxLines: null,
                      keyboardType: TextInputType.emailAddress,
                      validator: _model.emailAddressCorpControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
              ],
            ),
            SwitchListTile.adaptive(
              value: _model.switchListTileValue ??= widget.admin!.admin,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue = newValue!);
              },
              title: Text(
                FFLocalizations.of(context).getText(
                  'ls6ukb5b' /* Permissions */,
                ),
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              subtitle: Text(
                FFLocalizations.of(context).getText(
                  'iob4qgel' /* Give or remove administrator p... */,
                ),
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              activeColor: FlutterFlowTheme.of(context).success,
              activeTrackColor: FlutterFlowTheme.of(context).accent1,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    logFirebaseEvent('ADMIN_AUTH_COMP_SAVE_BTN_ON_TAP');
                    logFirebaseEvent('Button_backend_call');

                    await widget.admin!.reference
                        .update(createSofiaUsersRecordData(
                      email: valueOrDefault<String>(
                        _model.emailAddressCorpController.text,
                        '-',
                      ),
                      admin: _model.switchListTileValue,
                    ));
                    logFirebaseEvent('Button_bottom_sheet');
                    Navigator.pop(context);
                  },
                  text: FFLocalizations.of(context).getText(
                    'hcaw1u2h' /* Save */,
                  ),
                  icon: Icon(
                    Icons.save_as,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: Colors.white,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
