import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/home_page/autobiography_cover_component/autobiography_cover_component_widget.dart';
import '/my_life_story_main_folder/home_page/latest_autobiography_folder/latest_a_b_chapter_component/latest_a_b_chapter_component_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'latest_autobiography_component_model.dart';
export 'latest_autobiography_component_model.dart';

class LatestAutobiographyComponentWidget extends StatefulWidget {
  const LatestAutobiographyComponentWidget({super.key});

  @override
  State<LatestAutobiographyComponentWidget> createState() =>
      _LatestAutobiographyComponentWidgetState();
}

class _LatestAutobiographyComponentWidgetState
    extends State<LatestAutobiographyComponentWidget>
    with TickerProviderStateMixin {
  late LatestAutobiographyComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LatestAutobiographyComponentModel());

    animationsMap.addAll({
      'columnOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
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
            duration: 600.0.ms,
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
      padding: EdgeInsetsDirectional.fromSTEB(
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
                return 12.0;
              }
            }(),
            0.0,
          ),
          0.0,
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 12.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 12.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 12.0;
              } else {
                return 36.0;
              }
            }(),
            0.0,
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StreamBuilder<List<AutobiographiesRecord>>(
            stream: queryAutobiographiesRecord(
              queryBuilder: (autobiographiesRecord) => autobiographiesRecord
                  .where(
                    'Autobiography_UID',
                    isEqualTo: currentUserReference,
                  )
                  .orderBy('Autobiography_Updated_At'),
              singleRecord: true,
            ),
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
              List<AutobiographiesRecord> containerAutobiographiesRecordList =
                  snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final containerAutobiographiesRecord =
                  containerAutobiographiesRecordList.isNotEmpty
                      ? containerAutobiographiesRecordList.first
                      : null;

              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
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
                          child: Stack(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            children: [
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
                                          return 396.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
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
                                          return 396.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
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
                                    )),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Stack(
                                            children: [
                                              if (_model
                                                      .toggleLatestABContentOpen ==
                                                  false)
                                                Container(
                                                  decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(16.0),
                                                      bottomRight:
                                                          Radius.circular(16.0),
                                                      topLeft:
                                                          Radius.circular(16.0),
                                                      topRight:
                                                          Radius.circular(16.0),
                                                    ),
                                                  ),
                                                  child: FlutterFlowIconButton(
                                                    borderRadius: 16.0,
                                                    buttonSize: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 50.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 50.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 50.0;
                                                      } else {
                                                        return 58.0;
                                                      }
                                                    }(),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .iconBG,
                                                    hoverIconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .iconColour2,
                                                    icon: Icon(
                                                      Icons.open_in_full,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                      size: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 26.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 26.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 26.0;
                                                        } else {
                                                          return 32.0;
                                                        }
                                                      }(),
                                                    ),
                                                    onPressed: () async {
                                                      _model.toggleLatestABContentOpen =
                                                          true;
                                                      safeSetState(() {});
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  400));
                                                      if (animationsMap[
                                                              'columnOnActionTriggerAnimation1'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'columnOnActionTriggerAnimation1']!
                                                            .controller
                                                            .forward(from: 0.0);
                                                      }
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  200));
                                                      if (animationsMap[
                                                              'columnOnActionTriggerAnimation2'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'columnOnActionTriggerAnimation2']!
                                                            .controller
                                                            .forward(from: 0.0);
                                                      }
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  600));
                                                      if (animationsMap[
                                                              'columnOnActionTriggerAnimation1'] !=
                                                          null) {
                                                        animationsMap[
                                                                'columnOnActionTriggerAnimation1']!
                                                            .controller
                                                            .stop();
                                                      }
                                                      if (animationsMap[
                                                              'columnOnActionTriggerAnimation2'] !=
                                                          null) {
                                                        animationsMap[
                                                                'columnOnActionTriggerAnimation2']!
                                                            .controller
                                                            .stop();
                                                      }
                                                    },
                                                  ),
                                                ),
                                              if (_model
                                                      .toggleLatestABContentOpen ==
                                                  true)
                                                Container(
                                                  decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(16.0),
                                                      bottomRight:
                                                          Radius.circular(16.0),
                                                      topLeft:
                                                          Radius.circular(16.0),
                                                      topRight:
                                                          Radius.circular(16.0),
                                                    ),
                                                  ),
                                                  child: FlutterFlowIconButton(
                                                    borderRadius: 16.0,
                                                    buttonSize: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 50.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 50.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 50.0;
                                                      } else {
                                                        return 58.0;
                                                      }
                                                    }(),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .iconBG,
                                                    hoverIconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .iconColour2,
                                                    icon: Icon(
                                                      Icons.close_fullscreen,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                      size: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 26.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 26.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 26.0;
                                                        } else {
                                                          return 32.0;
                                                        }
                                                      }(),
                                                    ),
                                                    onPressed: () async {
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  200));
                                                      if (animationsMap[
                                                              'columnOnActionTriggerAnimation2'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'columnOnActionTriggerAnimation2']!
                                                            .controller
                                                            .reverse();
                                                      }
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  200));
                                                      if (animationsMap[
                                                              'columnOnActionTriggerAnimation1'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'columnOnActionTriggerAnimation1']!
                                                            .controller
                                                            .reverse();
                                                      }
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  600));
                                                      if (animationsMap[
                                                              'columnOnActionTriggerAnimation2'] !=
                                                          null) {
                                                        animationsMap[
                                                                'columnOnActionTriggerAnimation2']!
                                                            .controller
                                                            .stop();
                                                      }
                                                      if (animationsMap[
                                                              'columnOnActionTriggerAnimation1'] !=
                                                          null) {
                                                        animationsMap[
                                                                'columnOnActionTriggerAnimation1']!
                                                            .controller
                                                            .stop();
                                                      }
                                                      _model.toggleLatestABContentOpen =
                                                          false;
                                                      safeSetState(() {});
                                                    },
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(16.0),
                                                bottomRight:
                                                    Radius.circular(16.0),
                                                topLeft: Radius.circular(16.0),
                                                topRight: Radius.circular(16.0),
                                              ),
                                            ),
                                            child: FlutterFlowIconButton(
                                              borderRadius: 16.0,
                                              buttonSize: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 50.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 50.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 50.0;
                                                } else {
                                                  return 58.0;
                                                }
                                              }(),
                                              hoverColor:
                                                  FlutterFlowTheme.of(context)
                                                      .iconBG,
                                              hoverIconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColour2,
                                              icon: Icon(
                                                Icons.start,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .iconColour,
                                                size: () {
                                                  if (MediaQuery.sizeOf(context)
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
                                                    return 38.0;
                                                  }
                                                }(),
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 72.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 72.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 72.0;
                                        } else {
                                          return 464.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    0.0,
                                    valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 72.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 72.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 72.0;
                                        } else {
                                          return 464.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            valueOrDefault<String>(
                                              containerAutobiographiesRecord
                                                  ?.autobiographyTitle,
                                              'Autobiography Title',
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Lora',
                                              fontSize: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 24.0;
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
                                                  return 36.0;
                                                }
                                              }(),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                              shadows: [
                                                Shadow(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .headerTextShadow,
                                                  offset: const Offset(2.0, 2.0),
                                                  blurRadius: 2.0,
                                                )
                                              ],
                                            ),
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
                        Divider(
                          height: 3.0,
                          thickness: 3.0,
                          color: FlutterFlowTheme.of(context).iconColour,
                        ),
                      ],
                    ),
                    if (_model.toggleLatestABContentOpen == true)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 1000),
                            curve: Curves.easeIn,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).iconBG,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model:
                                      _model.autobiographyCoverComponentModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: AutobiographyCoverComponentWidget(
                                    imageAutobiographyCoverImage:
                                        valueOrDefault<String>(
                                      containerAutobiographiesRecord
                                          ?.autobiographyCoverImage,
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/hb4psod3xsnr/Emerald_Front_Cover_Design.png',
                                    ),
                                    stringAutobiographyTitle:
                                        valueOrDefault<String>(
                                      containerAutobiographiesRecord
                                          ?.autobiographyTitle,
                                      'Autobiography TItle',
                                    ),
                                    stringAuthorName: valueOrDefault<String>(
                                      containerAutobiographiesRecord
                                          ?.authorName,
                                      'Author Name',
                                    ),
                                  ),
                                ),
                              ],
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
                    if (_model.toggleLatestABContentOpen == true)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              StreamBuilder<List<AIChaptersRecord>>(
                                stream: queryAIChaptersRecord(
                                  parent:
                                      containerAutobiographiesRecord?.reference,
                                  queryBuilder: (aIChaptersRecord) =>
                                      aIChaptersRecord
                                          .orderBy('AI_Chapter_Number'),
                                ),
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
                                  List<AIChaptersRecord>
                                      containerAIChaptersRecordList =
                                      snapshot.data!;

                                  return AnimatedContainer(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeIn,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .headerColour,
                                    ),
                                    child: Stack(
                                      alignment: AlignmentDirectional(
                                          0.0,
                                          valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return -0.68;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return -0.68;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return -0.68;
                                              } else {
                                                return -0.75;
                                              }
                                            }(),
                                            0.0,
                                          )),
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Builder(
                                                builder: (context) {
                                                  final listChaptersPageView =
                                                      containerAIChaptersRecordList
                                                          .toList();

                                                  return SizedBox(
                                                    width: double.infinity,
                                                    height: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 412.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 412.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 412.0;
                                                      } else {
                                                        return 724.0;
                                                      }
                                                    }(),
                                                    child: Stack(
                                                      children: [
                                                        PageView.builder(
                                                          controller: _model
                                                                  .pageViewController ??=
                                                              PageController(
                                                                  initialPage: max(
                                                                      0,
                                                                      min(
                                                                          0,
                                                                          listChaptersPageView.length -
                                                                              1))),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemCount:
                                                              listChaptersPageView
                                                                  .length,
                                                          itemBuilder: (context,
                                                              listChaptersPageViewIndex) {
                                                            final listChaptersPageViewItem =
                                                                listChaptersPageView[
                                                                    listChaptersPageViewIndex];
                                                            return LatestABChapterComponentWidget(
                                                              key: Key(
                                                                  'Keyvrl_${listChaptersPageViewIndex}_of_${listChaptersPageView.length}'),
                                                              refAutobiography:
                                                                  containerAutobiographiesRecord
                                                                      ?.reference,
                                                              refAIChapter:
                                                                  listChaptersPageViewItem
                                                                      .reference,
                                                            );
                                                          },
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return -0.61;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return -0.6;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return -0.6;
                                                                      } else {
                                                                        return -0.7;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  )),
                                                          child: Padding(
                                                            padding: EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    valueOrDefault<
                                                                        double>(
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
                                                                          return 24.0;
                                                                        }
                                                                      }(),
                                                                      0.0,
                                                                    )),
                                                            child: smooth_page_indicator
                                                                .SmoothPageIndicator(
                                                              controller: _model
                                                                      .pageViewController ??=
                                                                  PageController(
                                                                      initialPage: max(
                                                                          0,
                                                                          min(0,
                                                                              listChaptersPageView.length - 1))),
                                                              count:
                                                                  listChaptersPageView
                                                                      .length,
                                                              axisDirection: Axis
                                                                  .horizontal,
                                                              onDotClicked:
                                                                  (i) async {
                                                                await _model
                                                                    .pageViewController!
                                                                    .animateToPage(
                                                                  i,
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          500),
                                                                  curve: Curves
                                                                      .ease,
                                                                );
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              effect:
                                                                  smooth_page_indicator
                                                                      .SlideEffect(
                                                                spacing: 12.0,
                                                                radius: 8.0,
                                                                dotWidth: () {
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
                                                                dotHeight: () {
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
                                                                dotColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                activeDotColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                paintStyle:
                                                                    PaintingStyle
                                                                        .fill,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(
                                              valueOrDefault<double>(
                                                () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return -0.825;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return -0.825;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return -0.825;
                                                  } else {
                                                    return -0.405;
                                                  }
                                                }(),
                                                0.0,
                                              ),
                                              0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    0.0,
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
                                                          return 6.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    )),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await _model
                                                        .pageViewController
                                                        ?.previousPage(
                                                      duration: const Duration(
                                                          milliseconds: 300),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.arrow_left,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .iconColour,
                                                    size: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 42.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 32.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 32.0;
                                                      } else {
                                                        return 52.0;
                                                      }
                                                    }(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: AlignmentDirectional(
                                              valueOrDefault<double>(
                                                () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 0.825;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 0.825;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 0.825;
                                                  } else {
                                                    return 0.405;
                                                  }
                                                }(),
                                                0.0,
                                              ),
                                              0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    0.0,
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
                                                          return 6.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    )),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await _model
                                                        .pageViewController
                                                        ?.nextPage(
                                                      duration: const Duration(
                                                          milliseconds: 300),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.arrow_right,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .iconColour,
                                                    size: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 42.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 32.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 32.0;
                                                      } else {
                                                        return 52.0;
                                                      }
                                                    }(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              Divider(
                                height: 3.0,
                                thickness: 3.0,
                                color: FlutterFlowTheme.of(context).iconColour,
                              ),
                            ],
                          ),
                        ],
                      ).animateOnActionTrigger(
                        animationsMap['columnOnActionTriggerAnimation2']!,
                      ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
