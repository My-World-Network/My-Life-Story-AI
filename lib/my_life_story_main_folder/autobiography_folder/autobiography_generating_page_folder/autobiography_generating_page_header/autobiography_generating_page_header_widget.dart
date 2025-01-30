import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'autobiography_generating_page_header_model.dart';
export 'autobiography_generating_page_header_model.dart';

class AutobiographyGeneratingPageHeaderWidget extends StatefulWidget {
  const AutobiographyGeneratingPageHeaderWidget({
    super.key,
    this.refAutobiography,
  });

  final DocumentReference? refAutobiography;

  @override
  State<AutobiographyGeneratingPageHeaderWidget> createState() =>
      _AutobiographyGeneratingPageHeaderWidgetState();
}

class _AutobiographyGeneratingPageHeaderWidgetState
    extends State<AutobiographyGeneratingPageHeaderWidget> {
  late AutobiographyGeneratingPageHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AutobiographyGeneratingPageHeaderModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

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

        final containerAutobiographiesRecord = snapshot.data!;

        return Container(
          width: double.infinity,
          height: 146.0,
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
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 393.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 393.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 393.0;
                    } else {
                      return 624.0;
                    }
                  }(),
                  child: Stack(
                    children: [
                      if (_model.toggleChapterSelect == true)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                            width: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 340.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 340.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 340.0;
                              } else {
                                return 572.0;
                              }
                            }(),
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x86D9B168),
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ),
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Stack(
                                children: [
                                  if (_model.toggleAddChapter == false)
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          54.0, 0.0, 54.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 0.0),
                                              child: StreamBuilder<
                                                  List<AIChaptersRecord>>(
                                                stream: queryAIChaptersRecord(
                                                  parent:
                                                      widget.refAutobiography,
                                                  queryBuilder:
                                                      (aIChaptersRecord) =>
                                                          aIChaptersRecord
                                                              .where(
                                                                'AI_Chapter_UID',
                                                                isEqualTo:
                                                                    currentUserReference,
                                                              )
                                                              .where(
                                                                'Autobiography_Ref',
                                                                isEqualTo: widget
                                                                    .refAutobiography,
                                                              )
                                                              .orderBy(
                                                                  'AI_Chapter_Number'),
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
                                                  List<AIChaptersRecord>
                                                      dropDownAIChaptersRecordList =
                                                      snapshot.data!;

                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    controller: _model
                                                            .dropDownValueController ??=
                                                        FormFieldController<
                                                            String>(
                                                      _model.dropDownValue ??=
                                                          '',
                                                    ),
                                                    options: List<String>.from(
                                                        dropDownAIChaptersRecordList
                                                            .map((e) =>
                                                                e.reference.id)
                                                            .toList()),
                                                    optionLabels:
                                                        dropDownAIChaptersRecordList
                                                            .map((e) => e
                                                                .aIChapterTitle)
                                                            .toList(),
                                                    onChanged: (val) async {
                                                      safeSetState(() => _model
                                                          .dropDownValue = val);
                                                      FFAppState()
                                                              .appChapterData =
                                                          AIChapterDataStruct(
                                                        aIChapterRef:
                                                            FFAppState()
                                                                .appChapterData
                                                                .aIChapterRef,
                                                      );
                                                      _model.customActionGetChapterRef =
                                                          await actions
                                                              .getDocRefFromID(
                                                        FFAppState()
                                                            .appChapterData
                                                            .aIChapterTitleData,
                                                        widget
                                                            .refAutobiography!,
                                                      );
                                                      FFAppState()
                                                              .appCurrentChapter =
                                                          _model
                                                              .customActionGetChapterRef;

                                                      safeSetState(() {});
                                                    },
                                                    width: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 224.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 224.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 224.0;
                                                      } else {
                                                        return 324.0;
                                                      }
                                                    }(),
                                                    height: 40.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    hintText:
                                                        'Select Chapter...',
                                                    icon: Icon(
                                                      Icons
                                                          .keyboard_arrow_down_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 24.0,
                                                    ),
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                    elevation: 2.0,
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    borderWidth: 0.0,
                                                    borderRadius: 8.0,
                                                    margin:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    hidesUnderline: true,
                                                    isOverButton: false,
                                                    isSearchable: false,
                                                    isMultiSelect: false,
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (_model.toggleAddChapter == true)
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          54.0, 4.0, 54.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 0.0, 0.0, 0.0),
                                            child: SizedBox(
                                              width: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 224.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 224.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 224.0;
                                                } else {
                                                  return 324.0;
                                                }
                                              }(),
                                              child: TextFormField(
                                                controller:
                                                    _model.textController,
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText:
                                                      'Next Chapter Title...',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
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
                                                          .secondaryBackground,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
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
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      if (_model.toggleChapterSelect == false)
                                        Container(
                                          decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 12.0,
                                                color: Color(0x87D9B168),
                                                offset: Offset(
                                                  0.0,
                                                  0.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight:
                                                  Radius.circular(16.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(16.0),
                                            ),
                                          ),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 16.0,
                                            buttonSize: 50.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            icon: const Icon(
                                              Icons.menu,
                                              color: Color(0xFF8F7538),
                                              size: 30.0,
                                            ),
                                            onPressed: () async {
                                              _model.toggleChapterSelect = true;
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                      if (_model.toggleChapterSelect == true)
                                        Container(
                                          decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 12.0,
                                                color: Color(0x87D9B168),
                                                offset: Offset(
                                                  0.0,
                                                  0.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight:
                                                  Radius.circular(16.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(16.0),
                                            ),
                                          ),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 16.0,
                                            buttonSize: 50.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            icon: const Icon(
                                              Icons.menu_open,
                                              color: Color(0xFF8F7538),
                                              size: 30.0,
                                            ),
                                            onPressed: () async {
                                              _model.toggleChapterSelect =
                                                  false;
                                              _model.toggleAddChapter = false;
                                              safeSetState(() {});
                                            },
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            if (_model.toggleChapterSelect == false)
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: StreamBuilder<AIChaptersRecord>(
                                  stream: AIChaptersRecord.getDocument(
                                      FFAppState().appCurrentChapter!),
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

                                    final columnAIChaptersRecord =
                                        snapshot.data!;

                                    return Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                containerAutobiographiesRecord
                                                    .autobiographyTitle,
                                                'Autobiography Title',
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .override(
                                                fontFamily: 'Inter Tight',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: () {
                                                  if (MediaQuery.sizeOf(context)
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
                                                    return 28.0;
                                                  }
                                                }(),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                shadows: [
                                                  const Shadow(
                                                    color: Color(0x3914181B),
                                                    offset: Offset(02.0, 02.0),
                                                    blurRadius: 2.0,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  'Chapter ${valueOrDefault<String>(
                                                    columnAIChaptersRecord
                                                        .aIChapterNumber
                                                        .toString(),
                                                    '#',
                                                  )}: ${columnAIChaptersRecord.aIChapterTitle}',
                                                  'Chapter Title',
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                  fontFamily: 'Inter Tight',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 18.0;
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
                                                      return 24.0;
                                                    }
                                                  }(),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  shadows: [
                                                    const Shadow(
                                                      color: Color(0x3914181B),
                                                      offset:
                                                          Offset(02.0, 02.0),
                                                      blurRadius: 2.0,
                                                    )
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
                              ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 24.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      if (_model.toggleChapterSelect == false)
                                        Container(
                                          decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 12.0,
                                                color: Color(0x87D9B168),
                                                offset: Offset(
                                                  0.0,
                                                  0.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight:
                                                  Radius.circular(16.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(16.0),
                                            ),
                                          ),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 16.0,
                                            buttonSize: 50.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            icon: const Icon(
                                              Icons.settings,
                                              color: Color(0xFF8F7538),
                                              size: 30.0,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ),
                                      if (_model.toggleChapterSelect == true)
                                        Container(
                                          decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 12.0,
                                                color: Color(0x87D9B168),
                                                offset: Offset(
                                                  0.0,
                                                  0.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight:
                                                  Radius.circular(16.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(16.0),
                                            ),
                                          ),
                                          child: Visibility(
                                            visible: _model.toggleAddChapter ==
                                                false,
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 16.0,
                                              buttonSize: 50.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              icon: const Icon(
                                                Icons.add,
                                                color: Color(0xFF8F7538),
                                                size: 30.0,
                                              ),
                                              onPressed: () async {
                                                _model.toggleAddChapter = true;
                                                safeSetState(() {});
                                              },
                                            ),
                                          ),
                                        ),
                                      if (_model.toggleAddChapter == true)
                                        Container(
                                          decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 12.0,
                                                color: Color(0x87D9B168),
                                                offset: Offset(
                                                  0.0,
                                                  0.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(16.0),
                                              bottomRight:
                                                  Radius.circular(16.0),
                                              topLeft: Radius.circular(16.0),
                                              topRight: Radius.circular(16.0),
                                            ),
                                          ),
                                          child: FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 16.0,
                                            buttonSize: 50.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            icon: const Icon(
                                              Icons.done,
                                              color: Color(0xFF8F7538),
                                              size: 30.0,
                                            ),
                                            onPressed: () async {
                                              FFAppState()
                                                      .appChapterNumberSequence =
                                                  FFAppState()
                                                          .appChapterNumberSequence +
                                                      1;
                                              safeSetState(() {});

                                              var aIChaptersRecordReference =
                                                  AIChaptersRecord.createDoc(
                                                      widget
                                                          .refAutobiography!);
                                              await aIChaptersRecordReference
                                                  .set({
                                                ...createAIChaptersRecordData(
                                                  aIChapterNumber: FFAppState()
                                                      .appChapterNumberSequence,
                                                  aIChapterTitle: _model
                                                      .textController.text,
                                                  aIChapterUID:
                                                      currentUserReference,
                                                  autobiographyRef:
                                                      widget.refAutobiography,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'AI_Chapter_Created_At':
                                                        FieldValue
                                                            .serverTimestamp(),
                                                    'AI_Chapter_Updated_At':
                                                        FieldValue
                                                            .serverTimestamp(),
                                                  },
                                                ),
                                              });
                                              _model.backendCreateNewChapter =
                                                  AIChaptersRecord
                                                      .getDocumentFromData({
                                                ...createAIChaptersRecordData(
                                                  aIChapterNumber: FFAppState()
                                                      .appChapterNumberSequence,
                                                  aIChapterTitle: _model
                                                      .textController.text,
                                                  aIChapterUID:
                                                      currentUserReference,
                                                  autobiographyRef:
                                                      widget.refAutobiography,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'AI_Chapter_Created_At':
                                                        DateTime.now(),
                                                    'AI_Chapter_Updated_At':
                                                        DateTime.now(),
                                                  },
                                                ),
                                              }, aIChaptersRecordReference);

                                              await widget.refAutobiography!
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'AI_Chapter_Title_List':
                                                        FieldValue.arrayUnion([
                                                      _model.textController.text
                                                    ]),
                                                    'AI_Chapter_ID_List':
                                                        FieldValue.arrayUnion([
                                                      _model
                                                          .backendCreateNewChapter
                                                          ?.reference
                                                    ]),
                                                  },
                                                ),
                                              });
                                              FFAppState().appCurrentChapter =
                                                  _model.backendCreateNewChapter
                                                      ?.reference;
                                              safeSetState(() {});
                                              _model.toggleAddChapter = false;
                                              safeSetState(() {});

                                              safeSetState(() {});
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
