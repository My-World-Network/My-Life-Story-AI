import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'edit_autobiography_a_i_settings_component_model.dart';
export 'edit_autobiography_a_i_settings_component_model.dart';

class EditAutobiographyAISettingsComponentWidget extends StatefulWidget {
  const EditAutobiographyAISettingsComponentWidget({
    super.key,
    this.refAutobiography,
  });

  final DocumentReference? refAutobiography;

  @override
  State<EditAutobiographyAISettingsComponentWidget> createState() =>
      _EditAutobiographyAISettingsComponentWidgetState();
}

class _EditAutobiographyAISettingsComponentWidgetState
    extends State<EditAutobiographyAISettingsComponentWidget> {
  late EditAutobiographyAISettingsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => EditAutobiographyAISettingsComponentModel());

    _model.textAccompanyFocusNode ??= FocusNode();

    _model.textOpenAIAPIFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
      child: StreamBuilder<AutobiographiesRecord>(
        stream: AutobiographiesRecord.getDocument(widget.refAutobiography!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingCircle(
                  color: Color(0xC84B59BC),
                  size: 50.0,
                ),
              ),
            );
          }

          final columnAutobiographiesRecord = snapshot.data!;

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 55.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: FlutterFlowTheme.of(context).primary,
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Enable Audio Conversation',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .iconColour,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Switch(
                                value: _model.audioConversationToggleValue ??=
                                    columnAutobiographiesRecord
                                            .audioConversationSet ==
                                        true,
                                onChanged: (newValue) async {
                                  safeSetState(() =>
                                      _model.audioConversationToggleValue =
                                          newValue);
                                  if (newValue) {
                                    _model.toggleAudioConversation =
                                        !_model.toggleAudioConversation;
                                    safeSetState(() {});
                                    FFAppState().createAudioConversationSet =
                                        !(FFAppState()
                                                .createAudioConversationSet ??
                                            true);
                                    safeSetState(() {});
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Audio Conversation Set'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    _model.toggleAudioConversation = false;
                                    safeSetState(() {});
                                    FFAppState().createAudioConversationSet =
                                        false;
                                    safeSetState(() {});
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title:
                                              const Text('Audio Conversation Unset'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                activeColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).switchColour,
                                inactiveTrackColor: const Color(0xFFC4C5CB),
                                inactiveThumbColor:
                                    FlutterFlowTheme.of(context).navButton,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: const Color(0x00F7F7F7),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: FlutterFlowTheme.of(context).primary,
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(6.0),
                            bottomRight: Radius.circular(6.0),
                            topLeft: Radius.circular(6.0),
                            topRight: Radius.circular(6.0),
                          ),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 0.0,
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 8.0,
                        borderWidth: 0.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.help_outline_rounded,
                          color: FlutterFlowTheme.of(context).iconColour,
                          size: 20.0,
                        ),
                        onPressed: () {
                          print('AudioConversationInfoButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ],
              ),
              if (_model.toggleAudioConversation == true)
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 49.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: FlutterFlowTheme.of(context).primary,
                                offset: const Offset(
                                  0.0,
                                  0.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(-1.0, 1.0),
                                    child: SizedBox(
                                      width: 280.0,
                                      child: TextFormField(
                                        controller: _model
                                                .textAccompanyTextController ??=
                                            TextEditingController(
                                          text: valueOrDefault<String>(
                                            columnAutobiographiesRecord
                                                .accompanimentName,
                                            'Accompaniment Name',
                                          ),
                                        ),
                                        focusNode:
                                            _model.textAccompanyFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText:
                                              'Name of Accompanying Person...',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconColour,
                                                letterSpacing: 0.0,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColour,
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.start,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textAccompanyTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 6.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().createAccompanimentName =
                                          _model
                                              .textAccompanyTextController.text;
                                      safeSetState(() {});
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title:
                                                const Text('Accompaniment Name Set'),
                                            content: Text(_model
                                                .textAccompanyTextController
                                                .text),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.done,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColour,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: FlutterFlowTheme.of(context).primary,
                                offset: const Offset(
                                  0.0,
                                  0.0,
                                ),
                              )
                            ],
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(6.0),
                              bottomRight: Radius.circular(6.0),
                              topLeft: Radius.circular(6.0),
                              topRight: Radius.circular(6.0),
                            ),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: 8.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.help_outline_rounded,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 20.0,
                          ),
                          onPressed: () {
                            print('AudioConversationInfoButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 55.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: FlutterFlowTheme.of(context).primary,
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Use your own OpenAI API Key',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .iconColour,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Switch(
                                value: _model.userOwnOpenAIAPIToggleValue ??=
                                    columnAutobiographiesRecord
                                            .userOpenAIAPIKeySet ==
                                        true,
                                onChanged: (newValue) async {
                                  safeSetState(() => _model
                                      .userOwnOpenAIAPIToggleValue = newValue);
                                  if (newValue) {
                                    _model.toggleUserOpenAIAPI =
                                        !_model.toggleUserOpenAIAPI;
                                    safeSetState(() {});
                                    FFAppState().createOpenAIUserAPISet =
                                        !(FFAppState().createOpenAIUserAPISet ??
                                            true);
                                    safeSetState(() {});
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text(
                                              'Personal OpenAI API Key Set'),
                                          content: const Text(
                                              'Please provide your own OpenAI API Key below...'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    _model.toggleUserOpenAIAPI = false;
                                    safeSetState(() {});
                                    FFAppState().createOpenAIUserAPISet = false;
                                    safeSetState(() {});
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text(
                                              'Personal OpenAI API Key Unset'),
                                          content: const Text(
                                              'You have chosen to use My Life Story\'s OpenAI API Key...'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                },
                                activeColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).switchColour,
                                inactiveTrackColor: const Color(0xFFC4C5CB),
                                inactiveThumbColor:
                                    FlutterFlowTheme.of(context).navButton,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: const Color(0x00F7F7F7),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: FlutterFlowTheme.of(context).primary,
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(6.0),
                            bottomRight: Radius.circular(6.0),
                            topLeft: Radius.circular(6.0),
                            topRight: Radius.circular(6.0),
                          ),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderRadius: 8.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.help_outline_rounded,
                          color: FlutterFlowTheme.of(context).iconColour,
                          size: 20.0,
                        ),
                        onPressed: () {
                          print('AudioConversationInfoButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ],
              ),
              if (_model.toggleUserOpenAIAPI == true)
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 49.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: FlutterFlowTheme.of(context).primary,
                                offset: const Offset(
                                  0.0,
                                  0.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(-1.0, 1.0),
                                    child: SizedBox(
                                      width: 280.0,
                                      child: TextFormField(
                                        controller: _model
                                                .textOpenAIAPITextController ??=
                                            TextEditingController(
                                          text: valueOrDefault<String>(
                                            columnAutobiographiesRecord
                                                .userOpenAIAPIKey,
                                            'User OpenAI API Key',
                                          ),
                                        ),
                                        focusNode:
                                            _model.textOpenAIAPIFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'sk-jufh8...',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconColour,
                                                letterSpacing: 0.0,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColour,
                                              letterSpacing: 0.0,
                                            ),
                                        textAlign: TextAlign.start,
                                        cursorColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        validator: _model
                                            .textOpenAIAPITextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 6.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().createUserOpenAIAPIKey =
                                          _model
                                              .textOpenAIAPITextController.text;
                                      safeSetState(() {});
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text(
                                                'User OpenAI API Key Provided.'),
                                            content: Text(
                                                'User OpenAI API Key:                                                                     ${_model.textOpenAIAPITextController.text}                                                                    DO NOT SHOW OR PROVIDE THIS TO ANYONE.'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext),
                                                child: const Text('Ok'),
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: Icon(
                                      Icons.done,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColour,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: FlutterFlowTheme.of(context).primary,
                                offset: const Offset(
                                  0.0,
                                  0.0,
                                ),
                              )
                            ],
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(6.0),
                              bottomRight: Radius.circular(6.0),
                              topLeft: Radius.circular(6.0),
                              topRight: Radius.circular(6.0),
                            ),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: 8.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.help_outline_rounded,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 20.0,
                          ),
                          onPressed: () {
                            print('AudioConversationInfoButton pressed ...');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: FlutterFlowTheme.of(context).primary,
                            offset: const Offset(
                              0.0,
                              0.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                      ),
                      child: StreamBuilder<List<AIModelsRecord>>(
                        stream: queryAIModelsRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return const Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitFadingCircle(
                                  color: Color(0xC84B59BC),
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<AIModelsRecord>
                              aIModelDropDownAIModelsRecordList =
                              snapshot.data!;

                          return FlutterFlowDropDown<String>(
                            controller:
                                _model.aIModelDropDownValueController ??=
                                    FormFieldController<String>(
                              _model.aIModelDropDownValue ??=
                                  valueOrDefault<String>(
                                columnAutobiographiesRecord
                                    .autobiographyAIModel,
                                'AI Model',
                              ),
                            ),
                            options: aIModelDropDownAIModelsRecordList
                                .map((e) => e.aIModel)
                                .toList(),
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.aIModelDropDownValue = val);
                              FFAppState().createAIModel =
                                  _model.aIModelDropDownValue!;
                              safeSetState(() {});
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('AI Model Set'),
                                    content: Text(
                                        'AI Model Set To: ${_model.aIModelDropDownValue}'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            width: 200.0,
                            height: 40.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).iconColour,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'AI Model',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 0.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          );
                        },
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: FlutterFlowTheme.of(context).primary,
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(6.0),
                            bottomRight: Radius.circular(6.0),
                            topLeft: Radius.circular(6.0),
                            topRight: Radius.circular(6.0),
                          ),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderRadius: 8.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.help_outline_rounded,
                          color: FlutterFlowTheme.of(context).iconColour,
                          size: 20.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: FlutterFlowTheme.of(context).primary,
                            offset: const Offset(
                              0.0,
                              0.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                      ),
                      child: StreamBuilder<List<AutobiographyTypesRecord>>(
                        stream: queryAutobiographyTypesRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return const Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitFadingCircle(
                                  color: Color(0xC84B59BC),
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<AutobiographyTypesRecord>
                              aITypeDropDownAutobiographyTypesRecordList =
                              snapshot.data!;

                          return FlutterFlowDropDown<String>(
                            controller: _model.aITypeDropDownValueController ??=
                                FormFieldController<String>(
                              _model.aITypeDropDownValue ??=
                                  valueOrDefault<String>(
                                columnAutobiographiesRecord
                                    .autobiographyAssistantType,
                                'AI Autobiography Type',
                              ),
                            ),
                            options: aITypeDropDownAutobiographyTypesRecordList
                                .map((e) => e.autobiographyType)
                                .toList(),
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.aITypeDropDownValue = val);
                              FFAppState().createAIAssistantType =
                                  _model.aITypeDropDownValue!;
                              safeSetState(() {});
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: const Text('AI Assistant Type Set'),
                                    content: Text(
                                        'AI Assistant Type Set To: ${_model.aITypeDropDownValue}'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: const Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            width: 200.0,
                            height: 40.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).iconColour,
                                  letterSpacing: 0.0,
                                ),
                            hintText: 'AI Autobiography Type',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 0.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          );
                        },
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: FlutterFlowTheme.of(context).primary,
                              offset: const Offset(
                                0.0,
                                0.0,
                              ),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(6.0),
                            bottomRight: Radius.circular(6.0),
                            topLeft: Radius.circular(6.0),
                            topRight: Radius.circular(6.0),
                          ),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderRadius: 8.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.help_outline_rounded,
                          color: FlutterFlowTheme.of(context).iconColour,
                          size: 20.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ],
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ].divide(const SizedBox(height: 16.0)),
          );
        },
      ),
    );
  }
}
