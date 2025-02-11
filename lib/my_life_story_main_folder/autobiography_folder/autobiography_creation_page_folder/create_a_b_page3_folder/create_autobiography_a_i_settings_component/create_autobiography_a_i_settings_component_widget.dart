import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
    extends State<CreateAutobiographyAISettingsComponentWidget>
    with TickerProviderStateMixin {
  late CreateAutobiographyAISettingsComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

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

    animationsMap.addAll({
      'columnOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(
                height: 3.0,
                thickness: 3.0,
                color: FlutterFlowTheme.of(context).iconColour,
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).headerColour,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 10.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 12.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 12.0;
                          } else {
                            return 324.0;
                          }
                        }(),
                        0.0,
                      ),
                      12.0,
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 12.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 12.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 12.0;
                          } else {
                            return 336.0;
                          }
                        }(),
                        0.0,
                      ),
                      12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              2.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'AI Settings',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                              fontFamily: 'Lora',
                              fontSize: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 32.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 32.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 32.0;
                                } else {
                                  return 46.0;
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
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 3.0,
                thickness: 3.0,
                color: FlutterFlowTheme.of(context).iconColour,
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).headerColour,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 6.0;
                              } else {
                                return 12.0;
                              }
                            }(),
                            0.0,
                          ),
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 6.0;
                              } else {
                                return 12.0;
                              }
                            }(),
                            0.0,
                          )),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Enable Audio Conversation',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Lora',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 18.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 18.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 18.0;
                                    } else {
                                      return 32.0;
                                    }
                                  }(),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  shadows: [
                                    Shadow(
                                      color: FlutterFlowTheme.of(context)
                                          .headerTextShadow,
                                      offset: const Offset(2.0, 2.0),
                                      blurRadius: 2.0,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    0.0,
                                    valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 6.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 6.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 6.0;
                                        } else {
                                          return 24.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    0.0),
                                child: Transform.scale(
                                  scaleX: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 1.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 1.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 1.0;
                                    } else {
                                      return 1.35;
                                    }
                                  }(),
                                  scaleY: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 1.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 1.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 1.0;
                                    } else {
                                      return 1.35;
                                    }
                                  }(),
                                  child: Switch(
                                    value: _model.audioConversationToggleValue!,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.audioConversationToggleValue =
                                              newValue);
                                      if (newValue) {
                                        await widget.refAutobiography!.update(
                                            createAutobiographiesRecordData(
                                          audioConversationSet: true,
                                        ));

                                        await widget.refAIInstructions!.update(
                                            createAIInstructionsRecordData(
                                          audioConversation: true,
                                        ));
                                        _model.toggleAudioConversation = true;
                                        safeSetState(() {});
                                        await Future.delayed(
                                            const Duration(milliseconds: 50));
                                        if (animationsMap[
                                                'columnOnActionTriggerAnimation1'] !=
                                            null) {
                                          await animationsMap[
                                                  'columnOnActionTriggerAnimation1']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                            const Duration(milliseconds: 500));
                                        if (animationsMap[
                                                'columnOnActionTriggerAnimation1'] !=
                                            null) {
                                          animationsMap[
                                                  'columnOnActionTriggerAnimation1']!
                                              .controller
                                              .stop();
                                        }
                                      } else {
                                        if (animationsMap[
                                                'columnOnActionTriggerAnimation1'] !=
                                            null) {
                                          await animationsMap[
                                                  'columnOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse();
                                        }
                                        await Future.delayed(
                                            const Duration(milliseconds: 500));
                                        if (animationsMap[
                                                'columnOnActionTriggerAnimation1'] !=
                                            null) {
                                          animationsMap[
                                                  'columnOnActionTriggerAnimation1']!
                                              .controller
                                              .stop();
                                        }

                                        await widget.refAutobiography!.update(
                                            createAutobiographiesRecordData(
                                          audioConversationSet: false,
                                        ));

                                        await widget.refAIInstructions!.update(
                                            createAIInstructionsRecordData(
                                          audioConversation: false,
                                        ));
                                        _model.toggleAudioConversation = false;
                                        safeSetState(() {});
                                      }
                                    },
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context)
                                            .switchColour,
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .negativeOutline,
                                  ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).iconColour,
                                borderRadius: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 12.0;
                                  } else {
                                    return 24.0;
                                  }
                                }(),
                                borderWidth: 3.0,
                                buttonSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 40.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 40.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 40.0;
                                  } else {
                                    return 48.0;
                                  }
                                }(),
                                fillColor: FlutterFlowTheme.of(context).iconBG,
                                icon: Icon(
                                  Icons.help_outline_rounded,
                                  color: FlutterFlowTheme.of(context).navButton,
                                  size: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 20.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 20.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 20.0;
                                    } else {
                                      return 30.0;
                                    }
                                  }(),
                                ),
                                onPressed: () {
                                  print(
                                      'AudioConversationInfoButton pressed ...');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                ],
              ),
              if (_model.toggleAudioConversation == true)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).iconBG,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 12.0;
                                  } else {
                                    return 324.0;
                                  }
                                }(),
                                0.0,
                              ),
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 12.0;
                                  } else {
                                    return 16.0;
                                  }
                                }(),
                                0.0,
                              ),
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 12.0;
                                  } else {
                                    return 324.0;
                                  }
                                }(),
                                0.0,
                              ),
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 12.0;
                                  } else {
                                    return 16.0;
                                  }
                                }(),
                                0.0,
                              )),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.0, 1.0),
                                  child: SizedBox(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 364.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 364.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 364.0;
                                      } else {
                                        return 724.0;
                                      }
                                    }(),
                                    child: TextFormField(
                                      controller:
                                          _model.textAccompanyTextController,
                                      focusNode: _model.textAccompanyFocusNode,
                                      autofocus: false,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lora',
                                              fontSize: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 18.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 18.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 18.0;
                                                } else {
                                                  return 21.0;
                                                }
                                              }(),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        hintText:
                                            'Name of Accompanying Person...',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Lora',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColour,
                                              fontSize: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 18.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 18.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 18.0;
                                                } else {
                                                  return 21.0;
                                                }
                                              }(),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 8.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                            0.0,
                                          )),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 8.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                            0.0,
                                          )),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 8.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                            0.0,
                                          )),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                              valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 8.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 8.0;
                                              } else {
                                                return 12.0;
                                              }
                                            }(),
                                            0.0,
                                          )),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lora',
                                            fontSize: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 18.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 18.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 18.0;
                                              } else {
                                                return 21.0;
                                              }
                                            }(),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      textAlign: TextAlign.start,
                                      minLines: 1,
                                      maxLength: 24,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .textAccompanyTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 12.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 12.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 12.0;
                                        } else {
                                          return 24.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    0.0,
                                    0.0,
                                    0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: FlutterFlowTheme.of(context)
                                      .positiveOutline,
                                  borderRadius: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 12.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 12.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 12.0;
                                    } else {
                                      return 16.0;
                                    }
                                  }(),
                                  borderWidth: 3.0,
                                  buttonSize: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 40.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 40.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 40.0;
                                    } else {
                                      return 48.0;
                                    }
                                  }(),
                                  fillColor:
                                      FlutterFlowTheme.of(context).positiveFill,
                                  hoverColor: FlutterFlowTheme.of(context)
                                      .positiveHover,
                                  hoverIconColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: Icon(
                                    Icons.save,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 24.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 20.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 20.0;
                                      } else {
                                        return 32.0;
                                      }
                                    }(),
                                  ),
                                  onPressed: () async {
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
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        height: 3.0,
                        thickness: 3.0,
                        color: FlutterFlowTheme.of(context).iconColour,
                      ),
                    ],
                  ).animateOnActionTrigger(
                    animationsMap['columnOnActionTriggerAnimation1']!,
                  ),
                ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).headerColour,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 6.0;
                              } else {
                                return 12.0;
                              }
                            }(),
                            0.0,
                          ),
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 6.0;
                              } else {
                                return 12.0;
                              }
                            }(),
                            0.0,
                          )),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Use Your Own OpenAI API',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Lora',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 18.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 18.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 18.0;
                                    } else {
                                      return 32.0;
                                    }
                                  }(),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  shadows: [
                                    Shadow(
                                      color: FlutterFlowTheme.of(context)
                                          .headerTextShadow,
                                      offset: const Offset(2.0, 2.0),
                                      blurRadius: 2.0,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0,
                                    0.0,
                                    valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 6.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 6.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 6.0;
                                        } else {
                                          return 24.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    0.0),
                                child: Transform.scale(
                                  scaleX: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 1.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 1.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 1.0;
                                    } else {
                                      return 1.35;
                                    }
                                  }(),
                                  scaleY: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 1.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 1.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 1.0;
                                    } else {
                                      return 1.35;
                                    }
                                  }(),
                                  child: Switch(
                                    value: _model.userOwnOpenAIAPIToggleValue!,
                                    onChanged: (newValue) async {
                                      safeSetState(() =>
                                          _model.userOwnOpenAIAPIToggleValue =
                                              newValue);
                                      if (newValue) {
                                        await widget.refAutobiography!.update(
                                            createAutobiographiesRecordData(
                                          userOpenAIAPIKeySet: true,
                                        ));

                                        await widget.refAIInstructions!.update(
                                            createAIInstructionsRecordData(
                                          aIUserOwnOpenAIAPIKey: true,
                                        ));
                                        _model.toggleUserOpenAIAPI = true;
                                        safeSetState(() {});
                                        await Future.delayed(
                                            const Duration(milliseconds: 50));
                                        if (animationsMap[
                                                'columnOnActionTriggerAnimation2'] !=
                                            null) {
                                          await animationsMap[
                                                  'columnOnActionTriggerAnimation2']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                        await Future.delayed(
                                            const Duration(milliseconds: 500));
                                        if (animationsMap[
                                                'columnOnActionTriggerAnimation2'] !=
                                            null) {
                                          animationsMap[
                                                  'columnOnActionTriggerAnimation2']!
                                              .controller
                                              .stop();
                                        }
                                      } else {
                                        if (animationsMap[
                                                'columnOnActionTriggerAnimation2'] !=
                                            null) {
                                          await animationsMap[
                                                  'columnOnActionTriggerAnimation2']!
                                              .controller
                                              .reverse();
                                        }
                                        await Future.delayed(
                                            const Duration(milliseconds: 500));
                                        if (animationsMap[
                                                'columnOnActionTriggerAnimation2'] !=
                                            null) {
                                          animationsMap[
                                                  'columnOnActionTriggerAnimation2']!
                                              .controller
                                              .stop();
                                        }

                                        await widget.refAutobiography!.update(
                                            createAutobiographiesRecordData(
                                          userOpenAIAPIKeySet: false,
                                        ));

                                        await widget.refAIInstructions!.update(
                                            createAIInstructionsRecordData(
                                          aIUserOwnOpenAIAPIKey: false,
                                        ));
                                        _model.toggleAudioConversation = false;
                                        safeSetState(() {});
                                      }
                                    },
                                    activeColor: const Color(0xFF436EFF),
                                    activeTrackColor: const Color(0xFF97BAF2),
                                    inactiveTrackColor: const Color(0xFFC4C5CB),
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context).navButton,
                                  ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).iconColour,
                                borderRadius: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 12.0;
                                  } else {
                                    return 24.0;
                                  }
                                }(),
                                borderWidth: 3.0,
                                buttonSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 40.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 40.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 40.0;
                                  } else {
                                    return 48.0;
                                  }
                                }(),
                                fillColor: FlutterFlowTheme.of(context).iconBG,
                                icon: Icon(
                                  Icons.help_outline_rounded,
                                  color: FlutterFlowTheme.of(context).navButton,
                                  size: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 20.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 20.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 20.0;
                                    } else {
                                      return 30.0;
                                    }
                                  }(),
                                ),
                                onPressed: () {
                                  print(
                                      'AudioConversationInfoButton pressed ...');
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                ],
              ),
              if (_model.toggleUserOpenAIAPI == true)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).iconBG,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 12.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 12.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 12.0;
                                } else {
                                  return 324.0;
                                }
                              }(),
                              0.0,
                            ),
                            12.0,
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 12.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 12.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 12.0;
                                } else {
                                  return 324.0;
                                }
                              }(),
                              0.0,
                            ),
                            12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Align(
                                alignment: const AlignmentDirectional(-1.0, 1.0),
                                child: TextFormField(
                                  controller:
                                      _model.textOpenAIAPITextController,
                                  focusNode: _model.textOpenAIAPIFocusNode,
                                  autofocus: false,
                                  obscureText: !_model.textOpenAIAPIVisibility,
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
                                              return 18.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 18.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 18.0;
                                            } else {
                                              return 21.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    hintText: 'sk-jufh8...',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Lora',
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 18.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 18.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 18.0;
                                            } else {
                                              return 21.0;
                                            }
                                          }(),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 8.0;
                                          } else {
                                            return 12.0;
                                          }
                                        }(),
                                        0.0,
                                      )),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 8.0;
                                          } else {
                                            return 12.0;
                                          }
                                        }(),
                                        0.0,
                                      )),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 8.0;
                                          } else {
                                            return 12.0;
                                          }
                                        }(),
                                        0.0,
                                      )),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          valueOrDefault<double>(
                                        () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 8.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 8.0;
                                          } else {
                                            return 12.0;
                                          }
                                        }(),
                                        0.0,
                                      )),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    suffixIcon: InkWell(
                                      onTap: () => safeSetState(
                                        () => _model.textOpenAIAPIVisibility =
                                            !_model.textOpenAIAPIVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        _model.textOpenAIAPIVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .iconColour,
                                        size: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 24.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 24.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 24.0;
                                          } else {
                                            return 32.0;
                                          }
                                        }(),
                                      ),
                                    ),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 12.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 12.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 12.0;
                                      } else {
                                        return 24.0;
                                      }
                                    }(),
                                    0.0,
                                  ),
                                  0.0,
                                  0.0,
                                  0.0),
                              child: FlutterFlowIconButton(
                                borderColor: FlutterFlowTheme.of(context)
                                    .positiveOutline,
                                borderRadius: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 12.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 12.0;
                                  } else {
                                    return 16.0;
                                  }
                                }(),
                                borderWidth: 3.0,
                                buttonSize: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 40.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 40.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 40.0;
                                  } else {
                                    return 48.0;
                                  }
                                }(),
                                fillColor:
                                    FlutterFlowTheme.of(context).positiveFill,
                                hoverColor:
                                    FlutterFlowTheme.of(context).positiveHover,
                                hoverIconColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                icon: Icon(
                                  Icons.save,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  size: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 24.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 20.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 20.0;
                                    } else {
                                      return 32.0;
                                    }
                                  }(),
                                ),
                                onPressed: () async {
                                  await widget.refAutobiography!
                                      .update(createAutobiographiesRecordData(
                                    userOpenAIAPIKey:
                                        _model.textOpenAIAPITextController.text,
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
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 3.0,
                      thickness: 3.0,
                      color: FlutterFlowTheme.of(context).iconColour,
                    ),
                  ],
                ).animateOnActionTrigger(
                  animationsMap['columnOnActionTriggerAnimation2']!,
                ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).headerColour,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          12.0,
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'AI Model',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Lora',
                              color: FlutterFlowTheme.of(context).primaryText,
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
                                  return 32.0;
                                }
                              }(),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              shadows: [
                                Shadow(
                                  color: FlutterFlowTheme.of(context)
                                      .headerTextShadow,
                                  offset: const Offset(2.0, 2.0),
                                  blurRadius: 2.0,
                                )
                              ],
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).iconColour,
                            borderRadius: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 24.0;
                              }
                            }(),
                            borderWidth: 3.0,
                            buttonSize: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 40.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 40.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 40.0;
                              } else {
                                return 48.0;
                              }
                            }(),
                            fillColor: FlutterFlowTheme.of(context).iconBG,
                            icon: Icon(
                              Icons.help_outline_rounded,
                              color: FlutterFlowTheme.of(context).navButton,
                              size: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 20.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 20.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 20.0;
                                } else {
                                  return 30.0;
                                }
                              }(),
                            ),
                            onPressed: () {
                              print('AudioConversationInfoButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).iconBG,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).iconColour,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          12.0,
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          StreamBuilder<List<AIModelsRecord>>(
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
                                        FormFieldController<String>(null),
                                options: aIModelDropDownAIModelsRecordList
                                    .map((e) => e.aIModel)
                                    .toList(),
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.aIModelDropDownValue = val);
                                  await widget.refAutobiography!
                                      .update(createAutobiographiesRecordData(
                                    autobiographyAIModel:
                                        _model.aIModelDropDownValue,
                                  ));

                                  await widget.refAIInstructions!
                                      .update(createAIInstructionsRecordData(
                                    aIModel: _model.aIModelDropDownValue,
                                  ));
                                  FFAppState().createAIModel =
                                      _model.aIModelDropDownValue!;
                                  safeSetState(() {});
                                },
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 364.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 364.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 364.0;
                                  } else {
                                    return 724.0;
                                  }
                                }(),
                                height: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 50.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 50.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 50.0;
                                  } else {
                                    return 64.0;
                                  }
                                }(),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lora',
                                      color: FlutterFlowTheme.of(context)
                                          .iconColour,
                                      fontSize: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 16.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 16.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 16.0;
                                        } else {
                                          return 21.0;
                                        }
                                      }(),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintText: 'Select AI Model...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).iconColour,
                                  size: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 32.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 32.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 32.0;
                                    } else {
                                      return 40.0;
                                    }
                                  }(),
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 8.0;
                                  } else {
                                    return 12.0;
                                  }
                                }(),
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                    ),
                  ),
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).headerColour,
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          12.0,
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'AI Assistant',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Lora',
                              color: FlutterFlowTheme.of(context).primaryText,
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
                                  return 32.0;
                                }
                              }(),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              shadows: [
                                Shadow(
                                  color: FlutterFlowTheme.of(context)
                                      .headerTextShadow,
                                  offset: const Offset(2.0, 2.0),
                                  blurRadius: 2.0,
                                )
                              ],
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor:
                                FlutterFlowTheme.of(context).iconColour,
                            borderRadius: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 24.0;
                              }
                            }(),
                            borderWidth: 3.0,
                            buttonSize: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 40.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 40.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 40.0;
                              } else {
                                return 48.0;
                              }
                            }(),
                            fillColor: FlutterFlowTheme.of(context).iconBG,
                            icon: Icon(
                              Icons.help_outline_rounded,
                              color: FlutterFlowTheme.of(context).navButton,
                              size: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 20.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 20.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 20.0;
                                } else {
                                  return 30.0;
                                }
                              }(),
                            ),
                            onPressed: () {
                              print('AudioConversationInfoButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).iconBG,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).iconColour,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          12.0,
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 12.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 12.0;
                              } else {
                                return 324.0;
                              }
                            }(),
                            0.0,
                          ),
                          12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          StreamBuilder<List<AutobiographyTypesRecord>>(
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
                                controller:
                                    _model.aITypeDropDownValueController ??=
                                        FormFieldController<String>(null),
                                options:
                                    aITypeDropDownAutobiographyTypesRecordList
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
                                width: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 364.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 364.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 364.0;
                                  } else {
                                    return 724.0;
                                  }
                                }(),
                                height: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 50.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 50.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 50.0;
                                  } else {
                                    return 64.0;
                                  }
                                }(),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Lora',
                                      color: FlutterFlowTheme.of(context)
                                          .iconColour,
                                      fontSize: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 16.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 16.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 16.0;
                                        } else {
                                          return 21.0;
                                        }
                                      }(),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                hintText: 'Select AI Editor Type...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).iconColour,
                                  size: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 32.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 32.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 32.0;
                                    } else {
                                      return 40.0;
                                    }
                                  }(),
                                ),
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                elevation: 2.0,
                                borderColor: Colors.transparent,
                                borderWidth: 0.0,
                                borderRadius: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 8.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 8.0;
                                  } else {
                                    return 12.0;
                                  }
                                }(),
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                hidesUnderline: true,
                                isOverButton: false,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ].divide(const SizedBox(width: 8.0)),
                      ),
                    ),
                  ),
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                ],
              ),
            ],
          ),
        ].divide(const SizedBox(height: 24.0)).addToStart(SizedBox(height: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 144.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 144.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 144.0;
          } else {
            return 164.0;
          }
        }())).addToEnd(const SizedBox(height: 236.0)),
      ),
    );
  }
}
