import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contractofbanking_model.dart';
export 'contractofbanking_model.dart';

class ContractofbankingWidget extends StatefulWidget {
  const ContractofbankingWidget({Key? key}) : super(key: key);

  @override
  _ContractofbankingWidgetState createState() =>
      _ContractofbankingWidgetState();
}

class _ContractofbankingWidgetState extends State<ContractofbankingWidget> {
  late ContractofbankingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContractofbankingModel());

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 1200.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x25090F13),
                offset: Offset(0.0, 2.0),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '1xpszdbz' /* SINGLE CONTRACT OF BANKING PRO... */,
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).headlineSmall,
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
                              'CONTRACTOFBANKING_Icon_lzwcb5o1_ON_TAP');
                          logFirebaseEvent('Icon_bottom_sheet');
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 8.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'n3330dms' /* ATLAS BANK (PANAMA), S.A. */,
                          ),
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 24.0,
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '3d1ho7zt' /* This Single Contract of Bankin... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              color: Color(0x00FFFFFF),
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: Material(
                                    color: Colors.transparent,
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Container(
                                      width: 77.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 5.0, 5.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'mogd2rix' /* Definiciones */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 15.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displaySmallFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                  ),
                                  expanded: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'ul3f7at4' /* I. DEFINITIONS
1. THE BANK: At... */
                                              ,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              color: Color(0x00FFFFFF),
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: Material(
                                    color: Colors.transparent,
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Container(
                                      width: 77.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 5.0, 5.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '6hb01rut' /* General Conditions */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 15.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displaySmallFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                  ),
                                  expanded: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'rr0rupfp' /* II. GENERAL CONDITIONS
1. APPL... */
                                              ,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              color: Color(0x00FFFFFF),
                              child: ExpandableNotifier(
                                initialExpanded: false,
                                child: ExpandablePanel(
                                  header: Material(
                                    color: Colors.transparent,
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Container(
                                      width: 77.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 5.0, 5.0, 5.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'east9u8y' /* Specific Conditions */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmallFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 15.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displaySmallFamily),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                  ),
                                  expanded: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'b7er0v8l' /* III. SPECIFIC CONDITIONS
A. TE... */
                                              ,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: false,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                  ),
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
        ),
      ),
    );
  }
}
