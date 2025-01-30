import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_generating_page_folder/autobiography_generating_nav_bar/autobiography_generating_nav_bar_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_generating_page_folder/autobiography_generating_page_header/autobiography_generating_page_header_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_generating_page_folder/chat_bubble_component/chat_bubble_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/permissions_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:record/record.dart';
import 'autobiography_generating_page_model.dart';
export 'autobiography_generating_page_model.dart';

class AutobiographyGeneratingPageWidget extends StatefulWidget {
  const AutobiographyGeneratingPageWidget({
    super.key,
    this.refAutobiography,
  });

  final DocumentReference? refAutobiography;

  @override
  State<AutobiographyGeneratingPageWidget> createState() =>
      _AutobiographyGeneratingPageWidgetState();
}

class _AutobiographyGeneratingPageWidgetState
    extends State<AutobiographyGeneratingPageWidget>
    with TickerProviderStateMixin {
  late AutobiographyGeneratingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyGeneratingPageModel());

    _model.promptTextFieldTextController ??= TextEditingController(
        text: FFAppState().toggleAudioEntry == true
            ? FFAppState().selectedSpeechToText
            : '');
    _model.promptTextFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 1210.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.05, 1.05),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(1.05, 1.05),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<AutobiographiesRecord>(
      stream: AutobiographiesRecord.getDocument(widget.refAutobiography!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingCircle(
                  color: Color(0xC84B59BC),
                  size: 50.0,
                ),
              ),
            ),
          );
        }

        final autobiographyGeneratingPageAutobiographiesRecord = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 0.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 0.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 0.0;
                          } else {
                            return 364.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0,
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 0.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 0.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 0.0;
                          } else {
                            return 364.0;
                          }
                        }(),
                        0.0,
                      ),
                      212.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0,
                                0.0,
                                0.0,
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 0.0;
                                    } else {
                                      return 72.0;
                                    }
                                  }(),
                                  0.0,
                                )),
                            child: StreamBuilder<
                                List<AutobiographyMessagesRecord>>(
                              stream: queryAutobiographyMessagesRecord(
                                parent: widget.refAutobiography,
                                queryBuilder: (autobiographyMessagesRecord) =>
                                    autobiographyMessagesRecord
                                        .where(
                                          'autobiography_ref',
                                          isEqualTo: widget.refAutobiography,
                                        )
                                        .orderBy('timestamp', descending: true),
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
                                List<AutobiographyMessagesRecord>
                                    chatBubbleComponentAutobiographyMessagesRecordList =
                                    snapshot.data!;

                                return wrapWithModel(
                                  model: _model.chatBubbleComponentModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ChatBubbleComponentWidget(
                                    parameter1:
                                        chatBubbleComponentAutobiographyMessagesRecordList,
                                    parameter2: widget.refAutobiography,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    wrapWithModel(
                      model: _model.autobiographyGeneratingPageHeaderModel,
                      updateCallback: () => safeSetState(() {}),
                      child: AutobiographyGeneratingPageHeaderWidget(
                        refAutobiography: widget.refAutobiography,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            height: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 112.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 112.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 112.0;
                              } else {
                                return 200.0;
                              }
                            }(),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0x00FFFFFF),
                                  FlutterFlowTheme.of(context).primaryBackground
                                ],
                                stops: const [0.0, 0.5],
                                begin: const AlignmentDirectional(0.0, -1.0),
                                end: const AlignmentDirectional(0, 1.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Container(
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 368.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 368.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 368.0;
                                            } else {
                                              return 692.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 100.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 100.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 100.0;
                                            } else {
                                              return 260.0;
                                            }
                                          }(),
                                          constraints: BoxConstraints(
                                            minHeight: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 40.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 40.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 40.0;
                                              } else {
                                                return 100.0;
                                              }
                                            }(),
                                            maxHeight: () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 100.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 100.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 100.0;
                                              } else {
                                                return 186.0;
                                              }
                                            }(),
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                offset: const Offset(
                                                  0.0,
                                                  0.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(10.0),
                                              bottomRight:
                                                  Radius.circular(10.0),
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0),
                                            ),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 6.0, 10.0, 6.0),
                                                  child: SizedBox(
                                                    width: 280.0,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .promptTextFieldTextController,
                                                      focusNode: _model
                                                          .promptTextFieldFocusNode,
                                                      autofocus: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      13.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintText:
                                                            'Write your Autobiography here...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 17.0;
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
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
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
                                                                    return 17.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                lineHeight: 0.0,
                                                              ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 10,
                                                      minLines: 1,
                                                      keyboardType:
                                                          TextInputType
                                                              .multiline,
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      validator: _model
                                                          .promptTextFieldTextControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 12.0, 12.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      width: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 32.0;
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
                                                          return 46.0;
                                                        }
                                                      }(),
                                                      height: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 32.0;
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
                                                          return 46.0;
                                                        }
                                                      }(),
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour2,
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  valueOrDefault<
                                                                      double>(
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
                                                          bottomRight:
                                                              Radius.circular(
                                                                  valueOrDefault<
                                                                      double>(
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
                                                          topLeft:
                                                              Radius.circular(
                                                                  valueOrDefault<
                                                                      double>(
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
                                                          topRight:
                                                              Radius.circular(
                                                                  valueOrDefault<
                                                                      double>(
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
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.toggleAudioRecordingComponent =
                                                                true;
                                                            safeSetState(() {});
                                                          },
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .microphoneAlt,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            size: () {
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
                                                                return 21.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointLarge) {
                                                                return 21.0;
                                                              } else {
                                                                return 28.0;
                                                              }
                                                            }(),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderRadius: () {
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
                                                        buttonSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 32.0;
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
                                                            return 46.0;
                                                          }
                                                        }(),
                                                        fillColor:
                                                            const Color(0xFFBF9B5A),
                                                        icon: Icon(
                                                          Icons.send,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: () {
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
                                                        ),
                                                        onPressed: () async {
                                                          var shouldSetState =
                                                              false;
                                                          _model.backendAddMessage =
                                                              await OpenAIAssistantGroup
                                                                  .addAutobiographyMessageCall
                                                                  .call(
                                                            threadId:
                                                                autobiographyGeneratingPageAutobiographiesRecord
                                                                    .autobiographyThreadID,
                                                            message: _model
                                                                .promptTextFieldTextController
                                                                .text,
                                                            apiKey: autobiographyGeneratingPageAutobiographiesRecord
                                                                .userOpenAIAPIKey,
                                                          );

                                                          shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .backendAddMessage
                                                                  ?.succeeded ??
                                                              true)) {
                                                            _model.waiting =
                                                                true;
                                                            safeSetState(() {});
                                                            if (FFAppState()
                                                                    .toggleAudioEntry ==
                                                                true) {
                                                              var autobiographyMessagesRecordReference1 =
                                                                  AutobiographyMessagesRecord
                                                                      .createDoc(
                                                                          autobiographyGeneratingPageAutobiographiesRecord
                                                                              .reference);
                                                              await autobiographyMessagesRecordReference1
                                                                  .set({
                                                                ...createAutobiographyMessagesRecordData(
                                                                  role: 'user',
                                                                  autobiographyRef:
                                                                      widget
                                                                          .refAutobiography,
                                                                  entryNumber:
                                                                      autobiographyGeneratingPageAutobiographiesRecord
                                                                          .currentUserEntryNumber,
                                                                  entryContent:
                                                                      _model
                                                                          .promptTextFieldTextController
                                                                          .text,
                                                                  entryId:
                                                                      'entry_id:${random_data.randomString(
                                                                    10,
                                                                    20,
                                                                    true,
                                                                    true,
                                                                    true,
                                                                  )}',
                                                                  content: '',
                                                                  audioFile:
                                                                      true,
                                                                  audioFileNumber:
                                                                      FFAppState()
                                                                          .appAudioFileNumber,
                                                                  audioFileName:
                                                                      FFAppState()
                                                                          .selectedAudioTitle,
                                                                  audioFilePath:
                                                                      FFAppState()
                                                                          .selectedAudioPath,
                                                                  audioFileContent:
                                                                      FFAppState()
                                                                          .selectedSpeechToText,
                                                                  audioFileREF:
                                                                      FFAppState()
                                                                          .selectUserAudioFile,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'timestamp':
                                                                        FieldValue
                                                                            .serverTimestamp(),
                                                                    'Audio_Created_At':
                                                                        FieldValue
                                                                            .serverTimestamp(),
                                                                  },
                                                                ),
                                                              });
                                                              _model.backendAudioConvoDoc =
                                                                  AutobiographyMessagesRecord
                                                                      .getDocumentFromData({
                                                                ...createAutobiographyMessagesRecordData(
                                                                  role: 'user',
                                                                  autobiographyRef:
                                                                      widget
                                                                          .refAutobiography,
                                                                  entryNumber:
                                                                      autobiographyGeneratingPageAutobiographiesRecord
                                                                          .currentUserEntryNumber,
                                                                  entryContent:
                                                                      _model
                                                                          .promptTextFieldTextController
                                                                          .text,
                                                                  entryId:
                                                                      'entry_id:${random_data.randomString(
                                                                    10,
                                                                    20,
                                                                    true,
                                                                    true,
                                                                    true,
                                                                  )}',
                                                                  content: '',
                                                                  audioFile:
                                                                      true,
                                                                  audioFileNumber:
                                                                      FFAppState()
                                                                          .appAudioFileNumber,
                                                                  audioFileName:
                                                                      FFAppState()
                                                                          .selectedAudioTitle,
                                                                  audioFilePath:
                                                                      FFAppState()
                                                                          .selectedAudioPath,
                                                                  audioFileContent:
                                                                      FFAppState()
                                                                          .selectedSpeechToText,
                                                                  audioFileREF:
                                                                      FFAppState()
                                                                          .selectUserAudioFile,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'timestamp':
                                                                        DateTime
                                                                            .now(),
                                                                    'Audio_Created_At':
                                                                        DateTime
                                                                            .now(),
                                                                  },
                                                                ),
                                                              }, autobiographyMessagesRecordReference1);
                                                              shouldSetState =
                                                                  true;
                                                            } else {
                                                              var autobiographyMessagesRecordReference2 =
                                                                  AutobiographyMessagesRecord
                                                                      .createDoc(
                                                                          autobiographyGeneratingPageAutobiographiesRecord
                                                                              .reference);
                                                              await autobiographyMessagesRecordReference2
                                                                  .set({
                                                                ...createAutobiographyMessagesRecordData(
                                                                  role: 'user',
                                                                  autobiographyRef:
                                                                      widget
                                                                          .refAutobiography,
                                                                  entryNumber:
                                                                      autobiographyGeneratingPageAutobiographiesRecord
                                                                          .currentUserEntryNumber,
                                                                  entryContent:
                                                                      _model
                                                                          .promptTextFieldTextController
                                                                          .text,
                                                                  entryId:
                                                                      'entry_id:${random_data.randomString(
                                                                    10,
                                                                    20,
                                                                    true,
                                                                    true,
                                                                    true,
                                                                  )}',
                                                                  content: '',
                                                                  audioFile:
                                                                      false,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'timestamp':
                                                                        FieldValue
                                                                            .serverTimestamp(),
                                                                  },
                                                                ),
                                                              });
                                                              _model.backendConvoDoc =
                                                                  AutobiographyMessagesRecord
                                                                      .getDocumentFromData({
                                                                ...createAutobiographyMessagesRecordData(
                                                                  role: 'user',
                                                                  autobiographyRef:
                                                                      widget
                                                                          .refAutobiography,
                                                                  entryNumber:
                                                                      autobiographyGeneratingPageAutobiographiesRecord
                                                                          .currentUserEntryNumber,
                                                                  entryContent:
                                                                      _model
                                                                          .promptTextFieldTextController
                                                                          .text,
                                                                  entryId:
                                                                      'entry_id:${random_data.randomString(
                                                                    10,
                                                                    20,
                                                                    true,
                                                                    true,
                                                                    true,
                                                                  )}',
                                                                  content: '',
                                                                  audioFile:
                                                                      false,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'timestamp':
                                                                        DateTime
                                                                            .now(),
                                                                  },
                                                                ),
                                                              }, autobiographyMessagesRecordReference2);
                                                              shouldSetState =
                                                                  true;
                                                            }

                                                            safeSetState(() {
                                                              _model
                                                                  .promptTextFieldTextController
                                                                  ?.clear();
                                                            });
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: const Text(
                                                                      'BackendAddMessageFailed'),
                                                                  content: Text(
                                                                      '${(_model.backendAddMessage?.statusCode ?? 200).toString()}                                                                      ${(_model.backendAddMessage?.bodyText ?? '')}                                                                      ${(_model.backendAddMessage?.exceptionMessage ?? '')}'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: const Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                            if (shouldSetState) {
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            return;
                                                          }

                                                          _model.backendCreateRun =
                                                              await OpenAIAssistantGroup
                                                                  .createAutobiographyRunCall
                                                                  .call(
                                                            threadId:
                                                                autobiographyGeneratingPageAutobiographiesRecord
                                                                    .autobiographyThreadID,
                                                            assistantId:
                                                                autobiographyGeneratingPageAutobiographiesRecord
                                                                    .autobiographyAssistantID,
                                                            apiKey: autobiographyGeneratingPageAutobiographiesRecord
                                                                .userOpenAIAPIKey,
                                                          );

                                                          shouldSetState =
                                                              true;
                                                          if (!(_model
                                                                  .backendCreateRun
                                                                  ?.succeeded ??
                                                              true)) {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: const Text(
                                                                      'BackendCreateRunFailed'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: const Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                            if (shouldSetState) {
                                                              safeSetState(
                                                                  () {});
                                                            }
                                                            return;
                                                          }
                                                          while (
                                                              _model.waiting) {
                                                            _model.backendGetRun =
                                                                await OpenAIAssistantGroup
                                                                    .getAutobiographyRunCall
                                                                    .call(
                                                              threadId:
                                                                  autobiographyGeneratingPageAutobiographiesRecord
                                                                      .autobiographyThreadID,
                                                              runId: OpenAIAssistantGroup
                                                                  .createAutobiographyRunCall
                                                                  .id(
                                                                (_model.backendCreateRun
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              ),
                                                              apiKey: autobiographyGeneratingPageAutobiographiesRecord
                                                                  .userOpenAIAPIKey,
                                                            );

                                                            shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .backendGetRun
                                                                    ?.succeeded ??
                                                                true)) {
                                                              if (OpenAIAssistantGroup
                                                                      .getAutobiographyRunCall
                                                                      .status(
                                                                    (_model.backendGetRun
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ) ==
                                                                  'completed') {
                                                                _model.waiting =
                                                                    false;
                                                              }
                                                              await Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          1000));
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'BackendGetRunFailed'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: const Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          }
                                                          _model.backendResponseMessage =
                                                              await OpenAIAssistantGroup
                                                                  .getAutobiographyMessagesCall
                                                                  .call(
                                                            threadId:
                                                                autobiographyGeneratingPageAutobiographiesRecord
                                                                    .autobiographyThreadID,
                                                            apiKey: autobiographyGeneratingPageAutobiographiesRecord
                                                                .userOpenAIAPIKey,
                                                          );

                                                          shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .backendResponseMessage
                                                                  ?.succeeded ??
                                                              true)) {
                                                            var autobiographyMessagesRecordReference3 =
                                                                AutobiographyMessagesRecord
                                                                    .createDoc(
                                                              autobiographyGeneratingPageAutobiographiesRecord
                                                                  .reference,
                                                              id: 'response_id:${random_data.randomString(
                                                                10,
                                                                20,
                                                                true,
                                                                true,
                                                                true,
                                                              )}',
                                                            );
                                                            await autobiographyMessagesRecordReference3
                                                                .set({
                                                              ...createAutobiographyMessagesRecordData(
                                                                autobiographyRef:
                                                                    widget
                                                                        .refAutobiography,
                                                                role:
                                                                    'assistant',
                                                                threadId: _model
                                                                    .backendConvoDoc
                                                                    ?.threadId,
                                                                autobiographyId: _model
                                                                    .backendConvoDoc
                                                                    ?.autobiographyId,
                                                                responseTitle:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  (functions
                                                                          .parseAutobiographyMessages(OpenAIAssistantGroup
                                                                              .getAutobiographyMessagesCall
                                                                              .response(
                                                                            (_model.backendResponseMessage?.jsonBody ??
                                                                                ''),
                                                                          ))
                                                                          ?.elementAtOrNull(
                                                                              1))
                                                                      ?.toString(),
                                                                  'response_title',
                                                                ),
                                                                responseContent:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  (functions
                                                                          .parseAutobiographyMessages(OpenAIAssistantGroup
                                                                              .getAutobiographyMessagesCall
                                                                              .response(
                                                                            (_model.backendResponseMessage?.jsonBody ??
                                                                                ''),
                                                                          ))
                                                                          ?.elementAtOrNull(
                                                                              2))
                                                                      ?.toString(),
                                                                  'response_content',
                                                                ),
                                                                responseReferences:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  (functions
                                                                          .parseAutobiographyMessages(OpenAIAssistantGroup
                                                                              .getAutobiographyMessagesCall
                                                                              .response(
                                                                            (_model.backendResponseMessage?.jsonBody ??
                                                                                ''),
                                                                          ))
                                                                          ?.elementAtOrNull(
                                                                              3))
                                                                      ?.toString(),
                                                                  'response_references',
                                                                ),
                                                                responseId:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'response_id:${random_data.randomString(
                                                                    10,
                                                                    20,
                                                                    true,
                                                                    true,
                                                                    true,
                                                                  )}',
                                                                  'response_id',
                                                                ),
                                                                responseNumber:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  (functions
                                                                          .parseAutobiographyMessages(OpenAIAssistantGroup
                                                                              .getAutobiographyMessagesCall
                                                                              .response(
                                                                            (_model.backendResponseMessage?.jsonBody ??
                                                                                ''),
                                                                          ))
                                                                          ?.elementAtOrNull(
                                                                              0))
                                                                      ?.toString(),
                                                                  'response_number',
                                                                ),
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'timestamp':
                                                                      FieldValue
                                                                          .serverTimestamp(),
                                                                },
                                                              ),
                                                            });
                                                            _model.backendResponseAIDoc =
                                                                AutobiographyMessagesRecord
                                                                    .getDocumentFromData({
                                                              ...createAutobiographyMessagesRecordData(
                                                                autobiographyRef:
                                                                    widget
                                                                        .refAutobiography,
                                                                role:
                                                                    'assistant',
                                                                threadId: _model
                                                                    .backendConvoDoc
                                                                    ?.threadId,
                                                                autobiographyId: _model
                                                                    .backendConvoDoc
                                                                    ?.autobiographyId,
                                                                responseTitle:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  (functions
                                                                          .parseAutobiographyMessages(OpenAIAssistantGroup
                                                                              .getAutobiographyMessagesCall
                                                                              .response(
                                                                            (_model.backendResponseMessage?.jsonBody ??
                                                                                ''),
                                                                          ))
                                                                          ?.elementAtOrNull(
                                                                              1))
                                                                      ?.toString(),
                                                                  'response_title',
                                                                ),
                                                                responseContent:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  (functions
                                                                          .parseAutobiographyMessages(OpenAIAssistantGroup
                                                                              .getAutobiographyMessagesCall
                                                                              .response(
                                                                            (_model.backendResponseMessage?.jsonBody ??
                                                                                ''),
                                                                          ))
                                                                          ?.elementAtOrNull(
                                                                              2))
                                                                      ?.toString(),
                                                                  'response_content',
                                                                ),
                                                                responseReferences:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  (functions
                                                                          .parseAutobiographyMessages(OpenAIAssistantGroup
                                                                              .getAutobiographyMessagesCall
                                                                              .response(
                                                                            (_model.backendResponseMessage?.jsonBody ??
                                                                                ''),
                                                                          ))
                                                                          ?.elementAtOrNull(
                                                                              3))
                                                                      ?.toString(),
                                                                  'response_references',
                                                                ),
                                                                responseId:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  'response_id:${random_data.randomString(
                                                                    10,
                                                                    20,
                                                                    true,
                                                                    true,
                                                                    true,
                                                                  )}',
                                                                  'response_id',
                                                                ),
                                                                responseNumber:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  (functions
                                                                          .parseAutobiographyMessages(OpenAIAssistantGroup
                                                                              .getAutobiographyMessagesCall
                                                                              .response(
                                                                            (_model.backendResponseMessage?.jsonBody ??
                                                                                ''),
                                                                          ))
                                                                          ?.elementAtOrNull(
                                                                              0))
                                                                      ?.toString(),
                                                                  'response_number',
                                                                ),
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'timestamp':
                                                                      DateTime
                                                                          .now(),
                                                                },
                                                              ),
                                                            }, autobiographyMessagesRecordReference3);
                                                            shouldSetState =
                                                                true;

                                                            var userEntriesRecordReference =
                                                                UserEntriesRecord
                                                                    .createDoc(
                                                                        widget
                                                                            .refAutobiography!);
                                                            await userEntriesRecordReference
                                                                .set({
                                                              ...createUserEntriesRecordData(
                                                                userEntryNumber:
                                                                    autobiographyGeneratingPageAutobiographiesRecord
                                                                        .currentUserEntryNumber,
                                                                userEntryTitle: _model
                                                                    .backendResponseAIDoc
                                                                    ?.responseTitle,
                                                                userEntryContent: _model
                                                                    .backendConvoDoc
                                                                    ?.entryContent,
                                                                autobiographyRef:
                                                                    widget
                                                                        .refAutobiography,
                                                                userEntryUID:
                                                                    currentUserReference,
                                                                userEntryAudioUploadNumber:
                                                                    FFAppState()
                                                                        .appAudioFileNumber,
                                                                userEntryAudioUploadName:
                                                                    FFAppState()
                                                                        .selectedAudioTitle,
                                                                userEntryAudioUploadPath:
                                                                    FFAppState()
                                                                        .selectedAudioPath,
                                                                userEntryAudioUploadID:
                                                                    FFAppState()
                                                                        .selectUserAudioFile
                                                                        ?.id,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'User_Entry_Created':
                                                                      FieldValue
                                                                          .serverTimestamp(),
                                                                  'User_Entry_Audio_Upload_Created':
                                                                      FieldValue
                                                                          .serverTimestamp(),
                                                                },
                                                              ),
                                                            });
                                                            _model.backendCreateUserEntry =
                                                                UserEntriesRecord
                                                                    .getDocumentFromData({
                                                              ...createUserEntriesRecordData(
                                                                userEntryNumber:
                                                                    autobiographyGeneratingPageAutobiographiesRecord
                                                                        .currentUserEntryNumber,
                                                                userEntryTitle: _model
                                                                    .backendResponseAIDoc
                                                                    ?.responseTitle,
                                                                userEntryContent: _model
                                                                    .backendConvoDoc
                                                                    ?.entryContent,
                                                                autobiographyRef:
                                                                    widget
                                                                        .refAutobiography,
                                                                userEntryUID:
                                                                    currentUserReference,
                                                                userEntryAudioUploadNumber:
                                                                    FFAppState()
                                                                        .appAudioFileNumber,
                                                                userEntryAudioUploadName:
                                                                    FFAppState()
                                                                        .selectedAudioTitle,
                                                                userEntryAudioUploadPath:
                                                                    FFAppState()
                                                                        .selectedAudioPath,
                                                                userEntryAudioUploadID:
                                                                    FFAppState()
                                                                        .selectUserAudioFile
                                                                        ?.id,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'User_Entry_Created':
                                                                      DateTime
                                                                          .now(),
                                                                  'User_Entry_Audio_Upload_Created':
                                                                      DateTime
                                                                          .now(),
                                                                },
                                                              ),
                                                            }, userEntriesRecordReference);
                                                            shouldSetState =
                                                                true;

                                                            var aIResponsesRecordReference =
                                                                AIResponsesRecord
                                                                    .createDoc(
                                                                        widget
                                                                            .refAutobiography!);
                                                            await aIResponsesRecordReference
                                                                .set({
                                                              ...createAIResponsesRecordData(
                                                                aIResponseNumber:
                                                                    autobiographyGeneratingPageAutobiographiesRecord
                                                                        .currentAIResponseNumber,
                                                                aIResponseTitle: _model
                                                                    .backendResponseAIDoc
                                                                    ?.responseTitle,
                                                                aIResponseContent: _model
                                                                    .backendResponseAIDoc
                                                                    ?.responseContent,
                                                                autobiographyRef:
                                                                    widget
                                                                        .refAutobiography,
                                                                aIResponseUID:
                                                                    currentUserReference,
                                                                aIChapterRef:
                                                                    FFAppState()
                                                                        .appCurrentChapter,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'AI_Response_Hashtags':
                                                                      [
                                                                    _model
                                                                        .backendResponseAIDoc
                                                                        ?.responseReferences
                                                                  ],
                                                                  'AI_Response_Created_At':
                                                                      FieldValue
                                                                          .serverTimestamp(),
                                                                },
                                                              ),
                                                            });
                                                            _model.backendCreateAIResponse =
                                                                AIResponsesRecord
                                                                    .getDocumentFromData({
                                                              ...createAIResponsesRecordData(
                                                                aIResponseNumber:
                                                                    autobiographyGeneratingPageAutobiographiesRecord
                                                                        .currentAIResponseNumber,
                                                                aIResponseTitle: _model
                                                                    .backendResponseAIDoc
                                                                    ?.responseTitle,
                                                                aIResponseContent: _model
                                                                    .backendResponseAIDoc
                                                                    ?.responseContent,
                                                                autobiographyRef:
                                                                    widget
                                                                        .refAutobiography,
                                                                aIResponseUID:
                                                                    currentUserReference,
                                                                aIChapterRef:
                                                                    FFAppState()
                                                                        .appCurrentChapter,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'AI_Response_Hashtags':
                                                                      [
                                                                    _model
                                                                        .backendResponseAIDoc
                                                                        ?.responseReferences
                                                                  ],
                                                                  'AI_Response_Created_At':
                                                                      DateTime
                                                                          .now(),
                                                                },
                                                              ),
                                                            }, aIResponsesRecordReference);
                                                            shouldSetState =
                                                                true;

                                                            await widget
                                                                .refAutobiography!
                                                                .update({
                                                              ...mapToFirestore(
                                                                {
                                                                  'Autobiography_Messages_Ref':
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    _model
                                                                        .backendResponseAIDoc
                                                                        ?.reference
                                                                  ]),
                                                                  'Autobiography_Updated_At':
                                                                      FieldValue
                                                                          .serverTimestamp(),
                                                                  'User_Entries_Ref':
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    _model
                                                                        .backendCreateUserEntry
                                                                        ?.reference
                                                                  ]),
                                                                  'AI_Responses_Ref':
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    _model
                                                                        .backendCreateAIResponse
                                                                        ?.reference
                                                                  ]),
                                                                  'Current_User_Entry_Number':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                  'Current_AI_Response_Number':
                                                                      FieldValue
                                                                          .increment(
                                                                              1),
                                                                },
                                                              ),
                                                            });
                                                            FFAppState()
                                                                    .toggleAudioEntry =
                                                                false;
                                                            FFAppState()
                                                                .deleteSelectedAudioTitle();
                                                            FFAppState()
                                                                .selectedAudioTitle = '';

                                                            FFAppState()
                                                                .deleteSelectedSpeechToText();
                                                            FFAppState()
                                                                .selectedSpeechToText = '';

                                                            FFAppState()
                                                                .deleteSelectedAudioPath();
                                                            FFAppState()
                                                                .selectedAudioPath = '';

                                                            FFAppState()
                                                                .deleteSelectUserAudioFile();
                                                            FFAppState()
                                                                    .selectUserAudioFile =
                                                                null;

                                                            _model.currentEntryNumber =
                                                                _model
                                                                    .backendConvoDoc
                                                                    ?.entryNumber;
                                                            safeSetState(() {});
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: const Text(
                                                                      'BackendRespondMessageFailed'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: const Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                          }

                                                          if (shouldSetState) {
                                                            safeSetState(() {});
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                  ],
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
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation']!),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: wrapWithModel(
                              model: _model.autobiographyGeneratingNavBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: AutobiographyGeneratingNavBarWidget(
                                refAutobiography: widget.refAutobiography!,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (_model.toggleAudioRecordingComponent == true)
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0x881B1B1B),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    valueOrDefault<double>(
                                      () {
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
                                          return 364.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    16.0,
                                    valueOrDefault<double>(
                                      () {
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
                                          return 364.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    16.0),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 860),
                                  curve: Curves.easeIn,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        offset: const Offset(
                                          0.0,
                                          0.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 3.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 16.0, 16.0, 16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              0.0,
                                                              0.0,
                                                              0.0,
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
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    valueOrDefault<
                                                                        double>(
                                                                      () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 36.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 36.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointLarge) {
                                                                          return 36.0;
                                                                        } else {
                                                                          return 164.0;
                                                                        }
                                                                      }(),
                                                                      0.0,
                                                                    ),
                                                                    0.0),
                                                        child: Text(
                                                          'Audio Recording',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Inter Tight',
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 24.0;
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
                                                                    return 32.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 0.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 0.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 0.0;
                                                                    } else {
                                                                      return 6.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 0.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 0.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 0.0;
                                                                    } else {
                                                                      return 6.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 0.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 0.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 0.0;
                                                                    } else {
                                                                      return 6.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                )),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            FFAppState()
                                                                .deleteSelectedAudioTitle();
                                                            FFAppState()
                                                                .selectedAudioTitle = '';

                                                            FFAppState()
                                                                .deleteSelectedSpeechToText();
                                                            FFAppState()
                                                                .selectedSpeechToText = '';

                                                            FFAppState()
                                                                .deleteSelectedAudioPath();
                                                            FFAppState()
                                                                .selectedAudioPath = '';

                                                            FFAppState()
                                                                .deleteSelectUserAudioFile();
                                                            FFAppState()
                                                                    .selectUserAudioFile =
                                                                null;

                                                            FFAppState()
                                                                .deleteToggleAudioExists();
                                                            FFAppState()
                                                                    .toggleAudioExists =
                                                                false;

                                                            FFAppState()
                                                                .deleteAppAudioFileNumber();
                                                            FFAppState()
                                                                .appAudioFileNumber = 0;

                                                            _model.toggleAudioExistsToAddAutobio =
                                                                false;
                                                            _model.toggleAudioExistsForSTT =
                                                                false;
                                                            _model.toggleAudioRecorded =
                                                                false;
                                                            _model.toggleAudioUploaded =
                                                                false;
                                                            _model.toggleRecording =
                                                                false;
                                                            _model.toggleAudioRecordingComponent =
                                                                false;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.close,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return 24.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointMedium) {
                                                                return 24.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
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
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (_model
                                                        .toggleAudioExistsToAddAutobio ==
                                                    true)
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 306.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 306.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 306.0;
                                                          } else {
                                                            return 672.0;
                                                          }
                                                        }(),
                                                        constraints:
                                                            BoxConstraints(
                                                          maxHeight: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 196.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 196.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 196.0;
                                                            } else {
                                                              return 272.0;
                                                            }
                                                          }(),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              offset: const Offset(
                                                                0.0,
                                                                0.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
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
                                                            bottomRight:
                                                                Radius.circular(
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
                                                            topLeft:
                                                                Radius.circular(
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
                                                            topRight:
                                                                Radius.circular(
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
                                                          ),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                FlutterFlowAudioPlayer(
                                                                  audio: Audio
                                                                      .network(
                                                                    FFAppState()
                                                                        .selectedAudioPath,
                                                                    metas:
                                                                        Metas(
                                                                      title:
                                                                          'Audio Title',
                                                                    ),
                                                                  ),
                                                                  titleTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter Tight',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  playbackDurationTextStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  playbackButtonColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  activeTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  inactiveTrackColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  elevation:
                                                                      0.0,
                                                                  playInBackground:
                                                                      PlayInBackground
                                                                          .disabledPause,
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          12.0,
                                                                          12.0,
                                                                          12.0),
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          FFAppState()
                                                                              .selectedSpeechToText,
                                                                          'STT Content',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            8,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Inter',
                                                                              fontSize: () {
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
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      1.0, 1.0),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            6.0,
                                                                            10.0,
                                                                            6.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await FFAppState()
                                                                            .selectUserAudioFile!
                                                                            .delete();
                                                                        _model.toggleAudioExistsToAddAutobio =
                                                                            false;
                                                                        _model.toggleAudioExistsForSTT =
                                                                            false;
                                                                        _model.toggleAudioRecorded =
                                                                            false;
                                                                        _model.toggleAudioUploaded =
                                                                            false;
                                                                        _model.toggleRecording =
                                                                            false;
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .delete,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent1,
                                                                        size:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 26.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 26.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 26.0;
                                                                          } else {
                                                                            return 30.0;
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
                                                      ),
                                                    ],
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if ((_model.toggleAudioExistsForSTT ==
                                                          false) ||
                                                      (_model.toggleAudioExistsToAddAutobio ==
                                                          false))
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        if ((_model.toggleAudioRecorded == false) &&
                                                            (_model.toggleAudioExistsForSTT ==
                                                                false) &&
                                                            (_model.toggleAudioExistsToAddAutobio ==
                                                                false))
                                                          Container(
                                                            width: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return 72.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointMedium) {
                                                                return 72.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointLarge) {
                                                                return 72.0;
                                                              } else {
                                                                return 96.0;
                                                              }
                                                            }(),
                                                            height: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return 72.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointMedium) {
                                                                return 72.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointLarge) {
                                                                return 72.0;
                                                              } else {
                                                                return 96.0;
                                                              }
                                                            }(),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .switchColour,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        valueOrDefault<
                                                                            double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 21.0;
                                                                    } else {
                                                                      return 26.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                )),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        valueOrDefault<
                                                                            double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 21.0;
                                                                    } else {
                                                                      return 26.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                )),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        valueOrDefault<
                                                                            double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 21.0;
                                                                    } else {
                                                                      return 26.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                )),
                                                                topRight: Radius
                                                                    .circular(
                                                                        valueOrDefault<
                                                                            double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 21.0;
                                                                    } else {
                                                                      return 26.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                )),
                                                              ),
                                                            ),
                                                            child: InkWell(
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
                                                                final selectedFiles =
                                                                    await selectFiles(
                                                                  allowedExtensions: [
                                                                    'mp3'
                                                                  ],
                                                                  multiFile:
                                                                      false,
                                                                );
                                                                if (selectedFiles !=
                                                                    null) {
                                                                  safeSetState(() =>
                                                                      _model.isDataUploading1 =
                                                                          true);
                                                                  var selectedUploadedFiles =
                                                                      <FFUploadedFile>[];

                                                                  try {
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Uploading file...',
                                                                      showLoading:
                                                                          true,
                                                                    );
                                                                    selectedUploadedFiles = selectedFiles
                                                                        .map((m) => FFUploadedFile(
                                                                              name: m.storagePath.split('/').last,
                                                                              bytes: m.bytes,
                                                                            ))
                                                                        .toList();
                                                                  } finally {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .hideCurrentSnackBar();
                                                                    _model.isDataUploading1 =
                                                                        false;
                                                                  }
                                                                  if (selectedUploadedFiles
                                                                          .length ==
                                                                      selectedFiles
                                                                          .length) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.uploadedLocalFile1 =
                                                                          selectedUploadedFiles
                                                                              .first;
                                                                    });
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Success!',
                                                                    );
                                                                  } else {
                                                                    safeSetState(
                                                                        () {});
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Failed to upload file',
                                                                    );
                                                                    return;
                                                                  }
                                                                }

                                                                _model.toggleAudioUploaded =
                                                                    true;
                                                                _model.toggleAudioExistsForSTT =
                                                                    true;
                                                                _model.toggleAudioExistsToAddAutobio =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .upload_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
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
                                                                    return 56.0;
                                                                  }
                                                                }(),
                                                              ),
                                                            ),
                                                          ),
                                                        if ((_model.toggleAudioUploaded == false) &&
                                                            (_model.toggleAudioExistsForSTT ==
                                                                false) &&
                                                            (_model.toggleAudioExistsToAddAutobio ==
                                                                false))
                                                          Stack(
                                                            children: [
                                                              if (_model
                                                                      .toggleRecording ==
                                                                  false)
                                                                Container(
                                                                  width: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 96.0;
                                                                    }
                                                                  }(),
                                                                  height: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 96.0;
                                                                    }
                                                                  }(),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              valueOrDefault<double>(
                                                                        () {
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
                                                                            return 26.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      )),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              valueOrDefault<double>(
                                                                        () {
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
                                                                            return 26.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      )),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              valueOrDefault<double>(
                                                                        () {
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
                                                                            return 26.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      )),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              valueOrDefault<double>(
                                                                        () {
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
                                                                            return 26.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      )),
                                                                    ),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await requestPermission(
                                                                            microphonePermission);
                                                                        await startAudioRecording(
                                                                          context,
                                                                          audioRecorder: _model.audioRecorder ??=
                                                                              AudioRecorder(),
                                                                        );

                                                                        _model.toggleAudioUploaded =
                                                                            false;
                                                                        _model.toggleAudioRecorded =
                                                                            true;
                                                                        _model.toggleRecording =
                                                                            true;
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .mic_off,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        size:
                                                                            () {
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
                                                                            return 56.0;
                                                                          }
                                                                        }(),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (_model
                                                                      .toggleRecording ==
                                                                  true)
                                                                Container(
                                                                  width: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 96.0;
                                                                    }
                                                                  }(),
                                                                  height: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 96.0;
                                                                    }
                                                                  }(),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF3CCE6A),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              valueOrDefault<double>(
                                                                        () {
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
                                                                            return 26.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      )),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              valueOrDefault<double>(
                                                                        () {
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
                                                                            return 26.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      )),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              valueOrDefault<double>(
                                                                        () {
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
                                                                            return 26.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      )),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              valueOrDefault<double>(
                                                                        () {
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
                                                                            return 26.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      )),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await stopAudioRecording(
                                                                        audioRecorder:
                                                                            _model.audioRecorder,
                                                                        audioName:
                                                                            'recordedFileBytes',
                                                                        onRecordingComplete:
                                                                            (audioFilePath,
                                                                                audioBytes) {
                                                                          _model.recordedUserAudio =
                                                                              audioFilePath;
                                                                          _model.recordedFileBytes =
                                                                              audioBytes;
                                                                        },
                                                                      );

                                                                      _model.toggleRecording =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                      {
                                                                        safeSetState(() =>
                                                                            _model.isDataUploading2 =
                                                                                true);
                                                                        var selectedUploadedFiles =
                                                                            <FFUploadedFile>[];
                                                                        var selectedFiles =
                                                                            <SelectedFile>[];
                                                                        var downloadUrls =
                                                                            <String>[];
                                                                        try {
                                                                          showUploadMessage(
                                                                            context,
                                                                            'Uploading file...',
                                                                            showLoading:
                                                                                true,
                                                                          );
                                                                          selectedUploadedFiles = _model.recordedFileBytes.bytes!.isNotEmpty
                                                                              ? [
                                                                                  _model.recordedFileBytes
                                                                                ]
                                                                              : <FFUploadedFile>[];
                                                                          selectedFiles =
                                                                              selectedFilesFromUploadedFiles(
                                                                            selectedUploadedFiles,
                                                                          );
                                                                          downloadUrls = (await Future.wait(
                                                                            selectedFiles.map(
                                                                              (f) async => await uploadData(f.storagePath, f.bytes),
                                                                            ),
                                                                          ))
                                                                              .where((u) => u != null)
                                                                              .map((u) => u!)
                                                                              .toList();
                                                                        } finally {
                                                                          ScaffoldMessenger.of(context)
                                                                              .hideCurrentSnackBar();
                                                                          _model.isDataUploading2 =
                                                                              false;
                                                                        }
                                                                        if (selectedUploadedFiles.length == selectedFiles.length &&
                                                                            downloadUrls.length ==
                                                                                selectedFiles.length) {
                                                                          safeSetState(
                                                                              () {
                                                                            _model.uploadedLocalFile2 =
                                                                                selectedUploadedFiles.first;
                                                                            _model.uploadedFileUrl2 =
                                                                                downloadUrls.first;
                                                                          });
                                                                          showUploadMessage(
                                                                            context,
                                                                            'Success!',
                                                                          );
                                                                        } else {
                                                                          safeSetState(
                                                                              () {});
                                                                          showUploadMessage(
                                                                            context,
                                                                            'Failed to upload file',
                                                                          );
                                                                          return;
                                                                        }
                                                                      }

                                                                      _model.toggleAudioExistsForSTT =
                                                                          true;
                                                                      safeSetState(
                                                                          () {});

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons.mic,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .info,
                                                                      size: () {
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
                                                                          return 56.0;
                                                                        }
                                                                      }(),
                                                                    ),
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'iconOnPageLoadAnimation']!),
                                                                ),
                                                            ],
                                                          ),
                                                      ],
                                                    ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                if ((_model.toggleAudioExistsForSTT ==
                                                        true) &&
                                                    (_model.toggleAudioExistsToAddAutobio ==
                                                        false))
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      if ((_model.toggleAudioUploaded ==
                                                              true) &&
                                                          (_model.toggleAudioRecorded ==
                                                              false)) {
                                                        {
                                                          safeSetState(() =>
                                                              _model.isDataUploading3 =
                                                                  true);
                                                          var selectedUploadedFiles =
                                                              <FFUploadedFile>[];
                                                          var selectedFiles =
                                                              <SelectedFile>[];
                                                          var downloadUrls =
                                                              <String>[];
                                                          try {
                                                            showUploadMessage(
                                                              context,
                                                              'Uploading file...',
                                                              showLoading: true,
                                                            );
                                                            selectedUploadedFiles = _model
                                                                    .uploadedLocalFile1
                                                                    .bytes!
                                                                    .isNotEmpty
                                                                ? [
                                                                    _model
                                                                        .uploadedLocalFile1
                                                                  ]
                                                                : <FFUploadedFile>[];
                                                            selectedFiles =
                                                                selectedFilesFromUploadedFiles(
                                                              selectedUploadedFiles,
                                                            );
                                                            downloadUrls =
                                                                (await Future
                                                                        .wait(
                                                              selectedFiles.map(
                                                                (f) async =>
                                                                    await uploadData(
                                                                        f.storagePath,
                                                                        f.bytes),
                                                              ),
                                                            ))
                                                                    .where((u) =>
                                                                        u !=
                                                                        null)
                                                                    .map((u) =>
                                                                        u!)
                                                                    .toList();
                                                          } finally {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .hideCurrentSnackBar();
                                                            _model.isDataUploading3 =
                                                                false;
                                                          }
                                                          if (selectedUploadedFiles
                                                                      .length ==
                                                                  selectedFiles
                                                                      .length &&
                                                              downloadUrls
                                                                      .length ==
                                                                  selectedFiles
                                                                      .length) {
                                                            safeSetState(() {
                                                              _model.uploadedLocalFile3 =
                                                                  selectedUploadedFiles
                                                                      .first;
                                                              _model.uploadedFileUrl3 =
                                                                  downloadUrls
                                                                      .first;
                                                            });
                                                            showUploadMessage(
                                                              context,
                                                              'Success!',
                                                            );
                                                          } else {
                                                            safeSetState(() {});
                                                            showUploadMessage(
                                                              context,
                                                              'Failed to upload file',
                                                            );
                                                            return;
                                                          }
                                                        }

                                                        _model.backendAPIUploadedAudio =
                                                            await OpenAIAssistantGroup
                                                                .getAudioRecordingTextCall
                                                                .call(
                                                          file: _model
                                                              .uploadedLocalFile1,
                                                          apiKey: autobiographyGeneratingPageAutobiographiesRecord
                                                              .userOpenAIAPIKey,
                                                        );

                                                        if ((_model.backendAPIUploadedAudio
                                                                    ?.succeeded ??
                                                                true) ==
                                                            true) {
                                                          var userAudioFileRecordReference1 =
                                                              UserAudioFileRecord
                                                                  .createDoc(widget
                                                                      .refAutobiography!);
                                                          await userAudioFileRecordReference1
                                                              .set({
                                                            ...createUserAudioFileRecordData(
                                                              audioFileNumber:
                                                                  FFAppState()
                                                                      .appAudioFileNumber,
                                                              audioFileName:
                                                                  'UploadedAudioFile:${dateTimeFormat("d/M/y", getCurrentTimestamp)}${random_data.randomString(
                                                                3,
                                                                6,
                                                                true,
                                                                true,
                                                                true,
                                                              )}',
                                                              audioFileUID:
                                                                  currentUserReference,
                                                              audioFilePath: _model
                                                                  .uploadedFileUrl3,
                                                              autobiographyREF:
                                                                  widget
                                                                      .refAutobiography,
                                                              speechToTextContent:
                                                                  OpenAIAssistantGroup
                                                                      .getAudioRecordingTextCall
                                                                      .text(
                                                                        (_model.backendAPIUploadedAudio?.jsonBody ??
                                                                            ''),
                                                                      )
                                                                      .toString(),
                                                              audioIsRecorded:
                                                                  false,
                                                              audioIsUploaded:
                                                                  true,
                                                            ),
                                                            ...mapToFirestore(
                                                              {
                                                                'Audio_File_Created_At':
                                                                    FieldValue
                                                                        .serverTimestamp(),
                                                              },
                                                            ),
                                                          });
                                                          _model.backendCreateUploadedAudioFirebase =
                                                              UserAudioFileRecord
                                                                  .getDocumentFromData({
                                                            ...createUserAudioFileRecordData(
                                                              audioFileNumber:
                                                                  FFAppState()
                                                                      .appAudioFileNumber,
                                                              audioFileName:
                                                                  'UploadedAudioFile:${dateTimeFormat("d/M/y", getCurrentTimestamp)}${random_data.randomString(
                                                                3,
                                                                6,
                                                                true,
                                                                true,
                                                                true,
                                                              )}',
                                                              audioFileUID:
                                                                  currentUserReference,
                                                              audioFilePath: _model
                                                                  .uploadedFileUrl3,
                                                              autobiographyREF:
                                                                  widget
                                                                      .refAutobiography,
                                                              speechToTextContent:
                                                                  OpenAIAssistantGroup
                                                                      .getAudioRecordingTextCall
                                                                      .text(
                                                                        (_model.backendAPIUploadedAudio?.jsonBody ??
                                                                            ''),
                                                                      )
                                                                      .toString(),
                                                              audioIsRecorded:
                                                                  false,
                                                              audioIsUploaded:
                                                                  true,
                                                            ),
                                                            ...mapToFirestore(
                                                              {
                                                                'Audio_File_Created_At':
                                                                    DateTime
                                                                        .now(),
                                                              },
                                                            ),
                                                          }, userAudioFileRecordReference1);
                                                          _model.toggleAudioExistsToAddAutobio =
                                                              true;
                                                          _model.toggleAudioExistsForSTT =
                                                              false;
                                                          _model.toggleAudioRecorded =
                                                              false;
                                                          _model.toggleAudioUploaded =
                                                              false;
                                                          FFAppState()
                                                                  .appAudioFileNumber =
                                                              FFAppState()
                                                                      .appAudioFileNumber +
                                                                  1;
                                                          FFAppState()
                                                                  .toggleAudioExists =
                                                              true;
                                                          FFAppState()
                                                                  .selectUserAudioFile =
                                                              _model
                                                                  .backendCreateUploadedAudioFirebase
                                                                  ?.reference;
                                                          FFAppState()
                                                                  .selectedAudioPath =
                                                              _model
                                                                  .backendCreateUploadedAudioFirebase!
                                                                  .audioFilePath;
                                                          FFAppState()
                                                                  .selectedSpeechToText =
                                                              OpenAIAssistantGroup
                                                                  .getAudioRecordingTextCall
                                                                  .text(
                                                                    (_model.backendAPIUploadedAudio
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )
                                                                  .toString();
                                                          FFAppState()
                                                                  .selectedAudioTitle =
                                                              _model
                                                                  .backendCreateUploadedAudioFirebase!
                                                                  .audioFileName;
                                                          _model.updatePage(
                                                              () {});
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: const Text(
                                                                    'API Failed'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                        }
                                                      } else {
                                                        if ((_model.toggleAudioUploaded ==
                                                                false) &&
                                                            (_model.toggleAudioRecorded ==
                                                                true)) {
                                                          _model.backendAPIRecordedAudio =
                                                              await OpenAIAssistantGroup
                                                                  .getAudioRecordingTextCall
                                                                  .call(
                                                            file: _model
                                                                .recordedFileBytes,
                                                            apiKey: autobiographyGeneratingPageAutobiographiesRecord
                                                                .userOpenAIAPIKey,
                                                          );

                                                          if ((_model.backendAPIRecordedAudio
                                                                      ?.succeeded ??
                                                                  true) ==
                                                              true) {
                                                            var userAudioFileRecordReference2 =
                                                                UserAudioFileRecord
                                                                    .createDoc(
                                                                        widget
                                                                            .refAutobiography!);
                                                            await userAudioFileRecordReference2
                                                                .set({
                                                              ...createUserAudioFileRecordData(
                                                                audioFileNumber:
                                                                    FFAppState()
                                                                        .appAudioFileNumber,
                                                                audioFileName:
                                                                    'RecordedAudioFile:${dateTimeFormat("d/M/y", getCurrentTimestamp)}${random_data.randomString(
                                                                  3,
                                                                  6,
                                                                  true,
                                                                  true,
                                                                  true,
                                                                )}',
                                                                audioFileUID:
                                                                    currentUserReference,
                                                                audioFilePath:
                                                                    _model
                                                                        .uploadedFileUrl2,
                                                                autobiographyREF:
                                                                    widget
                                                                        .refAutobiography,
                                                                speechToTextContent:
                                                                    OpenAIAssistantGroup
                                                                        .getAudioRecordingTextCall
                                                                        .text(
                                                                          (_model.backendAPIRecordedAudio?.jsonBody ??
                                                                              ''),
                                                                        )
                                                                        .toString(),
                                                                audioIsRecorded:
                                                                    true,
                                                                audioIsUploaded:
                                                                    false,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'Audio_File_Created_At':
                                                                      FieldValue
                                                                          .serverTimestamp(),
                                                                },
                                                              ),
                                                            });
                                                            _model.backendCreateRecordedAudioFirebase =
                                                                UserAudioFileRecord
                                                                    .getDocumentFromData({
                                                              ...createUserAudioFileRecordData(
                                                                audioFileNumber:
                                                                    FFAppState()
                                                                        .appAudioFileNumber,
                                                                audioFileName:
                                                                    'RecordedAudioFile:${dateTimeFormat("d/M/y", getCurrentTimestamp)}${random_data.randomString(
                                                                  3,
                                                                  6,
                                                                  true,
                                                                  true,
                                                                  true,
                                                                )}',
                                                                audioFileUID:
                                                                    currentUserReference,
                                                                audioFilePath:
                                                                    _model
                                                                        .uploadedFileUrl2,
                                                                autobiographyREF:
                                                                    widget
                                                                        .refAutobiography,
                                                                speechToTextContent:
                                                                    OpenAIAssistantGroup
                                                                        .getAudioRecordingTextCall
                                                                        .text(
                                                                          (_model.backendAPIRecordedAudio?.jsonBody ??
                                                                              ''),
                                                                        )
                                                                        .toString(),
                                                                audioIsRecorded:
                                                                    true,
                                                                audioIsUploaded:
                                                                    false,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'Audio_File_Created_At':
                                                                      DateTime
                                                                          .now(),
                                                                },
                                                              ),
                                                            }, userAudioFileRecordReference2);
                                                            _model.toggleAudioExistsToAddAutobio =
                                                                true;
                                                            _model.toggleAudioExistsForSTT =
                                                                false;
                                                            _model.toggleAudioRecorded =
                                                                false;
                                                            _model.toggleAudioUploaded =
                                                                false;
                                                            FFAppState()
                                                                    .appAudioFileNumber =
                                                                FFAppState()
                                                                        .appAudioFileNumber +
                                                                    1;
                                                            FFAppState()
                                                                    .toggleAudioExists =
                                                                true;
                                                            FFAppState()
                                                                    .selectUserAudioFile =
                                                                _model
                                                                    .backendCreateRecordedAudioFirebase
                                                                    ?.reference;
                                                            FFAppState()
                                                                    .selectedAudioPath =
                                                                _model
                                                                    .backendCreateRecordedAudioFirebase!
                                                                    .audioFilePath;
                                                            FFAppState()
                                                                    .selectedSpeechToText =
                                                                OpenAIAssistantGroup
                                                                    .getAudioRecordingTextCall
                                                                    .text(
                                                                      (_model.backendAPIRecordedAudio
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )
                                                                    .toString();
                                                            FFAppState()
                                                                    .selectedAudioTitle =
                                                                _model
                                                                    .backendCreateRecordedAudioFirebase!
                                                                    .audioFileName;
                                                            _model.updatePage(
                                                                () {});
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: const Text(
                                                                      'API Failed'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: const Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                          }
                                                        }
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    text: 'Convert to Text',
                                                    options: FFButtonOptions(
                                                      width: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 272.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 272.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 272.0;
                                                        } else {
                                                          return 472.0;
                                                        }
                                                      }(),
                                                      height: () {
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
                                                          return 64.0;
                                                        }
                                                      }(),
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: const Color(0xFF41D871),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Inter Tight',
                                                                color: Colors
                                                                    .white,
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
                                                                    return 24.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                    ),
                                                  ),
                                                if ((_model.toggleAudioExistsForSTT ==
                                                        false) &&
                                                    (_model.toggleAudioExistsToAddAutobio ==
                                                        true))
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      FFAppState()
                                                              .toggleAudioEntry =
                                                          true;
                                                      safeSetState(() {
                                                        _model.promptTextFieldTextController
                                                                ?.text =
                                                            FFAppState()
                                                                .selectedSpeechToText;
                                                      });
                                                      _model.toggleAudioExistsToAddAutobio =
                                                          false;
                                                      _model.toggleAudioExistsForSTT =
                                                          false;
                                                      _model.toggleAudioRecorded =
                                                          false;
                                                      _model.toggleAudioUploaded =
                                                          false;
                                                      _model.toggleRecording =
                                                          false;
                                                      _model.toggleAudioRecordingComponent =
                                                          false;
                                                      safeSetState(() {});
                                                    },
                                                    text:
                                                        'Add to Autobiography!',
                                                    options: FFButtonOptions(
                                                      width: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 272.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 272.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 272.0;
                                                        } else {
                                                          return 472.0;
                                                        }
                                                      }(),
                                                      height: () {
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
                                                          return 64.0;
                                                        }
                                                      }(),
                                                      padding:
                                                          const EdgeInsets.all(8.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour2,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Inter Tight',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
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
                                                                    return 24.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25.0),
                                                    ),
                                                  ),
                                              ].divide(const SizedBox(height: 12.0)),
                                            ),
                                          ],
                                        ),
                                      ].divide(const SizedBox(height: 24.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
