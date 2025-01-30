import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_chapter_select_page/autobiography_chapter_select_page_nav_bar/autobiography_chapter_select_page_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'autobiography_chapter_select_page_model.dart';
export 'autobiography_chapter_select_page_model.dart';

class AutobiographyChapterSelectPageWidget extends StatefulWidget {
  const AutobiographyChapterSelectPageWidget({
    super.key,
    required this.refAutobiography,
    this.refAutobiographyList,
  });

  final DocumentReference? refAutobiography;
  final List<DocumentReference>? refAutobiographyList;

  @override
  State<AutobiographyChapterSelectPageWidget> createState() =>
      _AutobiographyChapterSelectPageWidgetState();
}

class _AutobiographyChapterSelectPageWidgetState
    extends State<AutobiographyChapterSelectPageWidget>
    with TickerProviderStateMixin {
  late AutobiographyChapterSelectPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasDropDownTriggered1 = false;
  var hasDropDownTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyChapterSelectPageModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'dropDownOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dropDownOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 1.0,
            end: 0.0,
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
          return const Scaffold(
            backgroundColor: Color(0xFFF1F4F8),
            body: Center(
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

        final autobiographyChapterSelectPageAutobiographiesRecord =
            snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFFF1F4F8),
            body: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<AutobiographiesRecord>(
                        stream: AutobiographiesRecord.getDocument(
                            widget.refAutobiography!),
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

                          final stackAutobiographiesRecord = snapshot.data!;

                          return Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 124.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      FlutterFlowTheme.of(context).alternate,
                                      const Color(0xF7D3D0D0),
                                      const Color(0xE5FFFFFF),
                                      const Color(0x95FFFFFF),
                                      const Color(0x00D3D0D0)
                                    ],
                                    stops: const [0.0, 0.2, 0.5, 0.8, 0.95],
                                    begin: const AlignmentDirectional(0.0, -1.0),
                                    end: const AlignmentDirectional(0, 1.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 393.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 393.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 393.0;
                                          } else {
                                            return 624.0;
                                          }
                                        }(),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 24.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .iconUnselected,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius:
                                                                    12.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                offset: const Offset(
                                                                  0.0,
                                                                  0.0,
                                                                ),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      16.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          16.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      16.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      16.0),
                                                            ),
                                                          ),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 16.0,
                                                            buttonSize: 50.0,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            icon: const Icon(
                                                              Icons
                                                                  .chevron_left,
                                                              color: Color(
                                                                  0xFF8F7538),
                                                              size: 33.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              context.pushNamed(
                                                                'AutobiographySelectPage',
                                                                queryParameters:
                                                                    {
                                                                  'refAutobiographiesList':
                                                                      serializeParam(
                                                                    widget
                                                                        .refAutobiographyList,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                    isList:
                                                                        true,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                24.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            if (_model
                                                                    .toggleAddNewChapter ==
                                                                false)
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconUnselected,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          12.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      offset:
                                                                          const Offset(
                                                                        0.0,
                                                                        0.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            16.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            16.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            16.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            16.0),
                                                                  ),
                                                                ),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      16.0,
                                                                  buttonSize:
                                                                      50.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  icon: const Icon(
                                                                    Icons.add,
                                                                    color: Color(
                                                                        0xFF8F7538),
                                                                    size: 32.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    if (_model
                                                                            .sortChapters ==
                                                                        true) {
                                                                      if (animationsMap[
                                                                              'dropDownOnActionTriggerAnimation2'] !=
                                                                          null) {
                                                                        await animationsMap['dropDownOnActionTriggerAnimation2']!
                                                                            .controller
                                                                            .reverse();
                                                                      }
                                                                      await Future.delayed(const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                      if (animationsMap[
                                                                              'dropDownOnActionTriggerAnimation2'] !=
                                                                          null) {
                                                                        animationsMap['dropDownOnActionTriggerAnimation2']!
                                                                            .controller
                                                                            .stop();
                                                                      }
                                                                      _model.sortChapters =
                                                                          false;
                                                                      _model.expandChapters =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                    _model.toggleAddNewChapter =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                ),
                                                              ),
                                                            if (_model
                                                                    .toggleAddNewChapter ==
                                                                true)
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconSelected,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          12.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      offset:
                                                                          const Offset(
                                                                        0.0,
                                                                        0.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            16.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            16.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            16.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            16.0),
                                                                  ),
                                                                ),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      16.0,
                                                                  buttonSize:
                                                                      50.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  icon: const Icon(
                                                                    Icons.done,
                                                                    color: Color(
                                                                        0xFF8F7538),
                                                                    size: 32.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    var aIChaptersRecordReference =
                                                                        AIChaptersRecord.createDoc(
                                                                            widget.refAutobiography!);
                                                                    await aIChaptersRecordReference
                                                                        .set({
                                                                      ...createAIChaptersRecordData(
                                                                        aIChapterNumber:
                                                                            stackAutobiographiesRecord.aIChapterCurrentNumber +
                                                                                1,
                                                                        aIChapterTitle: _model
                                                                            .textController1
                                                                            .text,
                                                                        aIChapterUID:
                                                                            currentUserReference,
                                                                        autobiographyRef:
                                                                            widget.refAutobiography,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'AI_Chapter_Created_At':
                                                                              FieldValue.serverTimestamp(),
                                                                        },
                                                                      ),
                                                                    });
                                                                    _model.backendCreateChapter =
                                                                        AIChaptersRecord
                                                                            .getDocumentFromData({
                                                                      ...createAIChaptersRecordData(
                                                                        aIChapterNumber:
                                                                            stackAutobiographiesRecord.aIChapterCurrentNumber +
                                                                                1,
                                                                        aIChapterTitle: _model
                                                                            .textController1
                                                                            .text,
                                                                        aIChapterUID:
                                                                            currentUserReference,
                                                                        autobiographyRef:
                                                                            widget.refAutobiography,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'AI_Chapter_Created_At':
                                                                              DateTime.now(),
                                                                        },
                                                                      ),
                                                                    }, aIChaptersRecordReference);

                                                                    await widget
                                                                        .refAutobiography!
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'AI_Chapter_Current_Number':
                                                                              FieldValue.increment(1),
                                                                          'AI_Chapter_Title_List':
                                                                              FieldValue.arrayUnion([
                                                                            _model.textController1.text
                                                                          ]),
                                                                          'Autobiography_Updated_At':
                                                                              FieldValue.serverTimestamp(),
                                                                          'AI_Chapter_ID_List':
                                                                              FieldValue.arrayUnion([
                                                                            _model.backendCreateChapter?.reference
                                                                          ]),
                                                                        },
                                                                      ),
                                                                    });
                                                                    _model.toggleAddNewChapter =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 12.0)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      82.0,
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
                                                            return 6.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      ),
                                                      82.0,
                                                      0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        '${valueOrDefault<String>(
                                                          stackAutobiographiesRecord
                                                              .autobiographyTitle,
                                                          'Autobiography Title',
                                                        )} Chapters',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 22.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 22.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 22.0;
                                                            } else {
                                                              return 32.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          shadows: [
                                                            const Shadow(
                                                              color: Color(
                                                                  0x3914181B),
                                                              offset: Offset(
                                                                  02.0, 02.0),
                                                              blurRadius: 2.0,
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 12.0)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Align(
                                  alignment: const AlignmentDirectional(1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 44.0, 0.0, 0.0),
                                    child: Container(
                                      width: 76.0,
                                      height: 56.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).iconBG,
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
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(12.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(12.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(4.0, 2.0, 0.0, 2.0),
                                              child: Container(
                                                width: 48.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(
                                                  color: valueOrDefault<Color>(
                                                    FFAppState().toggleReorderChapterSelect ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .iconSelected
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .iconUnselected,
                                                    FlutterFlowTheme.of(context)
                                                        .iconUnselected,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                    topLeft:
                                                        Radius.circular(12.0),
                                                    topRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                ),
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
                                                    if (_model.sortChapters ==
                                                        true) {
                                                      if (animationsMap[
                                                              'dropDownOnActionTriggerAnimation2'] !=
                                                          null) {
                                                        await animationsMap[
                                                                'dropDownOnActionTriggerAnimation2']!
                                                            .controller
                                                            .reverse();
                                                      }
                                                      await Future.delayed(
                                                          const Duration(
                                                              milliseconds:
                                                                  500));
                                                      if (animationsMap[
                                                              'dropDownOnActionTriggerAnimation2'] !=
                                                          null) {
                                                        animationsMap[
                                                                'dropDownOnActionTriggerAnimation2']!
                                                            .controller
                                                            .stop();
                                                      }
                                                      _model.sortChapters =
                                                          false;
                                                      _model.expandChapters =
                                                          false;
                                                      safeSetState(() {});
                                                    }
                                                    FFAppState()
                                                            .toggleReorderChapterSelect =
                                                        !(FFAppState()
                                                                .toggleReorderChapterSelect ??
                                                            true);
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.read_more,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      FFAppState().toggleReorderChapterSelect ==
                                                              true
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour2
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .iconColour,
                                                    ),
                                                    size: 32.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, -1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 44.0, 0.0, 0.0),
                                    child: AnimatedContainer(
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeIn,
                                      width: () {
                                        if (_model.expandChapters == false) {
                                          return 76.0;
                                        } else if (_model.expandChapters) {
                                          return 380.0;
                                        } else {
                                          return 76.0;
                                        }
                                      }(),
                                      height: 56.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).iconBG,
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
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(12.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(12.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            if (_model.sortChapters == true)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        42.0, 0.0, 12.0, 0.0),
                                                child: FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropDownValueController1 ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropDownValue1 ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from([
                                                    'Created: Newest to Oldest',
                                                    'Created: Oldest to Newest',
                                                    'Updated: Newest to Oldest',
                                                    'Updated: Oldest to Newest',
                                                    'Chapter: First to Last',
                                                    'Chapter Last to First'
                                                  ]),
                                                  optionLabels: const [
                                                    'Created: Newest to Oldest',
                                                    'Created: Oldest to Newest',
                                                    'Updated: Newest to Oldest',
                                                    'Updated: Oldest to Newest',
                                                    'Chapter: First to Last',
                                                    'Chapter: Last to First'
                                                  ],
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                        .dropDownValue1 = val);
                                                    FFAppState()
                                                            .sortAutobiographyChapterSelectPage =
                                                        _model.dropDownValue1!;
                                                    FFAppState().update(() {});
                                                  },
                                                  width: 246.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Sort By...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'dropDownOnActionTriggerAnimation1']!,
                                                    hasBeenTriggered:
                                                        hasDropDownTriggered1),
                                              ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 2.0, 4.0, 2.0),
                                              child: AnimatedContainer(
                                                duration:
                                                    const Duration(milliseconds: 300),
                                                curve: Curves.easeIn,
                                                width: 48.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(
                                                  color: valueOrDefault<Color>(
                                                    _model.sortChapters == true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .iconSelected
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .iconUnselected,
                                                    FlutterFlowTheme.of(context)
                                                        .iconUnselected,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                    topLeft:
                                                        Radius.circular(12.0),
                                                    topRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
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
                                                          FFAppState()
                                                                  .toggleReorderChapterSelect =
                                                              false;
                                                          safeSetState(() {});
                                                          _model.toggleAddNewChapter =
                                                              false;
                                                          safeSetState(() {});
                                                          if (_model
                                                                  .sortChapters ==
                                                              true) {
                                                            if (animationsMap[
                                                                    'dropDownOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              await animationsMap[
                                                                      'dropDownOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .reverse();
                                                            }
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        500));
                                                            if (animationsMap[
                                                                    'dropDownOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'dropDownOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .stop();
                                                            }
                                                            _model.sortChapters =
                                                                false;
                                                            _model.expandChapters =
                                                                false;
                                                            safeSetState(() {});
                                                          } else if (_model
                                                                  .sortChapters ==
                                                              false) {
                                                            _model.expandChapters =
                                                                true;
                                                            safeSetState(() {});
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        300));
                                                            _model.sortChapters =
                                                                true;
                                                            safeSetState(() {});
                                                            if (animationsMap[
                                                                    'dropDownOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              safeSetState(() =>
                                                                  hasDropDownTriggered1 =
                                                                      true);
                                                              SchedulerBinding
                                                                  .instance
                                                                  .addPostFrameCallback((_) async => await animationsMap[
                                                                          'dropDownOnActionTriggerAnimation1']!
                                                                      .controller
                                                                      .forward(
                                                                          from:
                                                                              0.0));
                                                            }
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        500));
                                                            if (animationsMap[
                                                                    'dropDownOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'dropDownOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .stop();
                                                            }
                                                            _model.sortChapters =
                                                                true;
                                                            _model.expandChapters =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            return;
                                                          }
                                                        },
                                                        child: Icon(
                                                          Icons.sort,
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.sortChapters ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconColour2
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconColour,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                          ),
                                                          size: 24.0,
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
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 24.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        AnimatedContainer(
                                          duration: const Duration(milliseconds: 300),
                                          curve: Curves.easeIn,
                                          width: () {
                                            if (_model.expandChapters ==
                                                false) {
                                              return 76.0;
                                            } else if (_model.expandChapters) {
                                              return 298.0;
                                            } else {
                                              return 76.0;
                                            }
                                          }(),
                                          height: 56.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .iconBG,
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
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 0.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                if (_model.sortChapters == true)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                12.0, 0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .dropDownValueController2 ??=
                                                          FormFieldController<
                                                              String>(
                                                        _model.dropDownValue2 ??=
                                                            '',
                                                      ),
                                                      options:
                                                          List<String>.from([
                                                        'Created: Newest to Oldest',
                                                        'Created: Oldest to Newest',
                                                        'Updated: Newest to Oldest',
                                                        'Updated: Oldest to Newest',
                                                        'Chapter: First to Last',
                                                        'Chapter Last to First'
                                                      ]),
                                                      optionLabels: const [
                                                        'Created: Newest to Oldest',
                                                        'Created: Oldest to Newest',
                                                        'Updated: Newest to Oldest',
                                                        'Updated: Oldest to Newest',
                                                        'Chapter: First to Last',
                                                        'Chapter: Last to First'
                                                      ],
                                                      onChanged: (val) async {
                                                        safeSetState(() => _model
                                                                .dropDownValue2 =
                                                            val);
                                                        FFAppState()
                                                                .sortAutobiographyChapterSelectPage =
                                                            _model
                                                                .dropDownValue2!;
                                                        FFAppState()
                                                            .update(() {});
                                                      },
                                                      width: 206.0,
                                                      height: 40.0,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText: 'Sort By...',
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 2.0,
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      borderWidth: 0.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      hidesUnderline: true,
                                                      isOverButton: false,
                                                      isSearchable: false,
                                                      isMultiSelect: false,
                                                    ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'dropDownOnActionTriggerAnimation2']!,
                                                        hasBeenTriggered:
                                                            hasDropDownTriggered2),
                                                  ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 2.0, 4.0, 2.0),
                                                  child: AnimatedContainer(
                                                    duration: const Duration(
                                                        milliseconds: 300),
                                                    curve: Curves.easeIn,
                                                    width: 48.0,
                                                    height: 48.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          valueOrDefault<Color>(
                                                        _model.sortChapters ==
                                                                true
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .iconSelected
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .iconUnselected,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .iconUnselected,
                                                      ),
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
                                                    child: Stack(
                                                      children: [
                                                        Align(
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
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              FFAppState()
                                                                      .toggleReorderChapterSelect =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                              _model.toggleAddNewChapter =
                                                                  false;
                                                              safeSetState(
                                                                  () {});
                                                              if (_model
                                                                      .sortChapters ==
                                                                  true) {
                                                                if (animationsMap[
                                                                        'dropDownOnActionTriggerAnimation2'] !=
                                                                    null) {
                                                                  await animationsMap[
                                                                          'dropDownOnActionTriggerAnimation2']!
                                                                      .controller
                                                                      .reverse();
                                                                }
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                            500));
                                                                if (animationsMap[
                                                                        'dropDownOnActionTriggerAnimation2'] !=
                                                                    null) {
                                                                  animationsMap[
                                                                          'dropDownOnActionTriggerAnimation2']!
                                                                      .controller
                                                                      .stop();
                                                                }
                                                                _model.sortChapters =
                                                                    false;
                                                                _model.expandChapters =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              } else if (_model
                                                                      .sortChapters ==
                                                                  false) {
                                                                _model.expandChapters =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                            300));
                                                                _model.sortChapters =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                                if (animationsMap[
                                                                        'dropDownOnActionTriggerAnimation2'] !=
                                                                    null) {
                                                                  safeSetState(() =>
                                                                      hasDropDownTriggered2 =
                                                                          true);
                                                                  SchedulerBinding
                                                                      .instance
                                                                      .addPostFrameCallback((_) async => await animationsMap[
                                                                              'dropDownOnActionTriggerAnimation2']!
                                                                          .controller
                                                                          .forward(
                                                                              from: 0.0));
                                                                }
                                                                await Future.delayed(
                                                                    const Duration(
                                                                        milliseconds:
                                                                            500));
                                                                if (animationsMap[
                                                                        'dropDownOnActionTriggerAnimation2'] !=
                                                                    null) {
                                                                  animationsMap[
                                                                          'dropDownOnActionTriggerAnimation2']!
                                                                      .controller
                                                                      .stop();
                                                                }
                                                                _model.sortChapters =
                                                                    true;
                                                                _model.expandChapters =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              } else {
                                                                return;
                                                              }
                                                            },
                                                            child: Icon(
                                                              Icons.sort,
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                _model.sortChapters ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .iconColour2
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .iconColour,
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconColour,
                                                              ),
                                                              size: 24.0,
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
                                        ),
                                      if ((_model.toggleAddNewChapter ==
                                              true) &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Container(
                                            width: 220.0,
                                            height: 56.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconBG,
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  offset: const Offset(
                                                    0.0,
                                                    0.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(12.0),
                                                bottomRight:
                                                    Radius.circular(12.0),
                                                topLeft: Radius.circular(12.0),
                                                topRight: Radius.circular(12.0),
                                              ),
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
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 0.0),
                                                  child: SizedBox(
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 176.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 176.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 176.0;
                                                      } else {
                                                        return 272.0;
                                                      }
                                                    }(),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .textController1,
                                                      focusNode: _model
                                                          .textFieldFocusNode1,
                                                      autofocus: false,
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
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintText:
                                                            'New Chapter Title...',
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
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
                                                                      return 18.0;
                                                                    }
                                                                  }(),
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
                                                                .iconSelected,
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
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconUnselected,
                                                        hoverColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconSelected,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                      cursorColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      validator: _model
                                                          .textController1Validator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 6.0, 0.0),
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
                                                        _model.textController1
                                                            ?.clear();
                                                      });
                                                      _model.toggleAddNewChapter =
                                                          false;
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.close,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      if (responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Container(
                                          width: 76.0,
                                          height: 56.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .iconBG,
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
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 16.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 2.0, 0.0, 2.0),
                                                  child: Container(
                                                    width: 48.0,
                                                    height: 48.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          valueOrDefault<Color>(
                                                        FFAppState().toggleReorderChapterSelect ==
                                                                true
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .iconSelected
                                                            : FlutterFlowTheme
                                                                    .of(context)
                                                                .iconUnselected,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .iconUnselected,
                                                      ),
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
                                                        if (_model
                                                                .sortChapters ==
                                                            true) {
                                                          if (animationsMap[
                                                                  'dropDownOnActionTriggerAnimation2'] !=
                                                              null) {
                                                            await animationsMap[
                                                                    'dropDownOnActionTriggerAnimation2']!
                                                                .controller
                                                                .reverse();
                                                          }
                                                          await Future.delayed(
                                                              const Duration(
                                                                  milliseconds:
                                                                      500));
                                                          if (animationsMap[
                                                                  'dropDownOnActionTriggerAnimation2'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'dropDownOnActionTriggerAnimation2']!
                                                                .controller
                                                                .stop();
                                                          }
                                                          _model.sortChapters =
                                                              false;
                                                          _model.expandChapters =
                                                              false;
                                                          safeSetState(() {});
                                                        }
                                                        FFAppState()
                                                                .toggleReorderChapterSelect =
                                                            !(FFAppState()
                                                                    .toggleReorderChapterSelect ??
                                                                true);
                                                        safeSetState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.read_more,
                                                        color: valueOrDefault<
                                                            Color>(
                                                          FFAppState().toggleReorderChapterSelect ==
                                                                  true
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .iconColour2
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconColour,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconColour,
                                                        ),
                                                        size: 32.0,
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
                                ),
                              if ((_model.toggleAddNewChapter == true) &&
                                  responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                  ))
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Container(
                                          width: 350.0,
                                          height: 68.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .iconBG,
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
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
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
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: SizedBox(
                                                  width: 296.0,
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController2,
                                                    focusNode: _model
                                                        .textFieldFocusNode2,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      hintText:
                                                          'New Chapter Title...',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
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
                                                                    return 18.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconSelected,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconUnselected,
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconSelected,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    validator: _model
                                                        .textController2Validator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 6.0, 0.0),
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
                                                      _model.textController2
                                                          ?.clear();
                                                    });
                                                    _model.toggleAddNewChapter =
                                                        false;
                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.close,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .iconColour,
                                                    size: 24.0,
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
                          Container(
                            child: Stack(
                              children: [
                                if (FFAppState().toggleReorderChapterSelect ==
                                    false)
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        StreamBuilder<List<AIChaptersRecord>>(
                                          stream: queryAIChaptersRecord(
                                            parent: widget.refAutobiography,
                                            queryBuilder: (aIChaptersRecord) =>
                                                aIChaptersRecord.where(
                                              'AI_Chapter_UID',
                                              isEqualTo: currentUserReference,
                                            ),
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

                                            return Container(
                                              decoration: const BoxDecoration(),
                                              child: Builder(
                                                builder: (context) {
                                                  final listSelectAIAutobiographyChapters =
                                                      () {
                                                    if (FFAppState()
                                                            .sortAutobiographyChapterSelectPage ==
                                                        'Chapter: First to Last') {
                                                      return containerAIChaptersRecordList
                                                          .sortedList(
                                                              keyOf: (e) => e
                                                                  .aIChapterNumber,
                                                              desc: false);
                                                    } else if (FFAppState()
                                                            .sortAutobiographyChapterSelectPage ==
                                                        'Chapter: Last to First') {
                                                      return containerAIChaptersRecordList
                                                          .sortedList(
                                                              keyOf: (e) => e
                                                                  .aIChapterNumber,
                                                              desc: true);
                                                    } else if (FFAppState()
                                                            .sortAutobiographyChapterSelectPage ==
                                                        'Created: Newest to Oldest') {
                                                      return containerAIChaptersRecordList
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  dateTimeFormat(
                                                                      "d/M/y",
                                                                      e.aIChapterCreatedAt!),
                                                              desc: false);
                                                    } else if (FFAppState()
                                                            .sortAutobiographyChapterSelectPage ==
                                                        'Created: Oldest to Newest') {
                                                      return containerAIChaptersRecordList
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  dateTimeFormat(
                                                                      "d/M/y",
                                                                      e.aIChapterCreatedAt!),
                                                              desc: true);
                                                    } else if (FFAppState()
                                                            .sortAutobiographyChapterSelectPage ==
                                                        'Updated: Newest to Oldest') {
                                                      return containerAIChaptersRecordList
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  dateTimeFormat(
                                                                      "d/M/y",
                                                                      e.aIChapterUpdatedAt!),
                                                              desc: false);
                                                    } else if (FFAppState()
                                                            .sortAutobiographyChapterSelectPage ==
                                                        'Updated: Oldest to Newest') {
                                                      return containerAIChaptersRecordList
                                                          .sortedList(
                                                              keyOf: (e) =>
                                                                  dateTimeFormat(
                                                                      "d/M/y",
                                                                      e.aIChapterUpdatedAt!),
                                                              desc: true);
                                                    } else {
                                                      return containerAIChaptersRecordList
                                                          .sortedList(
                                                              keyOf: (e) => e
                                                                  .aIChapterNumber,
                                                              desc: false);
                                                    }
                                                  }()
                                                          .toList();

                                                  return ListView.builder(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      0,
                                                      12.0,
                                                    ),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listSelectAIAutobiographyChapters
                                                            .length,
                                                    itemBuilder: (context,
                                                        listSelectAIAutobiographyChaptersIndex) {
                                                      final listSelectAIAutobiographyChaptersItem =
                                                          listSelectAIAutobiographyChapters[
                                                              listSelectAIAutobiographyChaptersIndex];
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    12.0),
                                                        child: Stack(
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      6.0,
                                                                      valueOrDefault<
                                                                          double>(
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
                                                                            return 400.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      ),
                                                                      6.0),
                                                              child: Container(
                                                                height: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 72.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 72.0;
                                                                  } else if (MediaQuery.sizeOf(
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
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      offset:
                                                                          const Offset(
                                                                        0.0,
                                                                        0.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        const Radius.circular(
                                                                            0.0),
                                                                    bottomRight:
                                                                        Radius.circular(
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
                                                                          return 12.0;
                                                                        }
                                                                      }(),
                                                                      0.0,
                                                                    )),
                                                                    topLeft: const Radius
                                                                        .circular(
                                                                            0.0),
                                                                    topRight: Radius
                                                                        .circular(
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
                                                                          return 12.0;
                                                                        }
                                                                      }(),
                                                                      0.0,
                                                                    )),
                                                                  ),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 2.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          valueOrDefault<
                                                                              double>(
                                                                            () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 0.0;
                                                                              } else {
                                                                                return 462.0;
                                                                              }
                                                                            }(),
                                                                            0.0,
                                                                          ),
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Slidable(
                                                                          endActionPane:
                                                                              ActionPane(
                                                                            motion:
                                                                                const ScrollMotion(),
                                                                            extentRatio:
                                                                                0.75,
                                                                            children: [
                                                                              SlidableAction(
                                                                                label: 'Edit',
                                                                                backgroundColor: FlutterFlowTheme.of(context).editButton,
                                                                                icon: Icons.edit,
                                                                                onPressed: (_) async {
                                                                                  context.goNamed(
                                                                                    'EditAutobiographyChapterPage',
                                                                                    queryParameters: {
                                                                                      'refAutobiography': serializeParam(
                                                                                        widget.refAutobiography,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                      'refAIChapter': serializeParam(
                                                                                        listSelectAIAutobiographyChaptersItem.reference,
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
                                                                                },
                                                                              ),
                                                                              SlidableAction(
                                                                                label: 'View',
                                                                                backgroundColor: FlutterFlowTheme.of(context).viewButton,
                                                                                icon: FontAwesomeIcons.bookReader,
                                                                                onPressed: (_) {
                                                                                  print('SlidableActionWidget pressed ...');
                                                                                },
                                                                              ),
                                                                              SlidableAction(
                                                                                label: 'Continue',
                                                                                backgroundColor: FlutterFlowTheme.of(context).continueButton,
                                                                                icon: Icons.auto_awesome,
                                                                                onPressed: (_) async {
                                                                                  FFAppState().appCurrentChapter = listSelectAIAutobiographyChaptersItem.reference;
                                                                                  safeSetState(() {});

                                                                                  context.pushNamed(
                                                                                    'AutobiographyGeneratingPage',
                                                                                    queryParameters: {
                                                                                      'refAutobiography': serializeParam(
                                                                                        widget.refAutobiography,
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
                                                                                },
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          child:
                                                                              Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            child:
                                                                                ListTile(
                                                                              title: Text(
                                                                                'Chapter ${listSelectAIAutobiographyChaptersItem.aIChapterNumber.toString()}: ${listSelectAIAutobiographyChaptersItem.aIChapterTitle}',
                                                                                style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                      fontFamily: 'Inter Tight',
                                                                                      fontSize: () {
                                                                                        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                          return 20.0;
                                                                                        } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                          return 20.0;
                                                                                        } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                          return 20.0;
                                                                                        } else {
                                                                                          return 24.0;
                                                                                        }
                                                                                      }(),
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                              subtitle: Text(
                                                                                valueOrDefault<String>(
                                                                                  () {
                                                                                    if ((FFAppState().sortAutobiographyChapterSelectPage == 'Created: Newest to Oldest') || (FFAppState().sortAutobiographyChapterSelectPage == 'Created: Oldest to Newest')) {
                                                                                      return 'Created at: ${valueOrDefault<String>(
                                                                                        dateTimeFormat("d/M/y", listSelectAIAutobiographyChaptersItem.aIChapterCreatedAt),
                                                                                        'Created at: Unknown',
                                                                                      )}';
                                                                                    } else if ((FFAppState().sortAutobiographyChapterSelectPage == 'Updated: Newest to Oldest') || (FFAppState().sortAutobiographyChapterSelectPage == 'Updated: Oldest to Newest')) {
                                                                                      return valueOrDefault<String>(
                                                                                        'Updated at: ${dateTimeFormat("d/M/y", listSelectAIAutobiographyChaptersItem.aIChapterUpdatedAt)}',
                                                                                        'Updated at:',
                                                                                      );
                                                                                    } else {
                                                                                      return valueOrDefault<String>(
                                                                                        'Created at: ${valueOrDefault<String>(
                                                                                          dateTimeFormat("d/M/y", listSelectAIAutobiographyChaptersItem.aIChapterCreatedAt),
                                                                                          'Created at: Unknown',
                                                                                        )}',
                                                                                        'Created at:',
                                                                                      );
                                                                                    }
                                                                                  }(),
                                                                                  'Created at:',
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
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
                                                                                    ),
                                                                              ),
                                                                              trailing: const Icon(
                                                                                Icons.arrow_back_ios_new,
                                                                              ),
                                                                              tileColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                              dense: false,
                                                                              contentPadding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            if (responsiveVisibility(
                                                              context: context,
                                                              phone: false,
                                                              tablet: false,
                                                              tabletLandscape:
                                                                  false,
                                                            ))
                                                              Container(
                                                                width: 462.1,
                                                                height: 106.3,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  gradient:
                                                                      LinearGradient(
                                                                    colors: [
                                                                      Color(
                                                                          0xFFF1F4F8),
                                                                      Color(
                                                                          0xF3F1F4F8),
                                                                      Color(
                                                                          0xD8F1F4F8),
                                                                      Color(
                                                                          0x97F1F4F8),
                                                                      Color(
                                                                          0x00F1F4F8)
                                                                    ],
                                                                    stops: [
                                                                      0.1,
                                                                      0.2,
                                                                      0.5,
                                                                      0.8,
                                                                      0.9
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    end:
                                                                        AlignmentDirectional(
                                                                            1.0,
                                                                            0),
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                if (FFAppState().toggleReorderChapterSelect ==
                                    true)
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                        return 462.0;
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
                                                        return 396.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  ),
                                                  0.0),
                                          child: StreamBuilder<
                                              List<AIChaptersRecord>>(
                                            stream: queryAIChaptersRecord(
                                              parent: widget.refAutobiography,
                                              queryBuilder:
                                                  (aIChaptersRecord) =>
                                                      aIChaptersRecord.where(
                                                'AI_Chapter_UID',
                                                isEqualTo: currentUserReference,
                                              ),
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

                                              return Container(
                                                decoration: const BoxDecoration(),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 6.0, 0.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final listAIChapterNumberOrder =
                                                          containerAIChaptersRecordList
                                                              .sortedList(
                                                                  keyOf: (e) =>
                                                                      e.aIChapterNumber,
                                                                  desc: false)
                                                              .toList();

                                                      return ReorderableListView
                                                          .builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listAIChapterNumberOrder
                                                                .length,
                                                        itemBuilder: (context,
                                                            listAIChapterNumberOrderIndex) {
                                                          final listAIChapterNumberOrderItem =
                                                              listAIChapterNumberOrder[
                                                                  listAIChapterNumberOrderIndex];
                                                          return Container(
                                                            key: ValueKey(
                                                                "ListView_81l6r2zu" '_' +
                                                                    listAIChapterNumberOrderIndex
                                                                        .toString()),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                              child: Stack(
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            6.0,
                                                                            0.0,
                                                                            6.0),
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 72.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 72.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointLarge) {
                                                                          return 72.0;
                                                                        } else {
                                                                          return 96.0;
                                                                        }
                                                                      }(),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                4.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            offset:
                                                                                const Offset(
                                                                              0.0,
                                                                              0.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(valueOrDefault<double>(
                                                                            () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 0.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            0.0,
                                                                          )),
                                                                          bottomRight:
                                                                              Radius.circular(valueOrDefault<double>(
                                                                            () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 0.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            0.0,
                                                                          )),
                                                                          topLeft:
                                                                              Radius.circular(valueOrDefault<double>(
                                                                            () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 0.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            0.0,
                                                                          )),
                                                                          topRight:
                                                                              Radius.circular(valueOrDefault<double>(
                                                                            () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 0.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 0.0;
                                                                              } else {
                                                                                return 18.0;
                                                                              }
                                                                            }(),
                                                                            0.0,
                                                                          )),
                                                                        ),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Material(
                                                                                color: Colors.transparent,
                                                                                child: ListTile(
                                                                                  title: Text(
                                                                                    'Chapter ${listAIChapterNumberOrderItem.aIChapterNumber.toString()}: ${listAIChapterNumberOrderItem.aIChapterTitle}',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                          fontFamily: 'Inter Tight',
                                                                                          fontSize: () {
                                                                                            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                              return 20.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                              return 20.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                              return 20.0;
                                                                                            } else {
                                                                                              return 24.0;
                                                                                            }
                                                                                          }(),
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                  subtitle: Text(
                                                                                    valueOrDefault<String>(
                                                                                      () {
                                                                                        if ((FFAppState().sortAutobiographyChapterSelectPage == 'Created: Newest to Oldest') || (FFAppState().sortAutobiographyChapterSelectPage == 'Created: Oldest to Newest')) {
                                                                                          return 'Created at: ${valueOrDefault<String>(
                                                                                            dateTimeFormat("d/M/y", listAIChapterNumberOrderItem.aIChapterCreatedAt),
                                                                                            'Created at: Unknown',
                                                                                          )}';
                                                                                        } else if ((FFAppState().sortAutobiographyChapterSelectPage == 'Updated: Newest to Oldest') || (FFAppState().sortAutobiographyChapterSelectPage == 'Updated: Oldest to Newest')) {
                                                                                          return valueOrDefault<String>(
                                                                                            'Updated at: ${valueOrDefault<String>(
                                                                                              dateTimeFormat("d/M/y", listAIChapterNumberOrderItem.aIChapterUpdatedAt),
                                                                                              'Updated at:',
                                                                                            )}',
                                                                                            'Updated at:',
                                                                                          );
                                                                                        } else {
                                                                                          return valueOrDefault<String>(
                                                                                            'Created at: ${valueOrDefault<String>(
                                                                                              dateTimeFormat("d/M/y", listAIChapterNumberOrderItem.aIChapterCreatedAt),
                                                                                              'Created at: Unknown',
                                                                                            )}',
                                                                                            'Created at:',
                                                                                          );
                                                                                        }
                                                                                      }(),
                                                                                      'Created at:',
                                                                                    ),
                                                                                    textAlign: TextAlign.start,
                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
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
                                                                                        ),
                                                                                  ),
                                                                                  tileColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                  dense: false,
                                                                                  contentPadding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ).animateOnActionTrigger(
                                                                animationsMap[
                                                                    'stackOnActionTriggerAnimation']!,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        onReorder: (int
                                                                reorderableOldIndex,
                                                            int reorderableNewIndex) async {
                                                          if (animationsMap[
                                                                  'stackOnActionTriggerAnimation'] !=
                                                              null) {
                                                            await animationsMap[
                                                                    'stackOnActionTriggerAnimation']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0);
                                                          }
                                                          await Future.delayed(
                                                              const Duration(
                                                                  milliseconds:
                                                                      500));
                                                          _model.oldIndex =
                                                              reorderableOldIndex;
                                                          _model.newIndex =
                                                              reorderableNewIndex;
                                                          if (_model.newIndex! >
                                                              _model
                                                                  .oldIndex!) {
                                                            _model.newIndex =
                                                                _model.newIndex! +
                                                                    -1;
                                                          }
                                                          // Read Old Chapter Number
                                                          _model.readOldChapterNumber1 =
                                                              await AIChaptersRecord.getDocumentOnce(
                                                                  containerAIChaptersRecordList
                                                                      .elementAtOrNull(
                                                                          reorderableOldIndex)!
                                                                      .reference);
                                                          // Read New Chapter Number
                                                          _model.readNewChapterNumber1 =
                                                              await AIChaptersRecord.getDocumentOnce(
                                                                  containerAIChaptersRecordList
                                                                      .elementAtOrNull(
                                                                          _model
                                                                              .newIndex!)!
                                                                      .reference);
                                                          _model.oldChapter = _model
                                                              .readOldChapterNumber1
                                                              ?.aIChapterNumber;
                                                          _model.newChapter = _model
                                                              .readNewChapterNumber1
                                                              ?.aIChapterNumber;
                                                          // Set Old Chapter Number

                                                          await _model
                                                              .readOldChapterNumber1!
                                                              .reference
                                                              .update({
                                                            ...createAIChaptersRecordData(
                                                              aIChapterNumber:
                                                                  _model
                                                                      .newChapter,
                                                            ),
                                                            ...mapToFirestore(
                                                              {
                                                                'AI_Chapter_Updated_At':
                                                                    FieldValue
                                                                        .serverTimestamp(),
                                                              },
                                                            ),
                                                          });
                                                          // Set New Chapter Number

                                                          await _model
                                                              .readNewChapterNumber1!
                                                              .reference
                                                              .update({
                                                            ...createAIChaptersRecordData(
                                                              aIChapterNumber:
                                                                  _model
                                                                      .oldChapter,
                                                            ),
                                                            ...mapToFirestore(
                                                              {
                                                                'AI_Chapter_Updated_At':
                                                                    FieldValue
                                                                        .serverTimestamp(),
                                                              },
                                                            ),
                                                          });
                                                          if (animationsMap[
                                                                  'stackOnActionTriggerAnimation'] !=
                                                              null) {
                                                            await animationsMap[
                                                                    'stackOnActionTriggerAnimation']!
                                                                .controller
                                                                .reverse();
                                                          }
                                                          await Future.delayed(
                                                              const Duration(
                                                                  milliseconds:
                                                                      500));
                                                          if (animationsMap[
                                                                  'stackOnActionTriggerAnimation'] !=
                                                              null) {
                                                            animationsMap[
                                                                    'stackOnActionTriggerAnimation']!
                                                                .controller
                                                                .stop();
                                                          }
                                                          _model.oldIndex =
                                                              null;
                                                          _model.newIndex =
                                                              null;
                                                          _model.oldChapter =
                                                              null;
                                                          _model.newChapter =
                                                              null;
                                                          safeSetState(() {});

                                                          safeSetState(() {});
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    wrapWithModel(
                      model: _model.autobiographyChapterSelectPageNavBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const AutobiographyChapterSelectPageNavBarWidget(),
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
