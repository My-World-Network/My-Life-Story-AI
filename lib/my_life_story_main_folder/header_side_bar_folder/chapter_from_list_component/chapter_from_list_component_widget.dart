import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'chapter_from_list_component_model.dart';
export 'chapter_from_list_component_model.dart';

class ChapterFromListComponentWidget extends StatefulWidget {
  const ChapterFromListComponentWidget({
    super.key,
    bool? toggleABListOpen,
    bool? toggleABOpen,
    required this.refAutobiography,
    required this.refChapter,
  })  : toggleABListOpen = toggleABListOpen ?? false,
        toggleABOpen = toggleABOpen ?? false;

  final bool toggleABListOpen;
  final bool toggleABOpen;
  final DocumentReference? refAutobiography;
  final DocumentReference? refChapter;

  @override
  State<ChapterFromListComponentWidget> createState() =>
      _ChapterFromListComponentWidgetState();
}

class _ChapterFromListComponentWidgetState
    extends State<ChapterFromListComponentWidget> {
  late ChapterFromListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChapterFromListComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AIChaptersRecord>(
      stream: AIChaptersRecord.getDocument(widget.refChapter!),
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

        final chapterColumnAIChaptersRecord = snapshot.data!;

        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'AIChapterSelectPage',
                    queryParameters: {
                      'refAutobiography': serializeParam(
                        widget.refAutobiography,
                        ParamType.DocumentReference,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 1000),
                      ),
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.book,
                          color: FlutterFlowTheme.of(context).iconColour,
                          size: 21.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Text(
                            'Chapter ${chapterColumnAIChaptersRecord.aIChapterNumber.toString()}: ${chapterColumnAIChaptersRecord.aIChapterTitle}'
                                .maybeHandleOverflow(
                              maxChars: 20,
                              replacement: '…',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).iconColour,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        if ((widget.toggleABListOpen == true) &&
                            (widget.toggleABOpen == true) &&
                            (_model.toggleChapterOpen == false))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.toggleChapterOpen = true;
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).iconColour,
                              size: 21.0,
                            ),
                          ),
                        if ((widget.toggleABListOpen == true) &&
                            (widget.toggleABOpen == true) &&
                            (_model.toggleChapterOpen == true))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.toggleChapterOpen = false;
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: FlutterFlowTheme.of(context).iconColour,
                              size: 21.0,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            if ((widget.toggleABListOpen == true) &&
                (widget.toggleABOpen == true) &&
                (_model.toggleChapterOpen == true))
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'EditAutobiographyChapterPage',
                          queryParameters: {
                            'refAutobiography': serializeParam(
                              widget.refAutobiography,
                              ParamType.DocumentReference,
                            ),
                            'refAIChapter': serializeParam(
                              chapterColumnAIChaptersRecord.reference,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 1000),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.edit,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 21.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Text(
                              'Edit Chapter',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).iconColour,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'AutobiographyReadingPage',
                          queryParameters: {
                            'refAutobiography': serializeParam(
                              widget.refAutobiography,
                              ParamType.DocumentReference,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 1000),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.bookReader,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 18.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Text(
                              'Read Chapter',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).iconColour,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
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
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 1000),
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.auto_awesome,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 21.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Text(
                              'Continue Creating',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).iconColour,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
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
        );
      },
    );
  }
}
