import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/edit_folder/edit_autobiography_chapter_folder/autobiography_edit_a_i_response_content_component/autobiography_edit_a_i_response_content_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/edit_folder/edit_autobiography_chapter_folder/edit_autobiography_chapter_header/edit_autobiography_chapter_header_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/edit_folder/edit_autobiography_chapter_folder/edit_chapter_content_component/edit_chapter_content_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'edit_autobiography_chapter_page_model.dart';
export 'edit_autobiography_chapter_page_model.dart';

class EditAutobiographyChapterPageWidget extends StatefulWidget {
  const EditAutobiographyChapterPageWidget({
    super.key,
    this.refAutobiography,
    this.refAIChapter,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refAIChapter;

  @override
  State<EditAutobiographyChapterPageWidget> createState() =>
      _EditAutobiographyChapterPageWidgetState();
}

class _EditAutobiographyChapterPageWidgetState
    extends State<EditAutobiographyChapterPageWidget>
    with TickerProviderStateMixin {
  late EditAutobiographyChapterPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasListViewTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditAutobiographyChapterPageModel());

    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'editAutobiographyChapterHeaderOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 990.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listViewOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'editChapterContentComponentOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            hz: 5,
            offset: const Offset(1.0, 0.0),
            rotation: 0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 1000.0.ms,
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

    SchedulerBinding.instance.addPostFrameCallback((_) {
      animationsMap['listViewOnPageLoadAnimation']!
          .controller
          .forward(from: 0.0);
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

        final editAutobiographyChapterPageAutobiographiesRecord =
            snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: StreamBuilder<AIChaptersRecord>(
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

                final columnAIChaptersRecord = snapshot.data!;

                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        wrapWithModel(
                          model: _model.editAutobiographyChapterHeaderModel,
                          updateCallback: () => safeSetState(() {}),
                          child: EditAutobiographyChapterHeaderWidget(
                            refAutobiography: widget.refAutobiography,
                            refAIChapter: widget.refAIChapter,
                          ),
                        ).animateOnPageLoad(animationsMap[
                            'editAutobiographyChapterHeaderOnPageLoadAnimation']!),
                        Padding(
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
                                    return 196.0;
                                  }
                                }(),
                                0.0,
                              ),
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
                                    return 196.0;
                                  }
                                }(),
                                0.0,
                              ),
                              0.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Stack(
                                      children: [
                                        if (_model.toggleEditChapterTitle ==
                                            false)
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Chapter ${columnAIChaptersRecord.aIChapterNumber.toString()}: ${columnAIChaptersRecord.aIChapterTitle}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
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
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                        _model.toggleEditChapterTitle =
                                                            true;
                                                        safeSetState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.edit,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
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
                                                            return 28.0;
                                                          }
                                                        }(),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        if (_model.toggleEditChapterTitle ==
                                            true)
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 200.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 200.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 200.0;
                                                      } else {
                                                        return 360.0;
                                                      }
                                                    }(),
                                                    decoration: BoxDecoration(
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
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                12.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                12.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                    ),
                                                    child: SizedBox(
                                                      width: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 252.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 252.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 252.0;
                                                        } else {
                                                          return 320.0;
                                                        }
                                                      }(),
                                                      child: TextFormField(
                                                        controller: _model
                                                                .textController ??=
                                                            TextEditingController(
                                                          text: valueOrDefault<
                                                              String>(
                                                            columnAIChaptersRecord
                                                                .aIChapterTitle,
                                                            'Chapter Title',
                                                          ),
                                                        ),
                                                        focusNode: _model
                                                            .textFieldFocusNode,
                                                        autofocus: false,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: true,
                                                          hintText: 'TextField',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
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
                                                                        12.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
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
                                                                        12.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lora',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        validator: _model
                                                            .textControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                        var confirmDialogResponse =
                                                            await showDialog<
                                                                    bool>(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: const Text(
                                                                          'Confirm Delete'),
                                                                      content: Text(
                                                                          'Are you sure you would like to delete: Chapter ${columnAIChaptersRecord.aIChapterNumber.toString()}: ${columnAIChaptersRecord.aIChapterTitle} from your Auotbiography?'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              alertDialogContext,
                                                                              false),
                                                                          child:
                                                                              const Text('Cancel'),
                                                                        ),
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              alertDialogContext,
                                                                              true),
                                                                          child:
                                                                              const Text('Confirm'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                ) ??
                                                                false;
                                                        if (confirmDialogResponse) {
                                                          await columnAIChaptersRecord
                                                              .reference
                                                              .delete();

                                                          context.pushNamed(
                                                            'AutobiographyChapterSelectPage',
                                                            queryParameters: {
                                                              'refAutobiography':
                                                                  serializeParam(
                                                                widget
                                                                    .refAutobiography,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .leftToRight,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        1000),
                                                              ),
                                                            },
                                                          );
                                                        } else {
                                                          return;
                                                        }
                                                      },
                                                      child: Icon(
                                                        Icons.delete,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
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
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          safeSetState(() {
                                                            _model.textController
                                                                    ?.text =
                                                                valueOrDefault<
                                                                    String>(
                                                              columnAIChaptersRecord
                                                                  .aIChapterTitle,
                                                              'Chapter Title',
                                                            );
                                                          });
                                                          _model.toggleEditChapterTitle =
                                                              false;
                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.undo,
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
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await widget
                                                              .refAIChapter!
                                                              .update(
                                                                  createAIChaptersRecordData(
                                                            aIChapterTitle: _model
                                                                .textController
                                                                .text,
                                                          ));
                                                          _model.toggleEditChapterTitle =
                                                              false;
                                                          safeSetState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.save,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent4,
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
                                      ],
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    if (FFAppState()
                                            .toggleAddAIResponseToChapter ==
                                        false)
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Builder(
                                              builder: (context) {
                                                final listAIChapterContent =
                                                    columnAIChaptersRecord
                                                        .aIChapterContentList
                                                        .toList();

                                                return ReorderableListView
                                                        .builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listAIChapterContent
                                                          .length,
                                                  itemBuilder: (context,
                                                      listAIChapterContentIndex) {
                                                    final listAIChapterContentItem =
                                                        listAIChapterContent[
                                                            listAIChapterContentIndex];
                                                    return Container(
                                                      key: ValueKey(
                                                          "ListView_3wioo3h5" '_' +
                                                              listAIChapterContentIndex
                                                                  .toString()),
                                                      child:
                                                          EditChapterContentComponentWidget(
                                                        key: Key(
                                                            'Key27j_${listAIChapterContentIndex}_of_${listAIChapterContent.length}'),
                                                        refAutobiography: widget
                                                            .refAutobiography,
                                                        refAIChapter: widget
                                                            .refAIChapter,
                                                        stringChapterContent:
                                                            listAIChapterContentItem,
                                                        indexChapterContentIndex:
                                                            listAIChapterContentIndex,
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'editChapterContentComponentOnActionTriggerAnimation']!,
                                                      ),
                                                    );
                                                  },
                                                  onReorder: (int
                                                          reorderableOldIndex,
                                                      int reorderableNewIndex) async {
                                                    if (FFAppState()
                                                            .toggleCannotReorderChapterContent ==
                                                        false) {
                                                      if (animationsMap[
                                                              'listViewOnActionTriggerAnimation'] !=
                                                          null) {
                                                        safeSetState(() =>
                                                            hasListViewTriggered =
                                                                true);
                                                        SchedulerBinding
                                                            .instance
                                                            .addPostFrameCallback((_) async =>
                                                                await animationsMap[
                                                                        'listViewOnActionTriggerAnimation']!
                                                                    .controller
                                                                    .forward(
                                                                        from:
                                                                            0.0));
                                                      }
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  500));
                                                      _model.newAIChapterContentList =
                                                          await actions
                                                              .onReorderStringList(
                                                        reorderableOldIndex,
                                                        reorderableNewIndex,
                                                        listAIChapterContent
                                                            .toList(),
                                                      );

                                                      await columnAIChaptersRecord
                                                          .reference
                                                          .update({
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Chapter_Content_List':
                                                                _model
                                                                    .newAIChapterContentList,
                                                          },
                                                        ),
                                                      });
                                                      if (animationsMap[
                                                              'listViewOnActionTriggerAnimation'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'listViewOnActionTriggerAnimation']!
                                                            .controller
                                                            .reverse();
                                                      }
                                                    } else {
                                                      if (animationsMap[
                                                              'editChapterContentComponentOnActionTriggerAnimation'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'editChapterContentComponentOnActionTriggerAnimation']!
                                                            .controller
                                                            .forward(from: 0.0);
                                                      }
                                                      if (animationsMap[
                                                              'editChapterContentComponentOnActionTriggerAnimation'] !=
                                                          null) {
                                                        animationsMap[
                                                                'editChapterContentComponentOnActionTriggerAnimation']!
                                                            .controller
                                                            .stop();
                                                      }
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Save Changes First!'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    const Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );

                                                      safeSetState(() {});
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                )
                                                    .animateOnPageLoad(
                                                        animationsMap[
                                                            'listViewOnPageLoadAnimation']!)
                                                    .animateOnActionTrigger(
                                                        animationsMap[
                                                            'listViewOnActionTriggerAnimation']!,
                                                        hasBeenTriggered:
                                                            hasListViewTriggered);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    if (FFAppState()
                                            .toggleAddAIResponseToChapter ==
                                        true)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            StreamBuilder<
                                                List<AIResponsesRecord>>(
                                              stream: queryAIResponsesRecord(
                                                parent:
                                                    widget.refAutobiography,
                                                queryBuilder: (aIResponsesRecord) =>
                                                    aIResponsesRecord.orderBy(
                                                        'AI_Response_Number'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return const Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          SpinKitFadingCircle(
                                                        color:
                                                            Color(0xC84B59BC),
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<AIResponsesRecord>
                                                    containerAIResponsesRecordList =
                                                    snapshot.data!;

                                                return Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final containerVar =
                                                          containerAIResponsesRecordList
                                                              .toList();

                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            containerVar.length,
                                                        itemBuilder: (context,
                                                            containerVarIndex) {
                                                          final containerVarItem =
                                                              containerVar[
                                                                  containerVarIndex];
                                                          return Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        12.0),
                                                            child:
                                                                AutobiographyEditAIResponseContentComponentWidget(
                                                              key: Key(
                                                                  'Keyrjy_${containerVarIndex}_of_${containerVar.length}'),
                                                              refAutobiography:
                                                                  widget
                                                                      .refAutobiography,
                                                              refAIChapters: widget
                                                                  .refAIChapter,
                                                              refAIResponses:
                                                                  containerVarItem
                                                                      .reference,
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation']!);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
