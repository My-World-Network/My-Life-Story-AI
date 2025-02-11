import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'autobiography_creation_page1_header_model.dart';
export 'autobiography_creation_page1_header_model.dart';

class AutobiographyCreationPage1HeaderWidget extends StatefulWidget {
  const AutobiographyCreationPage1HeaderWidget({
    super.key,
    this.refAutobiography,
    this.refUserChapter,
    required this.refAIChapter,
    this.refUserAutobiography,
    required this.refAIAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserChapter;
  final DocumentReference? refAIChapter;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<AutobiographyCreationPage1HeaderWidget> createState() =>
      _AutobiographyCreationPage1HeaderWidgetState();
}

class _AutobiographyCreationPage1HeaderWidgetState
    extends State<AutobiographyCreationPage1HeaderWidget>
    with TickerProviderStateMixin {
  late AutobiographyCreationPage1HeaderModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AutobiographyCreationPage1HeaderModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(0.0, -100.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        StreamBuilder<AutobiographiesRecord>(
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

            final headerColumnAutobiographiesRecord = snapshot.data!;

            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StreamBuilder<AIChaptersRecord>(
                  stream: AIChaptersRecord.getDocument(widget.refAIChapter!),
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

                    final containerAIChaptersRecord = snapshot.data!;

                    return Container(
                      width: double.infinity,
                      height: () {
                        if (MediaQuery.sizeOf(context).width <
                            kBreakpointSmall) {
                          return 118.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointMedium) {
                          return 118.0;
                        } else if (MediaQuery.sizeOf(context).width <
                            kBreakpointLarge) {
                          return 118.0;
                        } else {
                          return 136.0;
                        }
                      }(),
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 6.0,
                                sigmaY: 6.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).headerColour,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Divider(
                                      height: 3.0,
                                      thickness: 3.0,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColour,
                                    ),
                                    Stack(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0,
                                                  valueOrDefault<double>(
                                                    () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 18.0;
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
                                                        return 24.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  valueOrDefault<double>(
                                                    () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 18.0;
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
                                                        return 24.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  )),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Flexible(
                                                child: Stack(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  children: [
                                                    Padding(
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
                                                                        return 124.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 272.0;
                                                                      } else {
                                                                        return 396.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  0.0,
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
                                                                        return 124.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 272.0;
                                                                      } else {
                                                                        return 396.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 2.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 2.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 2.0;
                                                                              } else {
                                                                                return 4.0;
                                                                              }
                                                                            }(),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            offset:
                                                                                const Offset(
                                                                              0.0,
                                                                              0.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            const BorderRadius.only(
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
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).iconColour,
                                                                        borderRadius:
                                                                            16.0,
                                                                        borderWidth:
                                                                            3.0,
                                                                        buttonSize:
                                                                            () {
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
                                                                            return 58.0;
                                                                          }
                                                                        }(),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        hoverColor:
                                                                            FlutterFlowTheme.of(context).iconBG,
                                                                        hoverIconColor:
                                                                            FlutterFlowTheme.of(context).iconColour2,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .home,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          size:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 30.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 30.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 30.0;
                                                                            } else {
                                                                              return 34.0;
                                                                            }
                                                                          }(),
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          context
                                                                              .goNamed(
                                                                            'MyLifeStoryHomePage',
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: const TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.leftToRight,
                                                                                duration: Duration(milliseconds: 1000),
                                                                              ),
                                                                            },
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Stack(
                                                                  children: [
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 2.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 2.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 2.0;
                                                                              } else {
                                                                                return 4.0;
                                                                              }
                                                                            }(),
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            offset:
                                                                                const Offset(
                                                                              0.0,
                                                                              0.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            const BorderRadius.only(
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
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            FlutterFlowTheme.of(context).iconColour,
                                                                        borderRadius:
                                                                            16.0,
                                                                        borderWidth:
                                                                            3.0,
                                                                        buttonSize:
                                                                            () {
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
                                                                            return 58.0;
                                                                          }
                                                                        }(),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        hoverColor:
                                                                            FlutterFlowTheme.of(context).iconBG,
                                                                        hoverIconColor:
                                                                            FlutterFlowTheme.of(context).iconColour2,
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_forward,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconColour,
                                                                          size:
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return 30.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return 30.0;
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return 30.0;
                                                                            } else {
                                                                              return 34.0;
                                                                            }
                                                                          }(),
                                                                        ),
                                                                        onPressed:
                                                                            () async {
                                                                          if (headerColumnAutobiographiesRecord.autobiographyTitle != '') {
                                                                            if (headerColumnAutobiographiesRecord.authorName != '') {
                                                                              if (headerColumnAutobiographiesRecord.authorDateOfBirth != null) {
                                                                                if (headerColumnAutobiographiesRecord.authorBackgroundInformation != '') {
                                                                                  if (containerAIChaptersRecord.aIChapterTitle != '') {
                                                                                    context.pushNamed(
                                                                                      'AutobiographyCreationPage2',
                                                                                      queryParameters: {
                                                                                        'refAutobiography': serializeParam(
                                                                                          widget.refAutobiography,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                        'refUserChapter': serializeParam(
                                                                                          widget.refUserChapter,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                        'refAIChapter': serializeParam(
                                                                                          widget.refAIChapter,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                        'refUserAutobiography': serializeParam(
                                                                                          widget.refUserAutobiography,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                        'refAIAutobiography': serializeParam(
                                                                                          widget.refAIAutobiography,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                        'refAIInstructions': serializeParam(
                                                                                          widget.refAIInstructions,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                      extra: <String, dynamic>{
                                                                                        kTransitionInfoKey: const TransitionInfo(
                                                                                          hasTransition: true,
                                                                                          transitionType: PageTransitionType.rightToLeft,
                                                                                          duration: Duration(milliseconds: 1000),
                                                                                        ),
                                                                                      },
                                                                                    );
                                                                                  } else {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return AlertDialog(
                                                                                          title: const Text('No Chapter 1 Set'),
                                                                                          actions: [
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                                              child: const Text('Ok'),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  }
                                                                                } else {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: const Text('No Author Background Information Set'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext),
                                                                                            child: const Text('Ok'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  );
                                                                                }
                                                                              } else {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: const Text('No Author Date of Birth Set'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext),
                                                                                          child: const Text('Ok'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                );
                                                                              }
                                                                            } else {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: const Text('No Author Name Set'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: const Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                            }
                                                                          } else {
                                                                            await showDialog(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return AlertDialog(
                                                                                  title: const Text('No Autobiography Title Set'),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () => Navigator.pop(alertDialogContext),
                                                                                      child: const Text('Ok'),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            );
                                                                          }
                                                                        },
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 84.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 72.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 72.0;
                                                                      } else {
                                                                        return 472.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  0.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 84.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 72.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 72.0;
                                                                      } else {
                                                                        return 472.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                'Create',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .override(
                                                                  fontFamily:
                                                                      'Lora',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize: () {
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
                                                                      offset: const Offset(
                                                                          2.0,
                                                                          2.0),
                                                                      blurRadius:
                                                                          2.0,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ].divide(const SizedBox(
                                                            width: 12.0)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 12.0)),
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                        ))
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'My Life Story',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily: 'Lora',
                                                            fontSize: 28.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            shadows: [
                                                              Shadow(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headerTextShadow,
                                                                offset: const Offset(
                                                                    2.0, 2.0),
                                                                blurRadius: 2.0,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'An AI Autobiographer',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily: 'Lora',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            shadows: [
                                                              Shadow(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headerTextShadow,
                                                                offset: const Offset(
                                                                    2.0, 2.0),
                                                                blurRadius: 2.0,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                      ],
                                    ),
                                    Divider(
                                      height: 3.0,
                                      thickness: 3.0,
                                      color: FlutterFlowTheme.of(context)
                                          .iconColour,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!);
          },
        ),
      ],
    );
  }
}
