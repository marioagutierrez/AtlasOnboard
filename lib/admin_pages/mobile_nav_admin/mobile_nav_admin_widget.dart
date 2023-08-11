import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mobile_nav_admin_model.dart';
export 'mobile_nav_admin_model.dart';

class MobileNavAdminWidget extends StatefulWidget {
  const MobileNavAdminWidget({
    Key? key,
    required this.user,
    required this.dashboard,
    required this.settings,
    required this.forms,
  }) : super(key: key);

  final Color? user;
  final Color? dashboard;
  final Color? settings;
  final Color? forms;

  @override
  _MobileNavAdminWidgetState createState() => _MobileNavAdminWidgetState();
}

class _MobileNavAdminWidgetState extends State<MobileNavAdminWidget> {
  late MobileNavAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileNavAdminModel());

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

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      ),
      child: Container(
        width: double.infinity,
        height: 80.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 0.0,
              color: FlutterFlowTheme.of(context).lineColor,
              offset: Offset(0.0, -1.0),
            )
          ],
          gradient: LinearGradient(
            colors: [FlutterFlowTheme.of(context).secondary, Colors.black],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('MOBILE_NAV_ADMIN_Column_cef8nm5x_ON_TAP');
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed('usersPage');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_search_sharp,
                        color: widget.user,
                        size: 24.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'svclb0kp' /* Users */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: widget.user,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodySmallFamily),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('MOBILE_NAV_ADMIN_Column_tyi7ffmx_ON_TAP');
                    logFirebaseEvent('Column_navigate_to');

                    context.pushNamed('applicationList');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_open,
                        color: widget.forms,
                        size: 24.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'n6hhlvu7' /* Forms */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: widget.forms,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodySmallFamily),
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('MOBILE_NAV_ADMIN_Column_ztkdbqwp_ON_TAP');
                  logFirebaseEvent('Column_navigate_to');

                  context.goNamed('adminDashboard');
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard_rounded,
                      color: widget.dashboard,
                      size: 24.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'd0atbiff' /* Dashboard */,
                        ),
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              color: widget.dashboard,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('MOBILE_NAV_ADMIN_Column_hr3it14h_ON_TAP');
                    logFirebaseEvent('Column_navigate_to');

                    context.goNamed('adminProfile');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings,
                        color: widget.settings,
                        size: 24.0,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '1mnuo15k' /* Settings */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color: widget.settings,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodySmallFamily),
                              ),
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
    );
  }
}
