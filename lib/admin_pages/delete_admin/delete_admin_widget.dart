import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'delete_admin_model.dart';
export 'delete_admin_model.dart';

class DeleteAdminWidget extends StatefulWidget {
  const DeleteAdminWidget({
    Key? key,
    required this.admin,
  }) : super(key: key);

  final AdminAuthRow? admin;

  @override
  _DeleteAdminWidgetState createState() => _DeleteAdminWidgetState();
}

class _DeleteAdminWidgetState extends State<DeleteAdminWidget> {
  late DeleteAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteAdminModel());

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
      height: 280.0,
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
            FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('DELETE_ADMIN_COMP_DELETE_BTN_ON_TAP');
                logFirebaseEvent('Button_backend_call');
                await AdminAuthTable().delete(
                  matchingRows: (rows) => rows.eq(
                    'id',
                    widget.admin?.id,
                  ),
                );
                logFirebaseEvent('Button_bottom_sheet');
                Navigator.pop(context);
              },
              text: FFLocalizations.of(context).getText(
                'xmguge9v' /* Delete */,
              ),
              icon: Icon(
                Icons.delete_forever,
                size: 15.0,
              ),
              options: FFButtonOptions(
                width: double.infinity,
                height: 60.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).customColor3,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Lexend Deca',
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 2.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  logFirebaseEvent('DELETE_ADMIN_COMP_CANCEL_BTN_ON_TAP');
                  logFirebaseEvent('Button_bottom_sheet');
                  Navigator.pop(context);
                },
                text: FFLocalizations.of(context).getText(
                  'vgfjh78u' /* Cancel */,
                ),
                icon: Icon(
                  Icons.cancel_outlined,
                  size: 15.0,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleSmallFamily),
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
