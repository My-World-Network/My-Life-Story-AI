import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'tutorial_step1_component_model.dart';
export 'tutorial_step1_component_model.dart';

class TutorialStep1ComponentWidget extends StatefulWidget {
  const TutorialStep1ComponentWidget({super.key});

  @override
  State<TutorialStep1ComponentWidget> createState() =>
      _TutorialStep1ComponentWidgetState();
}

class _TutorialStep1ComponentWidgetState
    extends State<TutorialStep1ComponentWidget> with TickerProviderStateMixin {
  late TutorialStep1ComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TutorialStep1ComponentModel());

    animationsMap.addAll({
      'stackOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.025, 1.025),
          ),
          SaturateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 1.0,
            end: 1.24,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.025, 1.025),
          ),
          SaturateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 1.0,
            end: 1.24,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.025, 1.025),
          ),
          SaturateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 1.0,
            end: 1.24,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.025, 1.025),
          ),
          SaturateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 1.0,
            end: 1.24,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.025, 1.025),
          ),
          SaturateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 1.0,
            end: 1.24,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.025, 1.025),
          ),
          SaturateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 1.0,
            end: 1.24,
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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: const AlignmentDirectional(0.0, -0.8),
              child: Container(
                width: double.infinity,
                height: 650.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).transparent,
                      const Color(0xC8FFFFFF),
                      FlutterFlowTheme.of(context).transparent
                    ],
                    stops: const [0.0, 0.5, 1.0],
                    begin: const AlignmentDirectional(0.0, -1.0),
                    end: const AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        height: 624.0,
                        child: CarouselSlider(
                          items: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 16.0, 6.0, 16.0),
                              child: SizedBox(
                                width: double.infinity,
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 12.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            offset: const Offset(
                                              0.0,
                                              0.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Stack(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(36.0),
                                                bottomRight:
                                                    Radius.circular(36.0),
                                                topLeft: Radius.circular(36.0),
                                                topRight: Radius.circular(36.0),
                                              ),
                                              child: Image.asset(
                                                'assets/images/AI_Book.webp',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                                alignment:
                                                    const Alignment(-0.05, -0.5),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(36.0),
                                              topRight: Radius.circular(36.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(36.0),
                                                    topRight:
                                                        Radius.circular(36.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Creating Your Autobiography',
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
                                                                    return 44.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                shadows: [
                                                                  const Shadow(
                                                                    color: Color(
                                                                        0x80FFFFFF),
                                                                    offset:
                                                                        Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        safeSetState(() => _model
                                                .creatingABMouseRegionHovered =
                                            true);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation1'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation1']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() => _model
                                                .creatingABMouseRegionHovered =
                                            false);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation1'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation1']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'stackOnActionTriggerAnimation1']!,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 16.0, 6.0, 16.0),
                              child: SizedBox(
                                width: 300.0,
                                height: 300.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 12.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            offset: const Offset(
                                              0.0,
                                              0.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(36.0),
                                                bottomRight:
                                                    Radius.circular(36.0),
                                                topLeft: Radius.circular(36.0),
                                                topRight: Radius.circular(36.0),
                                              ),
                                              child: Image.asset(
                                                'assets/images/Autobiography_Image_1.webp',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                                alignment: const Alignment(0.0, -0.8),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(36.0),
                                              topRight: Radius.circular(36.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(36.0),
                                                    topRight:
                                                        Radius.circular(36.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Create a Title',
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
                                                                    return 44.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(36.0),
                                              bottomRight:
                                                  Radius.circular(36.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(36.0),
                                                    bottomRight:
                                                        Radius.circular(36.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Choose something personal and meaningful that resonates with your journey.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                fontFamily:
                                                                    'Lora',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
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
                                                                    return 21.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 21.0;
                                                                  } else {
                                                                    return 32.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
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
                                        ],
                                      ),
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        safeSetState(() => _model
                                                .writingTitleMouseRegionHovered =
                                            true);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation2'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation2']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() => _model
                                                .writingTitleMouseRegionHovered =
                                            false);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation2'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation2']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'stackOnActionTriggerAnimation2']!,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 16.0, 6.0, 16.0),
                              child: SizedBox(
                                width: 300.0,
                                height: 300.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 12.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            offset: const Offset(
                                              0.0,
                                              0.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(36.0),
                                                bottomRight:
                                                    Radius.circular(36.0),
                                                topLeft: Radius.circular(36.0),
                                                topRight: Radius.circular(36.0),
                                              ),
                                              child: Image.asset(
                                                'assets/images/Describe_yourself.webp',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                                alignment:
                                                    const Alignment(-0.35, 0.3),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(36.0),
                                              topRight: Radius.circular(36.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(36.0),
                                                    topRight:
                                                        Radius.circular(36.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Describe Yourself For The AI',
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
                                                                    return 44.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(36.0),
                                              bottomRight:
                                                  Radius.circular(36.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(36.0),
                                                    bottomRight:
                                                        Radius.circular(36.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Share a glimpse of who you are, your roots, passions, and defining moments.',
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
                                                                    return 21.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 21.0;
                                                                  } else {
                                                                    return 32.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
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
                                        ],
                                      ),
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        safeSetState(() => _model
                                                .describeAuthorMouseRegionHovered =
                                            true);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation3'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation3']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() => _model
                                                .describeAuthorMouseRegionHovered =
                                            false);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation3'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation3']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'stackOnActionTriggerAnimation3']!,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 16.0, 6.0, 16.0),
                              child: SizedBox(
                                width: 300.0,
                                height: 300.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 12.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            offset: const Offset(
                                              0.0,
                                              0.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(36.0),
                                                bottomRight:
                                                    Radius.circular(36.0),
                                                topLeft: Radius.circular(36.0),
                                                topRight: Radius.circular(36.0),
                                              ),
                                              child: Image.asset(
                                                'assets/images/People_and_Microphone.webp',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                                alignment:
                                                    const Alignment(-0.1, -0.6),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(36.0),
                                              topRight: Radius.circular(36.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(36.0),
                                                    topRight:
                                                        Radius.circular(36.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Invite a Listener',
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
                                                                    return 44.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(36.0),
                                              bottomRight:
                                                  Radius.circular(36.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(36.0),
                                                    bottomRight:
                                                        Radius.circular(36.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Tell your story alone or with a Listener. A Listener can help bring memories to life.',
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
                                                                    return 21.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 21.0;
                                                                  } else {
                                                                    return 32.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
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
                                        ],
                                      ),
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        safeSetState(() => _model
                                                .inviteListenerMouseRegionHovered =
                                            true);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation4'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation4']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() => _model
                                                .inviteListenerMouseRegionHovered =
                                            false);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation4'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation4']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'stackOnActionTriggerAnimation4']!,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 16.0, 6.0, 16.0),
                              child: SizedBox(
                                width: 300.0,
                                height: 300.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 12.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            offset: const Offset(
                                              0.0,
                                              0.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(36.0),
                                                bottomRight:
                                                    Radius.circular(36.0),
                                                topLeft: Radius.circular(36.0),
                                                topRight: Radius.circular(36.0),
                                              ),
                                              child: Image.asset(
                                                'assets/images/AI_Settings.webp',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                                alignment:
                                                    const Alignment(-0.2, 0.15),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(36.0),
                                              topRight: Radius.circular(36.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(36.0),
                                                    topRight:
                                                        Radius.circular(36.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Set AI Editing Preferences',
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
                                                                    return 44.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(36.0),
                                              bottomRight:
                                                  Radius.circular(36.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(36.0),
                                                    bottomRight:
                                                        Radius.circular(36.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Choose how the AI refines your words. Keep it raw, or let the AI polish your story with care.',
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
                                                                    return 21.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 21.0;
                                                                  } else {
                                                                    return 32.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
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
                                        ],
                                      ),
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        safeSetState(() => _model
                                                .aISettingsMouseRegionHovered =
                                            true);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation5'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation5']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() => _model
                                                .aISettingsMouseRegionHovered =
                                            false);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation5'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation5']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'stackOnActionTriggerAnimation5']!,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 16.0, 6.0, 16.0),
                              child: SizedBox(
                                width: 300.0,
                                height: 300.0,
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 12.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            offset: const Offset(
                                              0.0,
                                              0.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                      ),
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: double.infinity,
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(40.0),
                                                bottomRight:
                                                    Radius.circular(40.0),
                                                topLeft: Radius.circular(40.0),
                                                topRight: Radius.circular(40.0),
                                              ),
                                              child: Image.asset(
                                                'assets/images/Title_your_story_2.webp',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                                alignment: const Alignment(0.0, 0.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(36.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          width: 2.0,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(36.0),
                                              topRight: Radius.circular(36.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(36.0),
                                                    topRight:
                                                        Radius.circular(36.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Choose Your Writing Style',
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
                                                                    return 44.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(36.0),
                                              bottomRight:
                                                  Radius.circular(36.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                sigmaX: 6.0,
                                                sigmaY: 6.0,
                                              ),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tutorialFade3,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(36.0),
                                                    bottomRight:
                                                        Radius.circular(36.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Divider(
                                                      height: 2.0,
                                                      thickness: 2.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          valueOrDefault<
                                                              double>(
                                                        () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 16.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 16.0;
                                                          } else {
                                                            return 24.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Formal, poetic, conversational. Pick the writing style that feels right for you.',
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
                                                                    return 21.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 21.0;
                                                                  } else {
                                                                    return 32.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                shadows: [
                                                                  Shadow(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headerTextShadow,
                                                                    offset:
                                                                        const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                    blurRadius:
                                                                        2.0,
                                                                  )
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
                                        ],
                                      ),
                                    ),
                                    MouseRegion(
                                      opaque: false,
                                      cursor: MouseCursor.defer ??
                                          MouseCursor.defer,
                                      onEnter: ((event) async {
                                        safeSetState(() => _model
                                                .writingStyleMouseRegionHovered =
                                            true);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation6'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation6']!
                                              .controller
                                              .forward(from: 0.0);
                                        }
                                      }),
                                      onExit: ((event) async {
                                        safeSetState(() => _model
                                                .writingStyleMouseRegionHovered =
                                            false);
                                        if (animationsMap[
                                                'stackOnActionTriggerAnimation6'] !=
                                            null) {
                                          await animationsMap[
                                                  'stackOnActionTriggerAnimation6']!
                                              .controller
                                              .reverse();
                                        }
                                      }),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: const BoxDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ).animateOnActionTrigger(
                                animationsMap[
                                    'stackOnActionTriggerAnimation6']!,
                              ),
                            ),
                          ],
                          carouselController: _model.carouselController ??=
                              CarouselSliderController(),
                          options: CarouselOptions(
                            initialPage: 0,
                            viewportFraction: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 0.875;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 0.875;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 0.875;
                              } else {
                                return 0.7;
                              }
                            }(),
                            disableCenter: true,
                            enlargeCenterPage: () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 0.2;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 0.2;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 0.2;
                                  } else {
                                    return 0.4;
                                  }
                                }() !=
                                0,
                            enlargeFactor: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 0.2;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 0.2;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 0.2;
                              } else {
                                return 0.4;
                              }
                            }(),
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            autoPlay: false,
                            onPageChanged: (index, _) =>
                                _model.carouselCurrentIndex = index,
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
    );
  }
}
