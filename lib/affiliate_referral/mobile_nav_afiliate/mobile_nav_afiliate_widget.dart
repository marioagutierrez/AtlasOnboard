import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mobile_nav_afiliate_model.dart';
export 'mobile_nav_afiliate_model.dart';

class MobileNavAfiliateWidget extends StatefulWidget {
  const MobileNavAfiliateWidget({
    Key? key,
    Color? referals,
    Color? profileAfiliate,
    Color? setting,
  })  : this.referals = referals ?? Colors.white,
        this.profileAfiliate = profileAfiliate ?? Colors.white,
        this.setting = setting ?? Colors.white,
        super(key: key);

  final Color referals;
  final Color profileAfiliate;
  final Color setting;

  @override
  _MobileNavAfiliateWidgetState createState() =>
      _MobileNavAfiliateWidgetState();
}

class _MobileNavAfiliateWidgetState extends State<MobileNavAfiliateWidget> {
  late MobileNavAfiliateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MobileNavAfiliateModel());

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
              child: Material(
                color: Colors.transparent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: widget.referals,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'MOBILE_NAV_AFILIATE_Column_hb3y30ms_ON_T');
                      logFirebaseEvent('Column_navigate_to');

                      context.pushNamed('referralsAfiliatePage');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_history_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'meex58qn' /* Referrals */,
                            ),
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: widget.profileAfiliate,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'MOBILE_NAV_AFILIATE_Column_247lhucs_ON_T');
                      logFirebaseEvent('Column_navigate_to');

                      context.pushNamed('profilereferralsAfiliatePage');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'd8u37yu8' /* Profile */,
                            ),
                            style: FlutterFlowTheme.of(context).bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: widget.setting,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'MOBILE_NAV_AFILIATE_Column_vodgukt2_ON_T');
                      logFirebaseEvent('Column_navigate_to');

                      context.pushNamed('settingAfiliatePage');
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).accent4,
                          size: 24.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'h9ssq829' /* Settings */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodySmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodySmallFamily,
                                  color: FlutterFlowTheme.of(context).accent4,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodySmallFamily),
                                ),
                          ),
                        ),
                      ],
                    ),
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
