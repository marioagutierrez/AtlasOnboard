import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'application_form_corp_model.dart';
export 'application_form_corp_model.dart';

class ApplicationFormCorpWidget extends StatefulWidget {
  const ApplicationFormCorpWidget({
    Key? key,
    required this.commercial,
  }) : super(key: key);

  final CommercialRecordAtlasRow? commercial;

  @override
  _ApplicationFormCorpWidgetState createState() =>
      _ApplicationFormCorpWidgetState();
}

class _ApplicationFormCorpWidgetState extends State<ApplicationFormCorpWidget>
    with TickerProviderStateMixin {
  late ApplicationFormCorpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApplicationFormCorpModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'applicationFormCorp'});
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        endDrawer: Container(
          width: 350.0,
          child: Drawer(
            elevation: 16.0,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'nr1327ua' /* Notifications */,
                      ),
                      style: FlutterFlowTheme.of(context).headlineMedium,
                    ),
                  ),
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 4.0, 0.0, 4.0),
                                  child: Container(
                                    width: 4.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 12.0, 0.0, 0.0),
                                  child: Container(
                                    width: 40.0,
                                    height: 40.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://img.freepik.com/vector-premium/vector-icono-contorno-firma-pluma-documento-contrato_88813-2705.jpg?w=2000',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'vh4ff7bv' /* Unrecognizable Signature */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'lht84c25' /* Please correct the signature o... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'zj4olvwf' /* Received */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 12.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7jvx67gb' /* A few moments ago */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context).lineColor,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://media.telemetro.com/p/a3107ec3c120f57f372a60565c98e018/adjuntos/311/imagenes/009/304/0009304723/1200x675/smart/muestra-una-ficha-digital.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '8zc288h2' /* Upload document */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'lye4039h' /* upload insurance file document */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wcl22lel' /* Posted */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 12.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '45u57cgo' /* A few moments ago */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.0,
                                color: FlutterFlowTheme.of(context).lineColor,
                                offset: Offset(0.0, 1.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 12.0, 8.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://i.stack.imgur.com/jDBnP.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'co4muf72' /* Issues Form */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'j3k271t4' /* incomplete fields in the form */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'wjl7sxk9' /* Posted */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 12.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '39wgi5wm' /* A few moments ago */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily),
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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
                ],
              ),
            ),
          ),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/Diseo_sin_ttulo_(34).png',
                        ).image,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 12.0),
                              child: Container(
                                width: double.infinity,
                                height: 700.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).primary,
                                      FlutterFlowTheme.of(context).secondary
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.0, -1.0),
                                    end: AlignmentDirectional(0, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '4pbostjd' /* Bank Forms */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMediumFamily,
                                              color: Colors.white,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(FlutterFlowTheme
                                                          .of(context)
                                                      .headlineMediumFamily),
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 0.0, 12.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '85wbo4lj' /* Here you can see the official ... */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: Colors.white,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '6m9t99fd' /* FORM001 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons.person,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'tdges1iv' /* INDIVIDUAL CLIENT FORM */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '06xk1wnb' /* FORM002 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .business_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'hrzio41l' /* CORPORATE CLIENT FORM */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '7dsxk2l6' /* FORM003 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .account_balance,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3k1hx6mg' /* ACCOUNT OPENING FORM */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '7z8liqas' /* FORM004 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .fileSignature,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'fbcfyn0x' /* SIGNATURE CARD */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'f29cki3e' /* FORM006 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .fileSignature,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'l0iwg673' /* BENEFICIARY DESIGNATION FORM */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ru0niptx' /* FORM007 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons.people_alt,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '5tt2h5lc' /* MINUTES OF BOARD OF DIRECTORS */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
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
                                    Expanded(
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '8pe6a72y' /* FORM008 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons.people_alt,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            't6ds23vw' /* BENEFICIAL OWNER CERTIFICATION... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '1x1rqzqi' /* FORM009 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons.devices,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'u8wu6c9x' /* AUTHORIZATION FOR ELECTRONIC C... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'jmgpla4q' /* FORMCORP */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons.laptop_mac,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '0jhdcehq' /* CORPORATE ONLINE BANKING FORM */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'tmmgi1p3' /* FORMPERSONAL */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons.smartphone,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jcqpafau' /* PERSONAL ONLINE BANKING FORM */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'yjseyh38' /* FORM013 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons.credit_card,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '599h84wy' /* VISA DEBIT CARD APPLICATION FO... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
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
                                    Expanded(
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'w7mqxabw' /* FORM-W-8BEN */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .flagUsa,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'uvpl0dj3' /* Certificate of Foreign Status ... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'a81x58oz' /* FORM-W-9 */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .flagUsa,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'j7a2i1gl' /* Request for Taxpayer
Identific... */
                                                            ,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 12.0, 0.0, 12.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                width: 270.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary
                                                    ],
                                                    stops: [0.0, 1.0],
                                                    begin: AlignmentDirectional(
                                                        0.07, -1.0),
                                                    end: AlignmentDirectional(
                                                        -0.07, 1.0),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'fpq5iwws' /* FORM-W-8BEN-E */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmallFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineSmallFamily),
                                                                ),
                                                          ),
                                                          FaIcon(
                                                            FontAwesomeIcons
                                                                .fileSignature,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 24.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent4,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '41b5xegy' /* Certificate of Status of Benef... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 17.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .headlineSmallFamily),
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
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 0.0, 16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'fnxpg6hy' /* General User Information */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmallFamily,
                                          fontSize: 25.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmallFamily),
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'nchy2ani' /* Your project status is appeari... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmallFamily),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              child: Wrap(
                                spacing: 8.0,
                                runSpacing: 8.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 4.0, 8.0, 4.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 5.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Container(
                                              height: 254.0,
                                              constraints: BoxConstraints(
                                                maxWidth:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.38,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  width: 1.0,
                                                ),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      5.0,
                                                                      5.0,
                                                                      5.0),
                                                          child: Container(
                                                            width: 60.0,
                                                            height: 60.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                widget
                                                                    .commercial
                                                                    ?.photoUrl,
                                                                'https://fpvxrsabicqnqdswijck.supabase.co/storage/v1/object/public/atlasfotos/profile.jpg',
                                                              ),
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '34mjm278' /* Legal Name:  */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  widget
                                                                      .commercial
                                                                      ?.legalName,
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'ia1w57nr' /* Commerciall Name:  */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  widget
                                                                      .commercial
                                                                      ?.commercialName,
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'z1tp2wo9' /* Incorporate No.:  */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  widget
                                                                      .commercial
                                                                      ?.ruc,
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                '25qlbfsx' /* Email:  */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  widget
                                                                      .commercial
                                                                      ?.email,
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'wd21qzab' /* Create at:  */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          20.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    'd/M/y',
                                                                    widget
                                                                        .commercial
                                                                        ?.createdAt,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  '-',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                      ))
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 4.0, 4.0, 4.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 2.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  10.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'APPLICATION_FORM_CORP_Container_r6fydaf4');
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                              'profileCommercial');
                                                        },
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 5.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16.0),
                                                          ),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.44,
                                                            height: 146.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          8.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  if (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.onboardingProcess,
                                                                          0.0) <=
                                                                      0.9)
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            7.0,
                                                                            7.0,
                                                                            7.0,
                                                                            7.0),
                                                                        child:
                                                                            AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              Container(
                                                                            width:
                                                                                200.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 4.0,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  offset: Offset(0.0, 2.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(20.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.notifications_active,
                                                                                    color: FlutterFlowTheme.of(context).customColor3,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'c1aab7sb' /* Incomplete Onboarding */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              4.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'gl2zq6lr' /* Onboarding 
Progress */
                                                                              ,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                4.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                AuthUserStreamWidget(
                                                                              builder: (context) => Text(
                                                                                valueOrDefault(currentUserDocument?.onboardingProcess, 0.0) >= 0.9
                                                                                    ? 'Complete'
                                                                                    : valueOrDefault<String>(
                                                                                        formatNumber(
                                                                                          valueOrDefault(currentUserDocument?.onboardingProcess, 0.0),
                                                                                          formatType: FormatType.custom,
                                                                                          format: '0.0',
                                                                                          locale: '',
                                                                                        ),
                                                                                        '-',
                                                                                      ),
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                LinearPercentIndicator(
                                                                          percent: valueOrDefault(
                                                                              currentUserDocument?.onboardingProcess,
                                                                              0.0),
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.38,
                                                                          lineHeight:
                                                                              8.0,
                                                                          animation:
                                                                              true,
                                                                          progressColor:
                                                                              FlutterFlowTheme.of(context).customColor1,
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          barRadius:
                                                                              Radius.circular(8.0),
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  Visibility(
                                    visible: responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 5.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color: Color(0x33000000),
                                                      offset: Offset(0.0, 2.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset:
                                                              Offset(0.0, 2.0),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.0),
                                                    ),
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  10.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'APPLICATION_FORM_CORP_Container_64civspt');
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                              'profileCommercial');
                                                        },
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 5.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16.0),
                                                          ),
                                                          child: Container(
                                                            height: 146.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          8.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  if (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.onboardingProcess,
                                                                          0.0) <=
                                                                      0.9)
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            7.0,
                                                                            7.0,
                                                                            7.0,
                                                                            7.0),
                                                                        child:
                                                                            AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              Container(
                                                                            width:
                                                                                200.0,
                                                                            height:
                                                                                100.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              boxShadow: [
                                                                                BoxShadow(
                                                                                  blurRadius: 4.0,
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  offset: Offset(0.0, 2.0),
                                                                                )
                                                                              ],
                                                                              borderRadius: BorderRadius.circular(20.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Icon(
                                                                                    Icons.notifications_active,
                                                                                    color: FlutterFlowTheme.of(context).customColor3,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  Expanded(
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '2cp7w0jl' /* Incomplete Onboarding */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              4.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'f3zaf34n' /* Onboarding 
Progress */
                                                                              ,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                  fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontSize: 16.0,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                4.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                AuthUserStreamWidget(
                                                                              builder: (context) => Text(
                                                                                valueOrDefault(currentUserDocument?.onboardingProcess, 0.0) >= 0.9
                                                                                    ? 'Complete'
                                                                                    : valueOrDefault<String>(
                                                                                        formatNumber(
                                                                                          valueOrDefault(currentUserDocument?.onboardingProcess, 0.0),
                                                                                          formatType: FormatType.custom,
                                                                                          format: '0.0',
                                                                                          locale: '',
                                                                                        ),
                                                                                        '-',
                                                                                      ),
                                                                                style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                LinearPercentIndicator(
                                                                          percent: valueOrDefault(
                                                                              currentUserDocument?.onboardingProcess,
                                                                              0.0),
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.38,
                                                                          lineHeight:
                                                                              8.0,
                                                                          animation:
                                                                              true,
                                                                          progressColor:
                                                                              FlutterFlowTheme.of(context).customColor1,
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                          barRadius:
                                                                              Radius.circular(8.0),
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            elevation: 5.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 16.0, 16.0),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2c5193u1' /* Total User Count */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    12.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'f30ahktb' /* An overview of all your users ... */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .supervisor_account_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 44.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'pqfqjvyn' /* 56.4k */,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'containerOnPageLoadAnimation']!),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    elevation: 5.0,
                    child: Container(
                      width: double.infinity,
                      height: 80.0,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'APPLICATION_FORM_CORP_Icon_t8ytpdas_ON_T');
                                          logFirebaseEvent('Icon_navigate_to');

                                          context.goNamed('applicationList');
                                        },
                                        child: Icon(
                                          Icons.arrow_back_ios_new_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'dyki0h57' /* Forms */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 20.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                    ))
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 8.0, 12.0, 8.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x790E151B),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_today_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      '${dateTimeFormat(
                                                        'EEEE',
                                                        getCurrentTimestamp,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}, ${dateTimeFormat(
                                                        'yMMMd',
                                                        getCurrentTimestamp,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      )}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20.0,
                                                    child: VerticalDivider(
                                                      thickness: 1.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Icon(
                                                      Icons
                                                          .access_time_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      dateTimeFormat(
                                                        'jm',
                                                        getCurrentTimestamp,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 5.0, 5.0, 5.0),
                                          child: Container(
                                            width: 177.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x790E151B),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_today_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 15.0,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      dateTimeFormat(
                                                        'MMMEd',
                                                        getCurrentTimestamp,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20.0,
                                                    child: VerticalDivider(
                                                      thickness: 1.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.access_time_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 15.0,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      dateTimeFormat(
                                                        'jm',
                                                        getCurrentTimestamp,
                                                        locale:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .languageCode,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    badges.Badge(
                                      badgeContent: Text(
                                        FFLocalizations.of(context).getText(
                                          'pvg2q597' /* 1 */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily,
                                              color: Colors.white,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily),
                                            ),
                                      ),
                                      showBadge: true,
                                      shape: badges.BadgeShape.circle,
                                      badgeColor:
                                          FlutterFlowTheme.of(context).error,
                                      elevation: 4.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 8.0, 8.0),
                                      position: badges.BadgePosition.topEnd(),
                                      animationType:
                                          badges.BadgeAnimationType.scale,
                                      toAnimate: true,
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'APPLICATION_FORM_CORP_Icon_9fxl61eu_ON_T');
                                          logFirebaseEvent('Icon_drawer');
                                          scaffoldKey.currentState!
                                              .openEndDrawer();
                                        },
                                        child: Icon(
                                          Icons.notifications_none_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 5.0, 5.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => Container(
                                          width: 45.0,
                                          height: 45.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                            valueOrDefault<String>(
                                              currentUserPhoto,
                                              'https://fpvxrsabicqnqdswijck.supabase.co/storage/v1/object/public/atlasfotos/profile.jpg',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
          ],
        ),
      ),
    );
  }
}
