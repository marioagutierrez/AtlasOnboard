import '/affiliate_referral/main_web_nav_afiliate/main_web_nav_afiliate_widget.dart';
import '/affiliate_referral/main_web_nav_short_afiliate/main_web_nav_short_afiliate_widget.dart';
import '/affiliate_referral/mobile_nav_afiliate/mobile_nav_afiliate_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/reset_password_mail/reset_password_mail_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setting_afiliate_page_model.dart';
export 'setting_afiliate_page_model.dart';

class SettingAfiliatePageWidget extends StatefulWidget {
  const SettingAfiliatePageWidget({Key? key}) : super(key: key);

  @override
  _SettingAfiliatePageWidgetState createState() =>
      _SettingAfiliatePageWidgetState();
}

class _SettingAfiliatePageWidgetState extends State<SettingAfiliatePageWidget> {
  late SettingAfiliatePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingAfiliatePageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'settingAfiliatePage'});
    _model.firstNameAfiliateController ??= TextEditingController(
        text: valueOrDefault<String>(
      valueOrDefault(currentUserDocument?.firstname, ''),
      '-',
    ));
    _model.lastNameController ??= TextEditingController(
        text: valueOrDefault<String>(
      valueOrDefault(currentUserDocument?.lastname, ''),
      '-',
    ));
    _model.emailAddressController ??= TextEditingController(
        text: valueOrDefault<String>(
      currentUserEmail,
      '-',
    ));
    _model.textController3 ??= TextEditingController(
        text: valueOrDefault<String>(
      valueOrDefault(currentUserDocument?.countryName, ''),
      'Panama',
    ));
    _model.textController4 ??= TextEditingController(text: currentPhoneNumber);
    _model.textController5 ??= TextEditingController();
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
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.mainWebNavAfiliateModel,
            updateCallback: () => setState(() {}),
            child: MainWebNavAfiliateWidget(
              profile: FlutterFlowTheme.of(context).alternate,
              referrals: FlutterFlowTheme.of(context).alternate,
              settings: FlutterFlowTheme.of(context).secondaryText,
            ),
          ),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              phone: false,
            ))
              wrapWithModel(
                model: _model.mainWebNavShortAfiliateModel,
                updateCallback: () => setState(() {}),
                child: MainWebNavShortAfiliateWidget(
                  profile: Colors.transparent,
                  referrals: Colors.transparent,
                  settings: FlutterFlowTheme.of(context).primary,
                ),
              ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
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
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.mobileNavAfiliateModel1,
                                updateCallback: () => setState(() {}),
                                child: MobileNavAfiliateWidget(
                                  referals: Color(0xFF8F8F8F),
                                  profileAfiliate: Color(0xFF8F8F8F),
                                  setting: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 20.0, 10.0, 20.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 863.0,
                                  constraints: BoxConstraints(
                                    maxWidth: 1000.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 10.0, 10.0, 10.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 10.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 10.0,
                                            shape: const CircleBorder(),
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                shape: BoxShape.circle,
                                              ),
                                              child: AuthUserStreamWidget(
                                                builder: (context) => Container(
                                                  width: 120.0,
                                                  height: 120.0,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      currentUserPhoto,
                                                      'https://fpvxrsabicqnqdswijck.supabase.co/storage/v1/object/public/atlasfotos/profile.jpg',
                                                    ),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              '${valueOrDefault<String>(
                                                valueOrDefault(
                                                    currentUserDocument
                                                        ?.firstname,
                                                    ''),
                                                '-',
                                              )} ${valueOrDefault<String>(
                                                valueOrDefault(
                                                    currentUserDocument
                                                        ?.lastname,
                                                    ''),
                                                '-',
                                              )}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.w800,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'SETTING_AFILIATE_photo_profile_url_ON_TA');
                                            logFirebaseEvent(
                                                'photo_profile_url_upload_media_to_fireba');
                                            final selectedMedia =
                                                await selectMediaWithSourceBottomSheet(
                                              context: context,
                                              allowPhoto: true,
                                              includeDimensions: true,
                                            );
                                            if (selectedMedia != null &&
                                                selectedMedia.every((m) =>
                                                    validateFileFormat(
                                                        m.storagePath,
                                                        context))) {
                                              setState(() => _model
                                                  .isDataUploading = true);
                                              var selectedUploadedFiles =
                                                  <FFUploadedFile>[];

                                              var downloadUrls = <String>[];
                                              try {
                                                showUploadMessage(
                                                  context,
                                                  'Uploading file...',
                                                  showLoading: true,
                                                );
                                                selectedUploadedFiles =
                                                    selectedMedia
                                                        .map((m) =>
                                                            FFUploadedFile(
                                                              name: m
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes: m.bytes,
                                                              height: m
                                                                  .dimensions
                                                                  ?.height,
                                                              width: m
                                                                  .dimensions
                                                                  ?.width,
                                                              blurHash:
                                                                  m.blurHash,
                                                            ))
                                                        .toList();

                                                downloadUrls =
                                                    (await Future.wait(
                                                  selectedMedia.map(
                                                    (m) async =>
                                                        await uploadData(
                                                            m.storagePath,
                                                            m.bytes),
                                                  ),
                                                ))
                                                        .where((u) => u != null)
                                                        .map((u) => u!)
                                                        .toList();
                                              } finally {
                                                ScaffoldMessenger.of(context)
                                                    .hideCurrentSnackBar();
                                                _model.isDataUploading = false;
                                              }
                                              if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length &&
                                                  downloadUrls.length ==
                                                      selectedMedia.length) {
                                                setState(() {
                                                  _model.uploadedLocalFile =
                                                      selectedUploadedFiles
                                                          .first;
                                                  _model.uploadedFileUrl =
                                                      downloadUrls.first;
                                                });
                                                showUploadMessage(
                                                    context, 'Success!');
                                              } else {
                                                setState(() {});
                                                showUploadMessage(context,
                                                    'Failed to upload data');
                                                return;
                                              }
                                            }

                                            logFirebaseEvent(
                                                'photo_profile_url_backend_call');

                                            await currentUserReference!.update(
                                                createSofiaUsersRecordData(
                                              photoUrl: _model.uploadedFileUrl,
                                              editedTime: getCurrentTimestamp,
                                            ));
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'yt947xvj' /* Photo Profile */,
                                          ),
                                          icon: Icon(
                                            Icons.photo,
                                            size: 15.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: 200.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color: Colors.white,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily),
                                                    ),
                                            elevation: 2.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 428.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    border: Border.all(
                                                      color: Color(0x0095A1AC),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                AuthUserStreamWidget(
                                                              builder: (context) =>
                                                                  TextFormField(
                                                                controller: _model
                                                                    .firstNameAfiliateController,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'bjzlvu2r' /* First Name */,
                                                                  ),
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                validator: _model
                                                                    .firstNameAfiliateControllerValidator
                                                                    .asValidator(
                                                                        context),
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
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 428.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    border: Border.all(
                                                      color: Color(0x0095A1AC),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                AuthUserStreamWidget(
                                                              builder: (context) =>
                                                                  TextFormField(
                                                                controller: _model
                                                                    .lastNameController,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'k8zz3sey' /* Last Name */,
                                                                  ),
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                validator: _model
                                                                    .lastNameControllerValidator
                                                                    .asValidator(
                                                                        context),
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
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Wrap(
                                                    spacing: 0.0,
                                                    runSpacing: 0.0,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 428.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0x0095A1AC),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .emailAddressController,
                                                                      autofocus:
                                                                          true,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        labelText:
                                                                            FFLocalizations.of(context).getText(
                                                                          '6dfhv8fr' /* Email Address */,
                                                                        ),
                                                                        labelStyle:
                                                                            FlutterFlowTheme.of(context).labelMedium,
                                                                        hintStyle:
                                                                            FlutterFlowTheme.of(context).labelMedium,
                                                                        enabledBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        errorBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            UnderlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium,
                                                                      validator: _model
                                                                          .emailAddressControllerValidator
                                                                          .asValidator(
                                                                              context),
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 428.0,
                                                          height: 60.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0x0095A1AC),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          5.0,
                                                                          5.0,
                                                                          5.0),
                                                                  child:
                                                                      Container(
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions.countryFLag(_model
                                                                            .textController3
                                                                            .text),
                                                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Flag_of_Panama.svg/200px-Flag_of_Panama.svg.png',
                                                                      ),
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        AuthUserStreamWidget(
                                                                      builder: (context) =>
                                                                          Autocomplete<
                                                                              String>(
                                                                        initialValue:
                                                                            TextEditingValue(
                                                                                text: valueOrDefault<String>(
                                                                          valueOrDefault(
                                                                              currentUserDocument?.countryName,
                                                                              ''),
                                                                          'Panama',
                                                                        )),
                                                                        optionsBuilder:
                                                                            (textEditingValue) {
                                                                          if (textEditingValue.text ==
                                                                              '') {
                                                                            return const Iterable<String>.empty();
                                                                          }
                                                                          return functions
                                                                              .countryName()
                                                                              .where((option) {
                                                                            final lowercaseOption =
                                                                                option.toLowerCase();
                                                                            return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                          });
                                                                        },
                                                                        optionsViewBuilder: (context,
                                                                            onSelected,
                                                                            options) {
                                                                          return AutocompleteOptionsList(
                                                                            textFieldKey:
                                                                                _model.textFieldKey1,
                                                                            textController:
                                                                                _model.textController3!,
                                                                            options:
                                                                                options.toList(),
                                                                            onSelected:
                                                                                onSelected,
                                                                            textStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            textHighlightStyle:
                                                                                TextStyle(),
                                                                            elevation:
                                                                                4.0,
                                                                            optionBackgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            optionHighlightColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            maxHeight:
                                                                                200.0,
                                                                          );
                                                                        },
                                                                        onSelected:
                                                                            (String
                                                                                selection) {
                                                                          setState(() =>
                                                                              _model.textFieldSelectedOption1 = selection);
                                                                          FocusScope.of(context)
                                                                              .unfocus();
                                                                        },
                                                                        fieldViewBuilder:
                                                                            (
                                                                          context,
                                                                          textEditingController,
                                                                          focusNode,
                                                                          onEditingComplete,
                                                                        ) {
                                                                          _model.textController3 =
                                                                              textEditingController;
                                                                          return TextFormField(
                                                                            key:
                                                                                _model.textFieldKey1,
                                                                            controller:
                                                                                textEditingController,
                                                                            focusNode:
                                                                                focusNode,
                                                                            onEditingComplete:
                                                                                onEditingComplete,
                                                                            autofocus:
                                                                                true,
                                                                            obscureText:
                                                                                false,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              labelStyle: FlutterFlowTheme.of(context).labelMedium,
                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                '1j4gdw1j' /* Enter the country name */,
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
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyMedium,
                                                                            validator:
                                                                                _model.textController3Validator.asValidator(context),
                                                                          );
                                                                        },
                                                                      ),
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
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Container(
                                                  height: 60.0,
                                                  constraints: BoxConstraints(
                                                    maxWidth: 500.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    border: Border.all(
                                                      color: Color(0x0095A1AC),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              functions.dialCountry(
                                                                  valueOrDefault<
                                                                      String>(
                                                                _model
                                                                    .textController3
                                                                    .text,
                                                                'Panama',
                                                              )),
                                                              '+507',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 35.0,
                                                          child:
                                                              VerticalDivider(
                                                            width: 10.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .tertiary,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child:
                                                                AuthUserStreamWidget(
                                                              builder: (context) =>
                                                                  TextFormField(
                                                                controller: _model
                                                                    .textController4,
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  hintText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'xjkm2d9g' /* Introduce tu número móvil */,
                                                                  ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00A1A1A1),
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  errorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      width:
                                                                          2.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                                validator: _model
                                                                    .textController4Validator
                                                                    .asValidator(
                                                                        context),
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
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'SETTING_AFILIATE_RESET_YOUR_PASSWORD_BTN');
                                              logFirebaseEvent('Button_auth');
                                              if (_model
                                                  .firstNameAfiliateController
                                                  .text
                                                  .isEmpty) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Email required!',
                                                    ),
                                                  ),
                                                );
                                                return;
                                              }
                                              await authManager.resetPassword(
                                                email: _model
                                                    .firstNameAfiliateController
                                                    .text,
                                                context: context,
                                              );
                                              logFirebaseEvent(
                                                  'Button_bottom_sheet');
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Color(0x6E000000),
                                                enableDrag: false,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => FocusScope.of(
                                                            context)
                                                        .requestFocus(
                                                            _model.unfocusNode),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child:
                                                          ResetPasswordMailWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '3imgfr12' /* Reset your Password */,
                                            ),
                                            icon: FaIcon(
                                              FontAwesomeIcons.retweet,
                                            ),
                                            options: FFButtonOptions(
                                              width: 249.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF949494),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmallFamily,
                                                        color: Colors.white,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily),
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              hoverColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              hoverBorderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 1.0,
                                              ),
                                              hoverTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'SETTING_AFILIATE_SAVE_CHANGES_BTN_ON_TAP');
                                            logFirebaseEvent(
                                                'Button_backend_call');

                                            await currentUserReference!.update(
                                                createSofiaUsersRecordData(
                                              phoneNumber:
                                                  _model.textController4.text,
                                              email: _model
                                                  .emailAddressController.text,
                                              editedTime: getCurrentTimestamp,
                                              firstname: _model
                                                  .firstNameAfiliateController
                                                  .text,
                                              lastname: _model
                                                  .lastNameController.text,
                                              countryName:
                                                  valueOrDefault<String>(
                                                _model.textController3.text,
                                                'Panamá',
                                              ),
                                            ));
                                          },
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'fneur4ht' /* Save Changes */,
                                          ),
                                          icon: Icon(
                                            Icons.save_alt,
                                            size: 15.0,
                                          ),
                                          options: FFButtonOptions(
                                            width: 230.0,
                                            height: 50.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.normal,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent1,
                                              width: 1.0,
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
                      ],
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
                                            'SETTING_AFILIATE_Icon_l7ru9dfj_ON_TAP');
                                        logFirebaseEvent('Icon_drawer');
                                        scaffoldKey.currentState!.openDrawer();
                                      },
                                      child: Icon(
                                        Icons.menu,
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
                                          'iop436kd' /* Settings */,
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 4.0, 0.0),
                                                  child: Icon(
                                                    Icons.search_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                0.0, 0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textController5,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        '_model.textController5',
                                                        Duration(
                                                            milliseconds: 2000),
                                                        () => setState(() {}),
                                                      ),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '0fl7z3oh' /* Search... */,
                                                        ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    4.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    4.0),
                                                          ),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0xFF95A1AC),
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      validator: _model
                                                          .textController5Validator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.calendar_today_outlined,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 10.0, 0.0),
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
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent4,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Icon(
                                                    Icons.access_time_outlined,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: Text(
                                                    dateTimeFormat(
                                                      'jm',
                                                      getCurrentTimestamp,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.calendar_today_outlined,
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
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
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
                                                SizedBox(
                                                  height: 20.0,
                                                  child: VerticalDivider(
                                                    thickness: 1.0,
                                                    color: FlutterFlowTheme.of(
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
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
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
                                              ],
                                            ),
                                          ),
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
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: wrapWithModel(
                      model: _model.mobileNavAfiliateModel2,
                      updateCallback: () => setState(() {}),
                      child: MobileNavAfiliateWidget(
                        referals: Color(0x00A1A1A1),
                        profileAfiliate: Color(0x00A1A1A1),
                        setting: FlutterFlowTheme.of(context).primary,
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
