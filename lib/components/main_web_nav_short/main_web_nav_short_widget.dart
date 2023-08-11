import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_web_nav_short_model.dart';
export 'main_web_nav_short_model.dart';

class MainWebNavShortWidget extends StatefulWidget {
  const MainWebNavShortWidget({
    Key? key,
    required this.dashboard,
    required this.account,
    required this.corp,
    required this.user,
    required this.products,
    required this.kyc,
  }) : super(key: key);

  final Color? dashboard;
  final Color? account;
  final Color? corp;
  final Color? user;
  final Color? products;
  final Color? kyc;

  @override
  _MainWebNavShortWidgetState createState() => _MainWebNavShortWidgetState();
}

class _MainWebNavShortWidgetState extends State<MainWebNavShortWidget> {
  late MainWebNavShortModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainWebNavShortModel());

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
                  'assets/images/log_atlas_fabicon_(1).png',
                  width: 74.0,
                  height: 82.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: widget.dashboard,
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
                            'MAIN_WEB_NAV_SHORT_Icon_ij64pr98_ON_TAP');
                        if (valueOrDefault<bool>(
                            currentUserDocument?.corp, false)) {
                          logFirebaseEvent('Icon_navigate_to');

                          context.goNamed('homeCommercial');
                        } else {
                          logFirebaseEvent('Icon_navigate_to');

                          context.goNamed('homePersonal');
                        }
                      },
                      child: Icon(
                        Icons.dashboard_rounded,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ),
              if (valueOrDefault<bool>(currentUserDocument?.corp, false))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: widget.corp,
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
                                'MAIN_WEB_NAV_SHORT_Icon_h4619j0m_ON_TAP');
                            logFirebaseEvent('Icon_navigate_to');

                            context.pushNamed('profileCommercial');
                          },
                          child: Icon(
                            Icons.business_sharp,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (!valueOrDefault<bool>(currentUserDocument?.corp, false))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: widget.user,
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
                                'MAIN_WEB_NAV_SHORT_Icon_rmjfre9i_ON_TAP');
                            logFirebaseEvent('Icon_navigate_to');

                            context.pushNamed('profilePersonal');
                          },
                          child: Icon(
                            Icons.person_rounded,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 30.0,
                          ),
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
                            'MAIN_WEB_NAV_SHORT_Icon_0ejjqf9q_ON_TAP');
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
