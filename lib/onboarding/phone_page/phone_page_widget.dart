import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'phone_page_model.dart';
export 'phone_page_model.dart';

class PhonePageWidget extends StatefulWidget {
  const PhonePageWidget({Key? key}) : super(key: key);

  @override
  _PhonePageWidgetState createState() => _PhonePageWidgetState();
}

class _PhonePageWidgetState extends State<PhonePageWidget>
    with TickerProviderStateMixin {
  late PhonePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhonePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'phonePage'});
    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    authManager.handlePhoneAuthStateChanges(context);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController1?.text = FFLocalizations.of(context).getText(
            'nbxp4qft' /* Panamá */,
          );
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 30.0,
          ),
          onPressed: () async {
            logFirebaseEvent('PHONE_arrow_back_rounded_ICN_ON_TAP');
            logFirebaseEvent('IconButton_navigate_back');
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '5r5lgyr9' /* Phone Sign In */,
          ),
          style: FlutterFlowTheme.of(context).headlineSmall,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '6lmtrzco' /* Type in your phone number belo... */,
                    ),
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodySmallFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodySmallFamily),
                        ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Color(0xFF95A1AC),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 30.0,
                      height: 30.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        valueOrDefault<String>(
                          functions.countryFLag(_model.textController1.text),
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Flag_of_Panama.svg/200px-Flag_of_Panama.svg.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        child: Autocomplete<String>(
                          initialValue: TextEditingValue(
                              text: FFLocalizations.of(context).getText(
                            'nbxp4qft' /* Panamá */,
                          )),
                          optionsBuilder: (textEditingValue) {
                            if (textEditingValue.text == '') {
                              return const Iterable<String>.empty();
                            }
                            return functions.countryName().where((option) {
                              final lowercaseOption = option.toLowerCase();
                              return lowercaseOption.contains(
                                  textEditingValue.text.toLowerCase());
                            });
                          },
                          optionsViewBuilder: (context, onSelected, options) {
                            return AutocompleteOptionsList(
                              textFieldKey: _model.textFieldKey1,
                              textController: _model.textController1!,
                              options: options.toList(),
                              onSelected: onSelected,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              textHighlightStyle: TextStyle(),
                              elevation: 4.0,
                              optionBackgroundColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              optionHighlightColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              maxHeight: 200.0,
                            );
                          },
                          onSelected: (String selection) {
                            setState(() =>
                                _model.textFieldSelectedOption1 = selection);
                            FocusScope.of(context).unfocus();
                          },
                          fieldViewBuilder: (
                            context,
                            textEditingController,
                            focusNode,
                            onEditingComplete,
                          ) {
                            _model.textController1 = textEditingController;
                            return TextFormField(
                              key: _model.textFieldKey1,
                              controller: textEditingController,
                              focusNode: focusNode,
                              onEditingComplete: onEditingComplete,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintText: FFLocalizations.of(context).getText(
                                  'ha261p70' /* Enter the country name */,
                                ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00A1A1A1),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
            child: Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Color(0xFF95A1AC),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        functions.dialCountry(valueOrDefault<String>(
                          _model.textController1.text,
                          'Panamá',
                        )),
                        '+507',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    SizedBox(
                      height: 35.0,
                      child: VerticalDivider(
                        width: 10.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).tertiary,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 8.0, 0.0),
                        child: TextFormField(
                          controller: _model.textController2,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            hintText: FFLocalizations.of(context).getText(
                              'bi3viia8' /* Introduce tu número móvil */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00A1A1A1),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          validator: _model.textController2Validator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                logFirebaseEvent('PHONE_PAGE_PAGE_Button-Login_ON_TAP');
                logFirebaseEvent('Button-Login_auth');
                final phoneNumberVal =
                    '${functions.dialCountry(valueOrDefault<String>(
                  _model.textController1.text,
                  '+507',
                ))}${_model.textController2.text}';
                if (phoneNumberVal == null ||
                    phoneNumberVal.isEmpty ||
                    !phoneNumberVal.startsWith('+')) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Phone Number is required and has to start with +.'),
                    ),
                  );
                  return;
                }
                await authManager.beginPhoneAuth(
                  context: context,
                  phoneNumber: phoneNumberVal,
                  onCodeSent: (context) async {
                    context.goNamedAuth(
                      'phoneVerification',
                      context.mounted,
                      ignoreRedirect: true,
                    );
                  },
                );
              },
              text: FFLocalizations.of(context).getText(
                'qfxilrww' /* Sign In with Phone */,
              ),
              options: FFButtonOptions(
                width: 230.0,
                height: 50.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primaryText,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).titleSmallFamily),
                    ),
                elevation: 3.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
