import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'create_author_d_o_b_component_model.dart';
export 'create_author_d_o_b_component_model.dart';

class CreateAuthorDOBComponentWidget extends StatefulWidget {
  const CreateAuthorDOBComponentWidget({
    super.key,
    this.refAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<CreateAuthorDOBComponentWidget> createState() =>
      _CreateAuthorDOBComponentWidgetState();
}

class _CreateAuthorDOBComponentWidgetState
    extends State<CreateAuthorDOBComponentWidget>
    with TickerProviderStateMixin {
  late CreateAuthorDOBComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateAuthorDOBComponentModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
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
      padding: EdgeInsetsDirectional.fromSTEB(
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
                return 24.0;
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
                return 24.0;
              }
            }(),
            0.0,
          )),
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

          final authorDOBColumnAutobiographiesRecord = snapshot.data!;

          return Column(
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
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Author\'s Date of Birth',
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
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        if (_model.toggleExpandAuthorDOB ==
                                            false)
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.toggleExpandAuthorDOB =
                                                  true;
                                              safeSetState(() {});
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 100));
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation'] !=
                                                  null) {
                                                await animationsMap[
                                                        'containerOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 500));
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation'] !=
                                                  null) {
                                                animationsMap[
                                                        'containerOnActionTriggerAnimation']!
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
                                        if (_model.toggleExpandAuthorDOB ==
                                            true)
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation'] !=
                                                  null) {
                                                await animationsMap[
                                                        'containerOnActionTriggerAnimation']!
                                                    .controller
                                                    .reverse();
                                              }
                                              await Future.delayed(
                                                  const Duration(
                                                      milliseconds: 500));
                                              if (animationsMap[
                                                      'containerOnActionTriggerAnimation'] !=
                                                  null) {
                                                animationsMap[
                                                        'containerOnActionTriggerAnimation']!
                                                    .controller
                                                    .stop();
                                              }
                                              _model.toggleExpandAuthorDOB =
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
              if (_model.toggleExpandAuthorDOB == true)
                Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).iconBG,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x8C000000),
                                  offset: Offset(
                                    2.0,
                                    2.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(valueOrDefault<double>(
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
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
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
                                              return 324.0;
                                            }
                                          }(),
                                          0.0,
                                        ),
                                        6.0,
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
                                        6.0),
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
                                            12.0, 6.0, 12.0, 6.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
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
                                                    final datePickedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          getCurrentTimestamp,
                                                      firstDate: DateTime(1900),
                                                      lastDate:
                                                          getCurrentTimestamp,
                                                      builder:
                                                          (context, child) {
                                                        return wrapInMaterialDatePickerTheme(
                                                          context,
                                                          child!,
                                                          headerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          headerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          headerTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter Tight',
                                                                    fontSize:
                                                                        32.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                          pickerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          pickerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          selectedDateTimeBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          selectedDateTimeForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          actionButtonForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          iconSize: 24.0,
                                                        );
                                                      },
                                                    );

                                                    if (datePickedDate !=
                                                        null) {
                                                      safeSetState(() {
                                                        _model.datePicked =
                                                            DateTime(
                                                          datePickedDate.year,
                                                          datePickedDate.month,
                                                          datePickedDate.day,
                                                        );
                                                      });
                                                    }

                                                    await widget
                                                        .refAutobiography!
                                                        .update({
                                                      ...createAutobiographiesRecordData(
                                                        authorDateOfBirth:
                                                            _model.datePicked,
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
                                                        authorDateOfBirth:
                                                            _model.datePicked,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'AI_Instructions_Updated_At':
                                                              FieldValue
                                                                  .serverTimestamp(),
                                                        },
                                                      ),
                                                    });
                                                    _model.timeAuthorDOB =
                                                        _model.datePicked;
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.date_range,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .iconColour,
                                                    size: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 36.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 36.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 36.0;
                                                      } else {
                                                        return 44.0;
                                                      }
                                                    }(),
                                                  ),
                                                ),
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
                                                              ),
                                                              0.0,
                                                              0.0,
                                                              0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      dateTimeFormat(
                                                          "d/M/y",
                                                          dateTimeFormat(
                                                                          "d/M/y",
                                                                          authorDOBColumnAutobiographiesRecord
                                                                              .authorDateOfBirth) !=
                                                                      ''
                                                              ? authorDOBColumnAutobiographiesRecord
                                                                  .authorDateOfBirth
                                                              : _model
                                                                  .timeAuthorDOB),
                                                      '01/01/2001',
                                                    ),
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
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
                                                                  return 24.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  1.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            FlutterFlowIconButton(
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: () {
                                                  if (MediaQuery.sizeOf(context)
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
                                              onPressed: () async {
                                                await widget.refAutobiography!
                                                    .update({
                                                  ...createAutobiographiesRecordData(
                                                    authorDateOfBirth:
                                                        _model.datePicked,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'Autobiography_Updated_At':
                                                          FieldValue
                                                              .serverTimestamp(),
                                                    },
                                                  ),
                                                });

                                                await widget.refAIInstructions!
                                                    .update({
                                                  ...createAIInstructionsRecordData(
                                                    authorDateOfBirth:
                                                        _model.datePicked,
                                                  ),
                                                  ...mapToFirestore(
                                                    {
                                                      'AI_Instructions_Updated_At':
                                                          FieldValue
                                                              .serverTimestamp(),
                                                    },
                                                  ),
                                                });
                                                _model.timeAuthorDOB =
                                                    _model.datePicked;
                                                safeSetState(() {});
                                              },
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
                          Divider(
                            height: 3.0,
                            thickness: 3.0,
                            color: FlutterFlowTheme.of(context).iconColour,
                          ),
                        ],
                      ),
                    ],
                  ),
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation']!,
                ),
            ],
          );
        },
      ),
    );
  }
}
