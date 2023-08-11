import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_web_nav_model.dart';
export 'main_web_nav_model.dart';

class MainWebNavWidget extends StatefulWidget {
  const MainWebNavWidget({
    Key? key,
    required this.corp,
    required this.user,
    required this.product,
    required this.dashboard,
    required this.account,
    required this.kyc,
  }) : super(key: key);

  final Color? corp;
  final Color? user;
  final Color? product;
  final Color? dashboard;
  final Color? account;
  final Color? kyc;

  @override
  _MainWebNavWidgetState createState() => _MainWebNavWidgetState();
}

class _MainWebNavWidgetState extends State<MainWebNavWidget> {
  late MainWebNavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainWebNavModel());

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
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: Image.asset(
                      'assets/images/atlas_(1).png',
                      width: 220.7,
                      height: 89.0,
                      fit: BoxFit.cover,
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
                              'MAIN_WEB_NAV_ListTile_vgme7fbn_ON_TAP');
                          if (valueOrDefault<bool>(
                              currentUserDocument?.corp, false)) {
                            logFirebaseEvent('ListTile_navigate_to');

                            context.goNamed('homeCommercial');
                          } else {
                            logFirebaseEvent('ListTile_navigate_to');

                            context.goNamed('homePersonal');
                          }
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.dashboard_outlined,
                            color: widget.dashboard,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'rdo2xzvq' /* Dashboard */,
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
                          tileColor: widget.dashboard,
                          dense: false,
                        ),
                      ),
                      if (valueOrDefault<bool>(
                          currentUserDocument?.corp, false))
                        AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'MAIN_WEB_NAV_ListTile_ji2ttr4h_ON_TAP');
                              logFirebaseEvent('ListTile_navigate_to');

                              context.goNamed('profileCommercial');
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.business,
                                color: widget.corp,
                              ),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'sdkwfat3' /* Profile  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      color: widget.corp,
                                      fontSize: 18.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily),
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: widget.corp,
                                size: 20.0,
                              ),
                              tileColor: widget.corp,
                              dense: false,
                            ),
                          ),
                        ),
                      if (!valueOrDefault<bool>(
                          currentUserDocument?.corp, false))
                        AuthUserStreamWidget(
                          builder: (context) => InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'MAIN_WEB_NAV_ListTile_u6gxmwv3_ON_TAP');
                              logFirebaseEvent('ListTile_navigate_to');

                              context.goNamed('profilePersonal');
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.person,
                                color: widget.user,
                              ),
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  '4qmp14cw' /* Profile  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .headlineSmallFamily,
                                      color: widget.user,
                                      fontSize: 18.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily),
                                    ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                color: widget.user,
                                size: 20.0,
                              ),
                              tileColor: widget.user,
                              dense: false,
                            ),
                          ),
                        ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'MAIN_WEB_NAV_ListTile_4z35tqnr_ON_TAP');
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
                              'vjnr0l1f' /* Log Out */,
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
