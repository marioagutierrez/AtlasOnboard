import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_web_nav_short_admin_model.dart';
export 'main_web_nav_short_admin_model.dart';

class MainWebNavShortAdminWidget extends StatefulWidget {
  const MainWebNavShortAdminWidget({
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
  _MainWebNavShortAdminWidgetState createState() =>
      _MainWebNavShortAdminWidgetState();
}

class _MainWebNavShortAdminWidgetState
    extends State<MainWebNavShortAdminWidget> {
  late MainWebNavShortAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainWebNavShortAdminModel());

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
        width: 80.0,
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
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Image.asset(
                  'assets/images/Diseo_sin_ttulo_(35)_(1).png',
                  width: 61.0,
                  height: 68.0,
                  fit: BoxFit.cover,
                ),
              ),
              if (valueOrDefault<bool>(currentUserDocument?.admin, false))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: widget.dashboard,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'MAIN_WEB_NAV_SHORT_ADMIN_Icon_1wlyaz9d_O');
                            logFirebaseEvent('Icon_navigate_to');

                            context.goNamed('adminDashboard');
                          },
                          child: Icon(
                            Icons.dashboard_rounded,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: widget.user,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'MAIN_WEB_NAV_SHORT_ADMIN_Icon_eyte9dxs_O');
                        logFirebaseEvent('Icon_navigate_to');

                        context.pushNamed('usersPage');
                      },
                      child: Icon(
                        Icons.person_search_sharp,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: widget.form,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'MAIN_WEB_NAV_SHORT_ADMIN_Icon_lsafkl7h_O');
                        logFirebaseEvent('Icon_navigate_to');

                        context.pushNamed('applicationList');
                      },
                      child: Icon(
                        Icons.file_open,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: widget.settings,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'MAIN_WEB_NAV_SHORT_ADMIN_Icon_xe2fxywi_O');
                        logFirebaseEvent('Icon_navigate_to');

                        context.goNamed('adminProfile');
                      },
                      child: Icon(
                        Icons.settings,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50.0,
                child: Divider(
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).accent4,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'MAIN_WEB_NAV_SHORT_ADMIN_Icon_xnju4x6e_O');
                        logFirebaseEvent('Icon_auth');
                        GoRouter.of(context).prepareAuthEvent();
                        await authManager.signOut();
                        GoRouter.of(context).clearRedirectLocation();

                        context.goNamedAuth('logInPage', context.mounted);
                      },
                      child: Icon(
                        Icons.logout,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
