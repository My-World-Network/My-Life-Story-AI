import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'create_autobiography_a_i_settings_component_model.dart';
export 'create_autobiography_a_i_settings_component_model.dart';

class CreateAutobiographyAISettingsComponentWidget extends StatefulWidget {
  const CreateAutobiographyAISettingsComponentWidget({
    super.key,
    this.refAutobiography,
    this.refUserChapters,
    this.refUserAutobiography,
    this.refAIChapters,
    this.refAIAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserChapters;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIChapters;
  final DocumentReference? refAIAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<CreateAutobiographyAISettingsComponentWidget> createState() =>
      _CreateAutobiographyAISettingsComponentWidgetState();
}

class _CreateAutobiographyAISettingsComponentWidgetState
    extends State<CreateAutobiographyAISettingsComponentWidget> {
  late CreateAutobiographyAISettingsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => CreateAutobiographyAISettingsComponentModel());

    _model.audioConversationToggleValue = false;
    _model.textAccompanyTextController ??= TextEditingController();
    _model.textAccompanyFocusNode ??= FocusNode();

    _model.userOwnOpenAIAPIToggleValue = false;
    _model.textOpenAIAPITextController ??= TextEditingController();
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
      padding: EdgeInsetsDirectional.fromSTEB(
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 6.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 6.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 6.0;
              } else {
                return 424.0;
              }
            }(),
            0.0,
          ),
          0.0,
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 6.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 6.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 6.0;
              } else {
                return 424.0;
              }
            }(),
            0.0,
          ),
          6.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'AI Settings',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Inter Tight',
                      fontSize: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 21.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 21.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 21.0;
                        } else {
                          return 28.0;
                        }
                      }(),
                      letterSpacing: 0.0,
                      shadows: [
                        const Shadow(
                          color: Color(0x821B1B1B),
                          offset: Offset(2.0, 2.0),
                          blurRadius: 2.0,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 80.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 80.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 80.0;
                      } else {
                        return 80.0;
                      }
                    }(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2.0,
                          color: Color(0x87000000),
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).iconColour,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    6.0, 6.0, 6.0, 6.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColour,
                                              fontSize: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 14.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 14.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 14.0;
                                                } else {
                                                  return 18.0;
                                                }
                                              }(),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Switch(
                                      value:
                                          _model.audioConversationToggleValue!,
                                      onChanged: (newValue) async {
                                        safeSetState(() => _model
                                                .audioConversationToggleValue =
                                            newValue);
                                        if (newValue) {
                                          await widget.refAutobiography!.update(
                                              createAutobiographiesRecordData(
                                            audioConversationSet: true,
                                          ));

                                          await widget.refAIInstructions!
                                              .update(
                                                  createAIInstructionsRecordData(
                                            audioConversation: true,
                                          ));
                                        } else {
                                          await widget.refAutobiography!.update(
                                              createAutobiographiesRecordData(
                                            audioConversationSet: false,
                                          ));

                                          await widget.refAIInstructions!
                                              .update(
                                                  createAIInstructionsRecordData(
                                            audioConversation: false,
                                          ));
                                        }
                                      },
                                      activeColor: const Color(0xFF436EFF),
                                      activeTrackColor: const Color(0xFF97BAF2),
                                      inactiveTrackColor: const Color(0xFFC4C5CB),
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .navButton,
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
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: const Color(0x00F7F7F7),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x83000000),
                          offset: Offset(
                            2.0,
                            2.0,
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
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 8.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                Flexible(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Color(0x8F000000),
                            offset: Offset(
                              2.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).iconColour,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 1.0),
                                child: TextFormField(
                                  controller:
                                      _model.textAccompanyTextController,
                                  focusNode: _model.textAccompanyFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textAccompanyTextController',
                                    const Duration(milliseconds: 2000),
                                    () async {
                                      await widget.refAutobiography!.update({
                                        ...createAutobiographiesRecordData(
                                          accompanimentName: _model
                                              .textAccompanyTextController.text,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'Autobiography_Updated_At':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });

                                      await widget.refAIInstructions!.update({
                                        ...createAIInstructionsRecordData(
                                          accompanyingPerson: _model
                                              .textAccompanyTextController.text,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'AI_Instructions_Updated_At':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                    },
                                  ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 14.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 14.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 14.0;
                                            } else {
                                              return 18.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Name of Accompanying Person...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 14.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 14.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 14.0;
                                            } else {
                                              return 18.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 14.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 14.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 14.0;
                                          } else {
                                            return 18.0;
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                      ),
                                  textAlign: TextAlign.start,
                                  maxLength: 24,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .textAccompanyTextControllerValidator
                                      .asValidator(context),
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
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x83000000),
                            offset: Offset(
                              2.0,
                              2.0,
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
                          color: Colors.transparent,
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
              Flexible(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2.0,
                          color: Color(0x84000000),
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).iconColour,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          12.0, 12.0, 12.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    6.0, 6.0, 6.0, 6.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColour,
                                              fontSize: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 14.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 14.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 14.0;
                                                } else {
                                                  return 18.0;
                                                }
                                              }(),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Switch(
                                      value:
                                          _model.userOwnOpenAIAPIToggleValue!,
                                      onChanged: (newValue) async {
                                        safeSetState(() =>
                                            _model.userOwnOpenAIAPIToggleValue =
                                                newValue);
                                        if (newValue) {
                                          await widget.refAutobiography!.update(
                                              createAutobiographiesRecordData(
                                            userOpenAIAPIKeySet: true,
                                          ));

                                          await widget.refAIInstructions!
                                              .update(
                                                  createAIInstructionsRecordData(
                                            aIUserOwnOpenAIAPIKey: true,
                                          ));
                                        } else {
                                          await widget.refAutobiography!.update(
                                              createAutobiographiesRecordData(
                                            userOpenAIAPIKeySet: false,
                                          ));

                                          await widget.refAIInstructions!
                                              .update(
                                                  createAIInstructionsRecordData(
                                            aIUserOwnOpenAIAPIKey: false,
                                          ));
                                        }
                                      },
                                      activeColor: const Color(0xFF436EFF),
                                      activeTrackColor: const Color(0xFF97BAF2),
                                      inactiveTrackColor: const Color(0xFFC4C5CB),
                                      inactiveThumbColor:
                                          FlutterFlowTheme.of(context)
                                              .navButton,
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
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: const Color(0x00F7F7F7),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x83000000),
                          offset: Offset(
                            2.0,
                            2.0,
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
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 8.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                Flexible(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 49.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 49.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 49.0;
                        } else {
                          return 68.0;
                        }
                      }(),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 2.0,
                            color: Color(0x8F000000),
                            offset: Offset(
                              2.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).iconColour,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 1.0),
                                child: TextFormField(
                                  controller:
                                      _model.textOpenAIAPITextController,
                                  focusNode: _model.textOpenAIAPIFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textOpenAIAPITextController',
                                    const Duration(milliseconds: 2000),
                                    () async {
                                      await widget.refAutobiography!.update(
                                          createAutobiographiesRecordData(
                                        userOpenAIAPIKey: _model
                                            .textOpenAIAPITextController.text,
                                      ));

                                      await widget.refAIInstructions!.update({
                                        ...createAIInstructionsRecordData(
                                          aIUserOpenAIKey: _model
                                              .textOpenAIAPITextController.text,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'AI_Instructions_Updated_At':
                                                FieldValue.serverTimestamp(),
                                          },
                                        ),
                                      });
                                    },
                                  ),
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 14.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 14.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 14.0;
                                            } else {
                                              return 18.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'sk-jufh8...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 14.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 14.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 14.0;
                                            } else {
                                              return 18.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 14.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 14.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 14.0;
                                          } else {
                                            return 18.0;
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                      ),
                                  textAlign: TextAlign.start,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .textOpenAIAPITextControllerValidator
                                      .asValidator(context),
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
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x83000000),
                            offset: Offset(
                              2.0,
                              2.0,
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
                          color: Colors.transparent,
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
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0x8D000000),
                        offset: Offset(
                          2.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).iconColour,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
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
                        List<AIModelsRecord> aIModelDropDownAIModelsRecordList =
                            snapshot.data!;

                        return FlutterFlowDropDown<String>(
                          controller: _model.aIModelDropDownValueController ??=
                              FormFieldController<String>(null),
                          options: aIModelDropDownAIModelsRecordList
                              .map((e) => e.aIModel)
                              .toList(),
                          onChanged: (val) async {
                            safeSetState(
                                () => _model.aIModelDropDownValue = val);
                            await widget.refAutobiography!
                                .update(createAutobiographiesRecordData(
                              autobiographyAIModel: _model.aIModelDropDownValue,
                            ));

                            await widget.refAIInstructions!
                                .update(createAIInstructionsRecordData(
                              aIModel: _model.aIModelDropDownValue,
                            ));
                            FFAppState().createAIModel =
                                _model.aIModelDropDownValue!;
                            safeSetState(() {});
                          },
                          height: 40.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).iconColour,
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 14.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 14.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 14.0;
                                  } else {
                                    return 18.0;
                                  }
                                }(),
                                letterSpacing: 0.0,
                              ),
                          hintText: 'Select AI Model...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
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
              ),
              Stack(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x83000000),
                          offset: Offset(
                            2.0,
                            2.0,
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
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 8.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0x90000000),
                        offset: Offset(
                          2.0,
                          2.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).iconColour,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
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
                              FormFieldController<String>(null),
                          options: aITypeDropDownAutobiographyTypesRecordList
                              .map((e) => e.autobiographyType)
                              .toList(),
                          onChanged: (val) async {
                            safeSetState(
                                () => _model.aITypeDropDownValue = val);
                            await widget.refAutobiography!
                                .update(createAutobiographiesRecordData(
                              autobiographyAssistantType:
                                  _model.aITypeDropDownValue,
                            ));

                            await widget.refAIInstructions!
                                .update(createAIInstructionsRecordData(
                              aIType: _model.aITypeDropDownValue,
                            ));
                            FFAppState().createAIAssistantType =
                                _model.aITypeDropDownValue!;
                            safeSetState(() {});
                          },
                          width: 200.0,
                          height: 40.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Inter',
                                color: FlutterFlowTheme.of(context).iconColour,
                                fontSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 14.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 14.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 14.0;
                                  } else {
                                    return 18.0;
                                  }
                                }(),
                                letterSpacing: 0.0,
                              ),
                          hintText: 'Select AI Editor Type...',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
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
              ),
              Stack(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x83000000),
                          offset: Offset(
                            2.0,
                            2.0,
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
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 8.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
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
      ),
    );
  }
}
