import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_web_nav_short_afiliate_model.dart';
export 'main_web_nav_short_afiliate_model.dart';

class MainWebNavShortAfiliateWidget extends StatefulWidget {
  const MainWebNavShortAfiliateWidget({
    Key? key,
    Color? profile,
    Color? referrals,
    Color? settings,
  })  : this.profile = profile ?? Colors.transparent,
        this.referrals = referrals ?? Colors.transparent,
        this.settings = settings ?? Colors.transparent,
        super(key: key);

  final Color profile;
  final Color referrals;
  final Color settings;

  @override
  _MainWebNavShortAfiliateWidgetState createState() =>
      _MainWebNavShortAfiliateWidgetState();
}

class _MainWebNavShortAfiliateWidgetState
    extends State<MainWebNavShortAfiliateWidget> {
  late MainWebNavShortAfiliateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainWebNavShortAfiliateModel());

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
                  width: 61.0,
                  height: 91.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: widget.profile,
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
                            'MAIN_WEB_NAV_SHORT_AFILIATE_Icon_9oraxiv');
                        logFirebaseEvent('Icon_navigate_to');

                        context.goNamed('profilereferralsAfiliatePage');
                      },
                      child: Icon(
                        Icons.person,
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
                    color: widget.referrals,
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
                            'MAIN_WEB_NAV_SHORT_AFILIATE_Icon_ndxsx76');
                        logFirebaseEvent('Icon_navigate_to');

                        context.pushNamed('referralsAfiliatePage');
                      },
                      child: Icon(
                        Icons.location_history_rounded,
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
                            'MAIN_WEB_NAV_SHORT_AFILIATE_Icon_j3b45gd');
                        logFirebaseEvent('Icon_navigate_to');

                        context.pushNamed('settingAfiliatePage');
                      },
                      child: Icon(
                        Icons.settings_outlined,
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
                            'MAIN_WEB_NAV_SHORT_AFILIATE_Icon_xz0do8z');
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
