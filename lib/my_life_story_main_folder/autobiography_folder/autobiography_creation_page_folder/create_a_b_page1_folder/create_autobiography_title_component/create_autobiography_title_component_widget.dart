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
import 'create_autobiography_title_component_model.dart';
export 'create_autobiography_title_component_model.dart';

class CreateAutobiographyTitleComponentWidget extends StatefulWidget {
  const CreateAutobiographyTitleComponentWidget({
    super.key,
    this.refAutobiography,
    this.refUserAutobiography,
    this.refAIAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<CreateAutobiographyTitleComponentWidget> createState() =>
      _CreateAutobiographyTitleComponentWidgetState();
}

class _CreateAutobiographyTitleComponentWidgetState
    extends State<CreateAutobiographyTitleComponentWidget>
    with TickerProviderStateMixin {
  late CreateAutobiographyTitleComponentModel _model;

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
        createModel(context, () => CreateAutobiographyTitleComponentModel());

    _model.textABTitleFocusNode ??= FocusNode();

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

          final aBTitleColumnAutobiographiesRecord = snapshot.data!;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
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
                                    return 324.0;
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
                                    valueOrDefault<String>(
                                      aBTitleColumnAutobiographiesRecord
                                                      .autobiographyTitle !=
                                                  ''
                                          ? aBTitleColumnAutobiographiesRecord
                                              .autobiographyTitle
                                          : _model.stringAutobiographyTitle,
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
                                        if (_model.toggleExpandABTitle == false)
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.toggleExpandABTitle = true;
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
                                        if (_model.toggleExpandABTitle == true)
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
                                              _model.toggleExpandABTitle =
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
              if (_model.toggleExpandABTitle == true)
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
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
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
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 12.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 12.0;
                                      } else {
                                        return 324.0;
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
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
                                            child: SizedBox(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _model
                                                        .textABTitleTextController ??=
                                                    TextEditingController(
                                                  text: aBTitleColumnAutobiographiesRecord
                                                                  .autobiographyTitle !=
                                                              ''
                                                      ? aBTitleColumnAutobiographiesRecord
                                                          .autobiographyTitle
                                                      : '',
                                                ),
                                                focusNode:
                                                    _model.textABTitleFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.textABTitleTextController',
                                                  const Duration(milliseconds: 2000),
                                                  () async {
                                                    _model.stringAutobiographyTitle =
                                                        _model
                                                            .textABTitleTextController
                                                            .text;
                                                    safeSetState(() {});
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
                                                            fontFamily: 'Lora',
                                                            fontSize: () {
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
                                                                return 21.0;
                                                              }
                                                            }(),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                  alignLabelWithHint: false,
                                                  hintText:
                                                      'Enter Autobiography Title here...',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Lora',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                        fontSize: () {
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
                                                            return 21.0;
                                                          }
                                                        }(),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lora',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColour,
                                                          fontSize: () {
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
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                minLines: 1,
                                                maxLength: 24,
                                                validator: _model
                                                    .textABTitleTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0,
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
                                            color: FlutterFlowTheme.of(context)
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
                                                autobiographyTitle: _model
                                                    .textABTitleTextController
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

                                            await widget.refUserAutobiography!
                                                .update({
                                              ...createUserAutobiographyRecordData(
                                                userAutobiographyTitle: _model
                                                    .textABTitleTextController
                                                    .text,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'User_Autobiography_Updated_At':
                                                      FieldValue
                                                          .serverTimestamp(),
                                                },
                                              ),
                                            });

                                            await widget.refAIAutobiography!
                                                .update({
                                              ...createAIAutobiographyRecordData(
                                                aIAutobiographyTitle: _model
                                                    .textABTitleTextController
                                                    .text,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'AI_Autobiography_Updated_At':
                                                      FieldValue
                                                          .serverTimestamp(),
                                                },
                                              ),
                                            });

                                            await widget.refAIInstructions!
                                                .update({
                                              ...createAIInstructionsRecordData(
                                                autobiographyTitle: _model
                                                    .textABTitleTextController
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
