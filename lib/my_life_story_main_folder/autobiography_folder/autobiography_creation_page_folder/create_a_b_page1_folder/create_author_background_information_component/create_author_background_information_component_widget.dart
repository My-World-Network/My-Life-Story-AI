import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'create_author_background_information_component_model.dart';
export 'create_author_background_information_component_model.dart';

class CreateAuthorBackgroundInformationComponentWidget extends StatefulWidget {
  const CreateAuthorBackgroundInformationComponentWidget({
    super.key,
    this.refAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<CreateAuthorBackgroundInformationComponentWidget> createState() =>
      _CreateAuthorBackgroundInformationComponentWidgetState();
}

class _CreateAuthorBackgroundInformationComponentWidgetState
    extends State<CreateAuthorBackgroundInformationComponentWidget>
    with TickerProviderStateMixin {
  late CreateAuthorBackgroundInformationComponentModel _model;

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
        context, () => CreateAuthorBackgroundInformationComponentModel());

    _model.person1NameTextInputFocusNode ??= FocusNode();

    _model.person1RelationTextInputFocusNode ??= FocusNode();

    _model.person1ContentTextInputFocusNode ??= FocusNode();

    _model.person2NameTextInputFocusNode ??= FocusNode();

    _model.person2RelationTextInputFocusNode ??= FocusNode();

    _model.person2ContentTextInputFocusNode ??= FocusNode();

    _model.person3NameTextInputFocusNode ??= FocusNode();

    _model.person3RelationTextInputFocusNode ??= FocusNode();

    _model.person3ContentTextInputFocusNode ??= FocusNode();

    _model.textAuthorBackgroundInfoFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
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
      'containerOnActionTriggerAnimation2': AnimationInfo(
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
      'containerOnActionTriggerAnimation3': AnimationInfo(
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
      'containerOnActionTriggerAnimation4': AnimationInfo(
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
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
      child: StreamBuilder<AIInstructionsRecord>(
        stream: AIInstructionsRecord.getDocument(widget.refAIInstructions!),
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

          final authorBackgroundColumnAIInstructionsRecord = snapshot.data!;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0.0,
                    0.0,
                    0.0,
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
                          return 24.0;
                        }
                      }(),
                      0.0,
                    )),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      height: 3.0,
                      thickness: 3.0,
                      color: FlutterFlowTheme.of(context).iconColour,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 6.0,
                          sigmaY: 6.0,
                        ),
                        child: Container(
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
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 12.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 12.0;
                                    } else {
                                      return 336.0;
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
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 12.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
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
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Author\'s Background',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Lora',
                                            fontSize: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 26.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 26.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 26.0;
                                              } else {
                                                return 42.0;
                                              }
                                            }(),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
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
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          if (_model.toggleExpandAuthorBG ==
                                              false)
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.toggleExpandAuthorBG =
                                                    true;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 100));
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation1']!
                                                      .controller
                                                      .forward(from: 0.0);
                                                }
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500));
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  animationsMap[
                                                          'containerOnActionTriggerAnimation1']!
                                                      .controller
                                                      .stop();
                                                }
                                              },
                                              child: Icon(
                                                Icons.expand_more,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 36.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 42.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 42.0;
                                                  } else {
                                                    return 52.0;
                                                  }
                                                }(),
                                              ),
                                            ),
                                          if (_model.toggleExpandAuthorBG ==
                                              true)
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'containerOnActionTriggerAnimation1']!
                                                      .controller
                                                      .reverse();
                                                }
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 500));
                                                if (animationsMap[
                                                        'containerOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  animationsMap[
                                                          'containerOnActionTriggerAnimation1']!
                                                      .controller
                                                      .stop();
                                                }
                                                _model.toggleExpandAuthorBG =
                                                    false;
                                                safeSetState(() {});
                                              },
                                              child: Icon(
                                                Icons.expand_less,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 36.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 42.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 42.0;
                                                  } else {
                                                    return 52.0;
                                                  }
                                                }(),
                                              ),
                                            ),
                                        ],
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
                    Divider(
                      height: 3.0,
                      thickness: 3.0,
                      color: FlutterFlowTheme.of(context).iconColour,
                    ),
                  ],
                ),
              ),
              if (_model.toggleExpandAuthorBG == true)
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).iconBG,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            0.0,
                            0.0,
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
                                  return 24.0;
                                }
                              }(),
                              0.0,
                            )),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).iconBG,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Divider(
                                    height: 3.0,
                                    thickness: 3.0,
                                    color:
                                        FlutterFlowTheme.of(context).iconColour,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .headerColour,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 12.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 12.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 12.0;
                                              } else {
                                                return 336.0;
                                              }
                                            }(),
                                            0.0,
                                          ),
                                          12.0,
                                          valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 12.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 12.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Significant People In Your Life',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Lora',
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 21.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 18.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 18.0;
                                                          } else {
                                                            return 32.0;
                                                          }
                                                        }(),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                                    color:
                                        FlutterFlowTheme.of(context).iconColour,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 336.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 24.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 336.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 24.0;
                                            }
                                          }(),
                                          0.0,
                                        )),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                                valueOrDefault<double>(
                                              () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 6.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 6.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 6.0;
                                                } else {
                                                  return 12.0;
                                                }
                                              }(),
                                              0.0,
                                            )),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'To enrich your autobiography, please identify three individuals who have significantly influenced your life, detailing their names, your relationships, and their impacts.',
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lora',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconColour,
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 16.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 16.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 16.0;
                                                                } else {
                                                                  return 21.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
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
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0,
                                            0.0,
                                            0.0,
                                            valueOrDefault<double>(
                                              () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 12.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 12.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 12.0;
                                                } else {
                                                  return 24.0;
                                                }
                                              }(),
                                              0.0,
                                            )),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Divider(
                                                  height: 3.0,
                                                  thickness: 3.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .iconColour,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .headerColour,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 336.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                12.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 336.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                12.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            'Significant Person 1: ',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lora',
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 21.0;
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
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            if ((_model.toggleExpandAuthorBG ==
                                                                    true) &&
                                                                (_model.toggleExpandPerson1 ==
                                                                    false))
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.toggleExpandPerson1 =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100));
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation2'] !=
                                                                      null) {
                                                                    await animationsMap[
                                                                            'containerOnActionTriggerAnimation2']!
                                                                        .controller
                                                                        .forward(
                                                                            from:
                                                                                0.0);
                                                                  }
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                              ),
                                                            if ((_model.toggleExpandAuthorBG ==
                                                                    true) &&
                                                                (_model.toggleExpandPerson1 ==
                                                                    true))
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation2'] !=
                                                                      null) {
                                                                    await animationsMap[
                                                                            'containerOnActionTriggerAnimation2']!
                                                                        .controller
                                                                        .reverse();
                                                                  }
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation2'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'containerOnActionTriggerAnimation2']!
                                                                        .controller
                                                                        .stop();
                                                                  }
                                                                  _model.toggleExpandPerson1 =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_up,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .iconColour,
                                                ),
                                              ],
                                            ),
                                            if ((_model.toggleExpandAuthorBG ==
                                                    true) &&
                                                (_model.toggleExpandPerson1 ==
                                                    true))
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 12.0;
                                                                } else {
                                                                  return 336.0;
                                                                }
                                                              }(),
                                                              0.0,
                                                            ),
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 12.0;
                                                                } else {
                                                                  return 24.0;
                                                                }
                                                              }(),
                                                              0.0,
                                                            ),
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 12.0;
                                                                } else {
                                                                  return 336.0;
                                                                }
                                                              }(),
                                                              0.0,
                                                            ),
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 6.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 6.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 6.0;
                                                                } else {
                                                                  return 12.0;
                                                                }
                                                              }(),
                                                              0.0,
                                                            )),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              6.0),
                                                                  child: Text(
                                                                    'Name:',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 18.0;
                                                                            } else {
                                                                              return 24.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.person1NameTextInputTextController ??=
                                                                            TextEditingController(
                                                                      text: authorBackgroundColumnAIInstructionsRecord.significantPerson1Name !=
                                                                                  ''
                                                                          ? authorBackgroundColumnAIInstructionsRecord
                                                                              .significantPerson1Name
                                                                          : '',
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .person1NameTextInputFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.person1NameTextInputTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        _model.togglePerson1Saved =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter Tight',
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 16.0;
                                                                              } else {
                                                                                return 21.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      alignLabelWithHint:
                                                                          false,
                                                                      hintText:
                                                                          'Write a brief description about The Author here...',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconColour,
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 16.0;
                                                                              } else {
                                                                                return 21.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    minLines: 1,
                                                                    maxLength:
                                                                        50,
                                                                    validator: _model
                                                                        .person1NameTextInputTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              6.0),
                                                                  child: Text(
                                                                    'Relation:',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 18.0;
                                                                            } else {
                                                                              return 24.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.person1RelationTextInputTextController ??=
                                                                            TextEditingController(
                                                                      text: authorBackgroundColumnAIInstructionsRecord.significantPerson1Relation !=
                                                                                  ''
                                                                          ? authorBackgroundColumnAIInstructionsRecord
                                                                              .significantPerson1Relation
                                                                          : '',
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .person1RelationTextInputFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.person1RelationTextInputTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        _model.togglePerson1Saved =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter Tight',
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 14.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      alignLabelWithHint:
                                                                          false,
                                                                      hintText:
                                                                          'Write a brief description about The Author here...',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconColour,
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 14.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    minLines: 1,
                                                                    maxLength:
                                                                        50,
                                                                    validator: _model
                                                                        .person1RelationTextInputTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              6.0),
                                                                  child: Text(
                                                                    'What role did this person play in your life?',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 18.0;
                                                                            } else {
                                                                              return 24.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.person1ContentTextInputTextController ??=
                                                                            TextEditingController(
                                                                      text: authorBackgroundColumnAIInstructionsRecord.significantPerson1Content !=
                                                                                  ''
                                                                          ? authorBackgroundColumnAIInstructionsRecord
                                                                              .significantPerson1Content
                                                                          : '',
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .person1ContentTextInputFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.person1ContentTextInputTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        _model.togglePerson1Saved =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter Tight',
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 14.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      alignLabelWithHint:
                                                                          false,
                                                                      hintText:
                                                                          'Write a brief description about The Author here...',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lora',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconColour,
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 16.0;
                                                                              } else {
                                                                                return 21.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    maxLines: 5,
                                                                    minLines: 1,
                                                                    maxLength:
                                                                        200,
                                                                    validator: _model
                                                                        .person1ContentTextInputTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    valueOrDefault<
                                                                        double>(
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
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .positiveOutline,
                                                              borderRadius: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 12.0;
                                                                } else {
                                                                  return 16.0;
                                                                }
                                                              }(),
                                                              borderWidth: 3.0,
                                                              buttonSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 44.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 44.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 44.0;
                                                                } else {
                                                                  return 50.0;
                                                                }
                                                              }(),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .positiveFill,
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .positiveHover,
                                                              hoverIconColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              icon: Icon(
                                                                Icons.save,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                size: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 28.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 28.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 28.0;
                                                                  } else {
                                                                    return 32.0;
                                                                  }
                                                                }(),
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                await widget
                                                                    .refAIInstructions!
                                                                    .update(
                                                                        createAIInstructionsRecordData(
                                                                  significantPerson1Name:
                                                                      _model
                                                                          .person1NameTextInputTextController
                                                                          .text,
                                                                  significantPerson1Relation:
                                                                      _model
                                                                          .person1RelationTextInputTextController
                                                                          .text,
                                                                  significantPerson1Content:
                                                                      _model
                                                                          .person1ContentTextInputTextController
                                                                          .text,
                                                                ));
                                                                _model.togglePerson1Saved =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnActionTrigger(
                                                  animationsMap[
                                                      'containerOnActionTriggerAnimation2']!,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0,
                                            0.0,
                                            0.0,
                                            valueOrDefault<double>(
                                              () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 12.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 12.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 12.0;
                                                } else {
                                                  return 24.0;
                                                }
                                              }(),
                                              0.0,
                                            )),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Divider(
                                                  height: 3.0,
                                                  thickness: 3.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .iconColour,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .headerColour,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 336.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                12.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 336.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                12.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            'Significant Person 2: ',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lora',
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 21.0;
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
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                        Stack(
                                                          children: [
                                                            if ((_model.toggleExpandAuthorBG ==
                                                                    true) &&
                                                                (_model.toggleExpandPerson2 ==
                                                                    false))
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  _model.toggleExpandPerson2 =
                                                                      true;
                                                                  safeSetState(
                                                                      () {});
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              100));
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation3'] !=
                                                                      null) {
                                                                    await animationsMap[
                                                                            'containerOnActionTriggerAnimation3']!
                                                                        .controller
                                                                        .forward(
                                                                            from:
                                                                                0.0);
                                                                  }
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation3'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'containerOnActionTriggerAnimation3']!
                                                                        .controller
                                                                        .stop();
                                                                  }
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_sharp,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                              ),
                                                            if ((_model.toggleExpandAuthorBG ==
                                                                    true) &&
                                                                (_model.toggleExpandPerson2 ==
                                                                    true))
                                                              InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation3'] !=
                                                                      null) {
                                                                    await animationsMap[
                                                                            'containerOnActionTriggerAnimation3']!
                                                                        .controller
                                                                        .reverse();
                                                                  }
                                                                  await Future.delayed(
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                  if (animationsMap[
                                                                          'containerOnActionTriggerAnimation3'] !=
                                                                      null) {
                                                                    animationsMap[
                                                                            'containerOnActionTriggerAnimation3']!
                                                                        .controller
                                                                        .stop();
                                                                  }
                                                                  _model.toggleExpandPerson2 =
                                                                      false;
                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_up,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  size: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .iconColour,
                                                ),
                                              ],
                                            ),
                                            if ((_model.toggleExpandAuthorBG ==
                                                    true) &&
                                                (_model.toggleExpandPerson2 ==
                                                    true))
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 12.0;
                                                                } else {
                                                                  return 336.0;
                                                                }
                                                              }(),
                                                              0.0,
                                                            ),
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 12.0;
                                                                } else {
                                                                  return 24.0;
                                                                }
                                                              }(),
                                                              0.0,
                                                            ),
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 12.0;
                                                                } else {
                                                                  return 336.0;
                                                                }
                                                              }(),
                                                              0.0,
                                                            ),
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 6.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 6.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 6.0;
                                                                } else {
                                                                  return 12.0;
                                                                }
                                                              }(),
                                                              0.0,
                                                            )),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              6.0),
                                                                  child: Text(
                                                                    'Name:',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 18.0;
                                                                            } else {
                                                                              return 24.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.person2NameTextInputTextController ??=
                                                                            TextEditingController(
                                                                      text: authorBackgroundColumnAIInstructionsRecord.significantPerson2Name !=
                                                                                  ''
                                                                          ? authorBackgroundColumnAIInstructionsRecord
                                                                              .significantPerson2Name
                                                                          : '',
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .person2NameTextInputFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.person2NameTextInputTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        _model.togglePerson2Saved =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter Tight',
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 14.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      alignLabelWithHint:
                                                                          false,
                                                                      hintText:
                                                                          'Write a brief description about The Author here...',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lora',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconColour,
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 16.0;
                                                                              } else {
                                                                                return 21.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    maxLines: 2,
                                                                    minLines: 1,
                                                                    maxLength:
                                                                        50,
                                                                    validator: _model
                                                                        .person2NameTextInputTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              6.0),
                                                                  child: Text(
                                                                    'Relation:',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 18.0;
                                                                            } else {
                                                                              return 24.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.person2RelationTextInputTextController ??=
                                                                            TextEditingController(
                                                                      text: authorBackgroundColumnAIInstructionsRecord.significantPerson2Relation !=
                                                                                  ''
                                                                          ? authorBackgroundColumnAIInstructionsRecord
                                                                              .significantPerson2Relation
                                                                          : '',
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .person2RelationTextInputFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.person2RelationTextInputTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        _model.togglePerson2Saved =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter Tight',
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 14.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      alignLabelWithHint:
                                                                          false,
                                                                      hintText:
                                                                          'Write a brief description about The Author here...',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lora',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconColour,
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 16.0;
                                                                              } else {
                                                                                return 21.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    maxLines: 2,
                                                                    minLines: 1,
                                                                    maxLength:
                                                                        50,
                                                                    validator: _model
                                                                        .person2RelationTextInputTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              6.0),
                                                                  child: Text(
                                                                    'What role did this person play in your life?',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 18.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 18.0;
                                                                            } else {
                                                                              return 24.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model.person2ContentTextInputTextController ??=
                                                                            TextEditingController(
                                                                      text: authorBackgroundColumnAIInstructionsRecord.significantPerson2Content !=
                                                                                  ''
                                                                          ? authorBackgroundColumnAIInstructionsRecord
                                                                              .significantPerson2Content
                                                                          : '',
                                                                    ),
                                                                    focusNode:
                                                                        _model
                                                                            .person2ContentTextInputFocusNode,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      '_model.person2ContentTextInputTextController',
                                                                      const Duration(
                                                                          milliseconds:
                                                                              2000),
                                                                      () async {
                                                                        _model.togglePerson2Saved =
                                                                            false;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter Tight',
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 14.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 14.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      alignLabelWithHint:
                                                                          false,
                                                                      hintText:
                                                                          'Write a brief description about The Author here...',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lora',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).iconColour,
                                                                            fontSize:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 16.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 16.0;
                                                                              } else {
                                                                                return 21.0;
                                                                              }
                                                                            }(),
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            const BorderSide(
                                                                          color:
                                                                              Color(0x00000000),
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    maxLines: 5,
                                                                    minLines: 1,
                                                                    maxLength:
                                                                        200,
                                                                    validator: _model
                                                                        .person2ContentTextInputTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    valueOrDefault<
                                                                        double>(
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
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .positiveOutline,
                                                              borderRadius: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 12.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 12.0;
                                                                } else {
                                                                  return 16.0;
                                                                }
                                                              }(),
                                                              borderWidth: 3.0,
                                                              buttonSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 44.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 44.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 44.0;
                                                                } else {
                                                                  return 50.0;
                                                                }
                                                              }(),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .positiveFill,
                                                              hoverColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .positiveHover,
                                                              hoverIconColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              icon: Icon(
                                                                Icons.save,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                size: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 28.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 28.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 28.0;
                                                                  } else {
                                                                    return 32.0;
                                                                  }
                                                                }(),
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                await widget
                                                                    .refAIInstructions!
                                                                    .update(
                                                                        createAIInstructionsRecordData(
                                                                  significantPerson2Name:
                                                                      _model
                                                                          .person2NameTextInputTextController
                                                                          .text,
                                                                  significantPerson2Relation:
                                                                      _model
                                                                          .person2RelationTextInputTextController
                                                                          .text,
                                                                  significantPerson2Content:
                                                                      _model
                                                                          .person2ContentTextInputTextController
                                                                          .text,
                                                                ));
                                                                _model.togglePerson2Saved =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnActionTrigger(
                                                  animationsMap[
                                                      'containerOnActionTriggerAnimation3']!,
                                                ),
                                              ),
                                          ],
                                        ),
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconColour,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .headerColour,
                                                ),
                                                child: Padding(
                                                  padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              valueOrDefault<
                                                                  double>(
                                                                () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 12.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 12.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 12.0;
                                                                  } else {
                                                                    return 336.0;
                                                                  }
                                                                }(),
                                                                0.0,
                                                              ),
                                                              12.0,
                                                              valueOrDefault<
                                                                  double>(
                                                                () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 12.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 12.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Significant Person 3: ',
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Lora',
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 21.0;
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
                                                                    return 32.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      Stack(
                                                        children: [
                                                          if ((_model.toggleExpandAuthorBG ==
                                                                  true) &&
                                                              (_model.toggleExpandPerson3 ==
                                                                  false))
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.toggleExpandPerson3 =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                            100));
                                                                if (animationsMap[
                                                                        'containerOnActionTriggerAnimation4'] !=
                                                                    null) {
                                                                  await animationsMap[
                                                                          'containerOnActionTriggerAnimation4']!
                                                                      .controller
                                                                      .forward(
                                                                          from:
                                                                              0.0);
                                                                }
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                            500));
                                                                if (animationsMap[
                                                                        'containerOnActionTriggerAnimation4'] !=
                                                                    null) {
                                                                  animationsMap[
                                                                          'containerOnActionTriggerAnimation4']!
                                                                      .controller
                                                                      .stop();
                                                                }
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 32.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 32.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 32.0;
                                                                  } else {
                                                                    return 40.0;
                                                                  }
                                                                }(),
                                                              ),
                                                            ),
                                                          if ((_model.toggleExpandAuthorBG ==
                                                                  true) &&
                                                              (_model.toggleExpandPerson3 ==
                                                                  true))
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                if (animationsMap[
                                                                        'containerOnActionTriggerAnimation4'] !=
                                                                    null) {
                                                                  await animationsMap[
                                                                          'containerOnActionTriggerAnimation4']!
                                                                      .controller
                                                                      .reverse();
                                                                }
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                            500));
                                                                if (animationsMap[
                                                                        'containerOnActionTriggerAnimation4'] !=
                                                                    null) {
                                                                  animationsMap[
                                                                          'containerOnActionTriggerAnimation4']!
                                                                      .controller
                                                                      .stop();
                                                                }
                                                                _model.toggleExpandPerson3 =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .keyboard_arrow_up,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 32.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 32.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 32.0;
                                                                  } else {
                                                                    return 40.0;
                                                                  }
                                                                }(),
                                                              ),
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconColour,
                                              ),
                                            ],
                                          ),
                                          if ((_model.toggleExpandAuthorBG ==
                                                  true) &&
                                              (_model.toggleExpandPerson3 ==
                                                  true))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 12.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 12.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 12.0;
                                                          } else {
                                                            return 336.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 12.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 12.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 12.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 12.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 12.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 12.0;
                                                          } else {
                                                            return 336.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 6.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 6.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 6.0;
                                                          } else {
                                                            return 12.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            6.0),
                                                                child: Text(
                                                                  'Name:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lora',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 18.0;
                                                                          } else {
                                                                            return 24.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                          .person3NameTextInputTextController ??=
                                                                      TextEditingController(
                                                                    text: authorBackgroundColumnAIInstructionsRecord.significantPerson3Name !=
                                                                                ''
                                                                        ? authorBackgroundColumnAIInstructionsRecord
                                                                            .significantPerson3Name
                                                                        : '',
                                                                  ),
                                                                  focusNode: _model
                                                                      .person3NameTextInputFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.person3NameTextInputTextController',
                                                                    const Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () async {
                                                                      _model.togglePerson3Saved =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .next,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter Tight',
                                                                          fontSize:
                                                                              () {
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
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    alignLabelWithHint:
                                                                        false,
                                                                    hintText:
                                                                        'Write a brief description about The Author here...',
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lora',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconColour,
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 16.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 16.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 16.0;
                                                                          } else {
                                                                            return 21.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                  maxLines: 2,
                                                                  minLines: 1,
                                                                  maxLength: 50,
                                                                  validator: _model
                                                                      .person3NameTextInputTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            6.0),
                                                                child: Text(
                                                                  'Relation:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lora',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 18.0;
                                                                          } else {
                                                                            return 24.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                          .person3RelationTextInputTextController ??=
                                                                      TextEditingController(
                                                                    text: authorBackgroundColumnAIInstructionsRecord.significantPerson3Relation !=
                                                                                ''
                                                                        ? authorBackgroundColumnAIInstructionsRecord
                                                                            .significantPerson3Relation
                                                                        : '',
                                                                  ),
                                                                  focusNode: _model
                                                                      .person3RelationTextInputFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.person3RelationTextInputTextController',
                                                                    const Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () async {
                                                                      _model.togglePerson3Saved =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .next,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter Tight',
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    alignLabelWithHint:
                                                                        false,
                                                                    hintText:
                                                                        'Write a brief description about The Author here...',
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lora',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconColour,
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 16.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 16.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 16.0;
                                                                          } else {
                                                                            return 21.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                  maxLines: 2,
                                                                  minLines: 1,
                                                                  maxLength: 50,
                                                                  validator: _model
                                                                      .person3RelationTextInputTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                            6.0),
                                                                child: Text(
                                                                  'What role did this person play in your life?',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lora',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 18.0;
                                                                          } else {
                                                                            return 24.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: SizedBox(
                                                                width: double
                                                                    .infinity,
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                          .person3ContentTextInputTextController ??=
                                                                      TextEditingController(
                                                                    text: authorBackgroundColumnAIInstructionsRecord.significantPerson3Content !=
                                                                                ''
                                                                        ? authorBackgroundColumnAIInstructionsRecord
                                                                            .significantPerson3Content
                                                                        : '',
                                                                  ),
                                                                  focusNode: _model
                                                                      .person3ContentTextInputFocusNode,
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    '_model.person3ContentTextInputTextController',
                                                                    const Duration(
                                                                        milliseconds:
                                                                            2000),
                                                                    () async {
                                                                      _model.togglePerson3Saved =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                  autofocus:
                                                                      false,
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .next,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter Tight',
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    alignLabelWithHint:
                                                                        false,
                                                                    hintText:
                                                                        'Write a brief description about The Author here...',
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lora',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          fontSize:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 16.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 16.0;
                                                                            } else {
                                                                              return 21.0;
                                                                            }
                                                                          }(),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    errorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          const BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lora',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .iconColour,
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 16.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 16.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 16.0;
                                                                          } else {
                                                                            return 21.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                  maxLines: 5,
                                                                  minLines: 1,
                                                                  maxLength:
                                                                      200,
                                                                  validator: _model
                                                                      .person3ContentTextInputTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
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
                                                                        return 12.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          FlutterFlowIconButton(
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .positiveOutline,
                                                            borderRadius: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return 12.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointMedium) {
                                                                return 12.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointLarge) {
                                                                return 12.0;
                                                              } else {
                                                                return 16.0;
                                                              }
                                                            }(),
                                                            borderWidth: 3.0,
                                                            buttonSize: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return 44.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointMedium) {
                                                                return 44.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointLarge) {
                                                                return 44.0;
                                                              } else {
                                                                return 50.0;
                                                              }
                                                            }(),
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .positiveFill,
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .positiveHover,
                                                            hoverIconColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                            icon: Icon(
                                                              Icons.save,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              size: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 28.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 28.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 28.0;
                                                                } else {
                                                                  return 32.0;
                                                                }
                                                              }(),
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              await widget
                                                                  .refAIInstructions!
                                                                  .update(
                                                                      createAIInstructionsRecordData(
                                                                significantPerson3Content:
                                                                    _model
                                                                        .person3ContentTextInputTextController
                                                                        .text,
                                                                significantPerson3Relation:
                                                                    _model
                                                                        .person3RelationTextInputTextController
                                                                        .text,
                                                                significantPerson3Name:
                                                                    _model
                                                                        .person3NameTextInputTextController
                                                                        .text,
                                                              ));
                                                              _model.togglePerson3Saved =
                                                                  true;
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ).animateOnActionTrigger(
                                                animationsMap[
                                                    'containerOnActionTriggerAnimation4']!,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).iconBG,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Divider(
                                  height: 3.0,
                                  thickness: 3.0,
                                  color:
                                      FlutterFlowTheme.of(context).iconColour,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .headerColour,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 336.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        12.0,
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Author Background Information',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Lora',
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 21.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 18.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 18.0;
                                                    } else {
                                                      return 32.0;
                                                    }
                                                  }(),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
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
                                  color:
                                      FlutterFlowTheme.of(context).iconColour,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        valueOrDefault<double>(
                                          () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
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
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 12.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 12.0;
                                            } else {
                                              return 336.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 12.0, 12.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                            .textAuthorBackgroundInfoTextController ??=
                                                        TextEditingController(
                                                      text: authorBackgroundColumnAIInstructionsRecord
                                                                      .authorBackground !=
                                                                  ''
                                                          ? authorBackgroundColumnAIInstructionsRecord
                                                              .authorBackground
                                                          : '',
                                                    ),
                                                    focusNode: _model
                                                        .textAuthorBackgroundInfoFocusNode,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.textAuthorBackgroundInfoTextController',
                                                      const Duration(
                                                          milliseconds: 2000),
                                                      () async {
                                                        await widget
                                                            .refAutobiography!
                                                            .update({
                                                          ...createAutobiographiesRecordData(
                                                            authorBackgroundInformation:
                                                                _model
                                                                    .textAuthorBackgroundInfoTextController
                                                                    .text,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'Autobiography_Updated_At':
                                                                  FieldValue
                                                                      .serverTimestamp(),
                                                            },
                                                          ),
                                                        });

                                                        await widget
                                                            .refAIInstructions!
                                                            .update({
                                                          ...createAIInstructionsRecordData(
                                                            authorBackground: _model
                                                                .textAuthorBackgroundInfoTextController
                                                                .text,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'AI_Instructions_Updated_At':
                                                                  FieldValue
                                                                      .serverTimestamp(),
                                                            },
                                                          ),
                                                        });
                                                      },
                                                    ),
                                                    autofocus: false,
                                                    textInputAction:
                                                        TextInputAction.next,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Inter Tight',
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
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
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      alignLabelWithHint: false,
                                                      hintText:
                                                          'Write a brief description about The Author here...',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Lora',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconColour,
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 16.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 16.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 16.0;
                                                                  } else {
                                                                    return 21.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: const BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                    ),
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lora',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconColour,
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 16.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 16.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 16.0;
                                                                } else {
                                                                  return 21.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                    maxLines: 12,
                                                    minLines: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 4;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 4;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 4;
                                                      } else {
                                                        return 8;
                                                      }
                                                    }(),
                                                    maxLength: 350,
                                                    validator: _model
                                                        .textAuthorBackgroundInfoTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0,
                                                      valueOrDefault<double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 8.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 8.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 8.0;
                                                          } else {
                                                            return 10.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      0.0,
                                                      0.0),
                                              child: FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .positiveOutline,
                                                borderRadius: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 12.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 12.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 12.0;
                                                  } else {
                                                    return 16.0;
                                                  }
                                                }(),
                                                borderWidth: 3.0,
                                                buttonSize: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 44.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 44.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 44.0;
                                                  } else {
                                                    return 50.0;
                                                  }
                                                }(),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .positiveFill,
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .positiveHover,
                                                hoverIconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                icon: Icon(
                                                  Icons.save,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  size: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 28.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 28.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 28.0;
                                                    } else {
                                                      return 32.0;
                                                    }
                                                  }(),
                                                ),
                                                onPressed: () async {
                                                  await widget
                                                      .refAutobiography!
                                                      .update({
                                                    ...createAutobiographiesRecordData(
                                                      authorBackgroundInformation:
                                                          _model
                                                              .textAuthorBackgroundInfoTextController
                                                              .text,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'Autobiography_Updated_At':
                                                            FieldValue
                                                                .serverTimestamp(),
                                                      },
                                                    ),
                                                  });

                                                  await authorBackgroundColumnAIInstructionsRecord
                                                      .reference
                                                      .update({
                                                    ...createAIInstructionsRecordData(
                                                      authorBackground: _model
                                                          .textAuthorBackgroundInfoTextController
                                                          .text,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'AI_Instructions_Updated_At':
                                                            FieldValue
                                                                .serverTimestamp(),
                                                      },
                                                    ),
                                                  });
                                                },
                                              ),
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
                                  color:
                                      FlutterFlowTheme.of(context).iconColour,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation1']!,
                ),
            ],
          );
        },
      ),
    );
  }
}
