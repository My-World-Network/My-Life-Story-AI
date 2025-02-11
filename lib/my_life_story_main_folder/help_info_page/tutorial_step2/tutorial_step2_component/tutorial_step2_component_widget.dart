import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'tutorial_step2_component_model.dart';
export 'tutorial_step2_component_model.dart';

class TutorialStep2ComponentWidget extends StatefulWidget {
  const TutorialStep2ComponentWidget({super.key});

  @override
  State<TutorialStep2ComponentWidget> createState() =>
      _TutorialStep2ComponentWidgetState();
}

class _TutorialStep2ComponentWidgetState
    extends State<TutorialStep2ComponentWidget> with TickerProviderStateMixin {
  late TutorialStep2ComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TutorialStep2ComponentModel());

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
                                                'assets/images/Create_Your_Autobiography.webp',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                                alignment:
                                                    const Alignment(-0.05, 0.75),
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
                                                              'Generating Your Autobiography',
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
                                                            return 84.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 84.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 84.0;
                                                          } else {
                                                            return 0.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      0.0,
                                                      0.0),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      const Radius.circular(36.0),
                                                  bottomRight:
                                                      const Radius.circular(36.0),
                                                  topLeft: Radius.circular(
                                                      valueOrDefault<double>(
                                                    () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 0.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 0.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 0.0;
                                                      } else {
                                                        return 36.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  )),
                                                  topRight: Radius.circular(
                                                      valueOrDefault<double>(
                                                    () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 0.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 0.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 0.0;
                                                      } else {
                                                        return 36.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  )),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/Two_people_creating_Autobiography.webp',
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.none,
                                                  alignment:
                                                      const Alignment(-0.8, -1.0),
                                                ),
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
                                                  color: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tutorialFade3;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tutorialFade3;
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tutorialFade3;
                                                    }
                                                  }(),
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
                                                              'Create with Natural Conversations',
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
                                                                    return 26.0;
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
                                                              'Generate your Autobiography with Audio. Either alone or with a Listener.',
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0,
                                          valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 72.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 24.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 24.0;
                                              } else {
                                                return 0.0;
                                              }
                                            }(),
                                            0.0,
                                          ),
                                          0.0,
                                          0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 12.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      const Radius.circular(36.0),
                                                  bottomRight:
                                                      const Radius.circular(36.0),
                                                  topLeft: Radius.circular(
                                                      valueOrDefault<double>(
                                                    () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 0.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 0.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 0.0;
                                                      } else {
                                                        return 36.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  )),
                                                  topRight: Radius.circular(
                                                      valueOrDefault<double>(
                                                    () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 0.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 0.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 0.0;
                                                      } else {
                                                        return 36.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  )),
                                                ),
                                                child: Image.asset(
                                                  'assets/images/Two_People_Talking_Wider_Image_2.png',
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.cover,
                                                  alignment:
                                                      const Alignment(1.0, -1.0),
                                                ),
                                              ),
                                            ],
                                          ),
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
                                                  color: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tutorialFade3;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tutorialFade3;
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .tutorialFade3;
                                                    }
                                                  }(),
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
                                                              'What is a Listener?',
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
                                                              'A friend to assist you in the process of creating your Autobiography, by engaging in conversation.',
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
                                                'assets/images/AI_Faces.webp',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                                alignment: Alignment(
                                                    valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 0.25;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 0.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 0.0;
                                                        } else {
                                                          return 1.0;
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
                                                          return 0.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 0.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 0.0;
                                                        } else {
                                                          return -0.25;
                                                        }
                                                      }(),
                                                      0.0,
                                                    )),
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
                                                              'Let the AI do the rest',
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
                                                              'Our AI captures only the Author\'s words, filtering out the Listener’s responses.',
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
                                                'assets/images/Speak_Your_Story.webp',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                                alignment:
                                                    const Alignment(-0.2, -0.25),
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
                                                              'AI Autobiography Editing',
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
                                                              'Speak freely, and the AI will organize your words into a structured autobiography.',
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
