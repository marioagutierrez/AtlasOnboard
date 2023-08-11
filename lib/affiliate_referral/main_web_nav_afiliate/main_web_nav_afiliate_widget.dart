import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_web_nav_afiliate_model.dart';
export 'main_web_nav_afiliate_model.dart';

class MainWebNavAfiliateWidget extends StatefulWidget {
  const MainWebNavAfiliateWidget({
    Key? key,
    Color? profile,
    Color? referrals,
    Color? settings,
  })  : this.profile = profile ?? Colors.white,
        this.referrals = referrals ?? Colors.white,
        this.settings = settings ?? Colors.white,
        super(key: key);

  final Color profile;
  final Color referrals;
  final Color settings;

  @override
  _MainWebNavAfiliateWidgetState createState() =>
      _MainWebNavAfiliateWidgetState();
}

class _MainWebNavAfiliateWidgetState extends State<MainWebNavAfiliateWidget> {
  late MainWebNavAfiliateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainWebNavAfiliateModel());

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
                      'assets/images/atlas_(1).png',
                      width: 220.7,
                      height: 92.0,
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
                              'MAIN_WEB_NAV_AFILIATE_ListTile_pzhdo0bt_');
                          logFirebaseEvent('ListTile_navigate_to');

                          context.goNamed('profilereferralsAfiliatePage');
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            color: valueOrDefault<Color>(
                              widget.profile,
                              FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'pd0qb7k7' /* Profile */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: valueOrDefault<Color>(
                                    widget.profile,
                                    FlutterFlowTheme.of(context).secondaryText,
                                  ),
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
                              'MAIN_WEB_NAV_AFILIATE_ListTile_oqpufhjx_');
                          logFirebaseEvent('ListTile_navigate_to');

                          context.pushNamed('referralsAfiliatePage');
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.location_history_sharp,
                            color: widget.referrals,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '3y1h28dv' /* Referrals */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineSmallFamily,
                                  color: widget.referrals,
                                  fontSize: 18.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .headlineSmallFamily),
                                ),
                          ),
                          tileColor: widget.referrals,
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
                              'MAIN_WEB_NAV_AFILIATE_ListTile_t0nd1gn0_');
                          logFirebaseEvent('ListTile_navigate_to');

                          context.pushNamed('settingAfiliatePage');
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.settings_rounded,
                            color: widget.settings,
                          ),
                          title: Text(
                            FFLocalizations.of(context).getText(
                              '68d9fw2v' /* Settings */,
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
                          tileColor: widget.settings,
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
                              'MAIN_WEB_NAV_AFILIATE_ListTile_2uvewb8w_');
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
                              '4sjmvb7u' /* Log Out */,
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
