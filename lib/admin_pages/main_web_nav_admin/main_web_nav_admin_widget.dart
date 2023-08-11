import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_web_nav_admin_model.dart';
export 'main_web_nav_admin_model.dart';

class MainWebNavAdminWidget extends StatefulWidget {
  const MainWebNavAdminWidget({
    Key? key,
    required this.dashboard,
    required this.user,
    required this.settings,
    required this.form,
  }) : super(key: key);

  final Color? dashboard;
  final Color? user;
  final Color? settings;
  final Color? form;

  @override
  _MainWebNavAdminWidgetState createState() => _MainWebNavAdminWidgetState();
}

class _MainWebNavAdminWidgetState extends State<MainWebNavAdminWidget> {
  late MainWebNavAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainWebNavAdminModel());

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

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      child: Container(
        width: 270.0,
        height: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 0.0,
              color: FlutterFlowTheme.of(context).lineColor,
              offset: Offset(1.0, 0.0),
            )
          ],
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).secondary,
              FlutterFlowTheme.of(context).black600
            ],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Image.asset(
                      'assets/images/logoBlancoFuture_(1).png',
                      width: 220.7,
                      height: 92.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'MAIN_WEB_NAV_ADMIN_ListTile_gqjd0cqr_ON_');
                          logFirebaseEvent('ListTile_navigate_to');

                          context.pushNamed('adminDashboard');
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.dashboard_outlined,
                            color: widget.dashboard,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'bp3s5lel' /* Dashboard */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: widget.dashboard,
                                  fontSize: 18.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: widget.dashboard,
                            size: 20.0,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'MAIN_WEB_NAV_ADMIN_ListTile_rr1pb01v_ON_');
                          logFirebaseEvent('ListTile_navigate_to');

                          context.pushNamed('usersPage');
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.person_search_rounded,
                            color: widget.user,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'avrem77o' /* Users */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: widget.user,
                                  fontSize: 18.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'MAIN_WEB_NAV_ADMIN_ListTile_w5q82b3n_ON_');
                          logFirebaseEvent('ListTile_navigate_to');

                          context.pushNamed('applicationList');
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.file_open,
                            color: widget.form,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'vvwqfni3' /* FORMS */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: widget.form,
                                  fontSize: 18.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'MAIN_WEB_NAV_ADMIN_ListTile_pegmpi98_ON_');
                          logFirebaseEvent('ListTile_navigate_to');

                          context.pushNamed('adminProfile');
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: widget.settings,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'c99d2g8q' /* Settings */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: widget.settings,
                                  fontSize: 18.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'MAIN_WEB_NAV_ADMIN_ListTile_ghycb4eh_ON_');
                          logFirebaseEvent('ListTile_auth');
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('logInPage', context.mounted);
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'syd4i8xp' /* Log Out */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  fontSize: 18.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: FlutterFlowLanguageSelector(
                      width: 200.0,
                      backgroundColor: FlutterFlowTheme.of(context).primary,
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      dropdownColor: FlutterFlowTheme.of(context).primary,
                      dropdownIconColor: Colors.white,
                      borderRadius: 8.0,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 13.0,
                      ),
                      hideFlags: true,
                      flagSize: 24.0,
                      flagTextGap: 8.0,
                      currentLanguage: FFLocalizations.of(context).languageCode,
                      languages: FFLocalizations.languages(),
                      onChanged: (lang) => setAppLanguage(context, lang),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
