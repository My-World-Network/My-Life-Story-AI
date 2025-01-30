import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'edit_chapter_content_component_model.dart';
export 'edit_chapter_content_component_model.dart';

class EditChapterContentComponentWidget extends StatefulWidget {
  const EditChapterContentComponentWidget({
    super.key,
    this.refAutobiography,
    this.refAIChapter,
    this.stringChapterContent,
    this.indexChapterContentIndex,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refAIChapter;
  final String? stringChapterContent;
  final int? indexChapterContentIndex;

  @override
  State<EditChapterContentComponentWidget> createState() =>
      _EditChapterContentComponentWidgetState();
}

class _EditChapterContentComponentWidgetState
    extends State<EditChapterContentComponentWidget> {
  late EditChapterContentComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditChapterContentComponentModel());

    _model.textController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.stringChapterContent,
      'Chapter Content',
    ));
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
    return Container(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 6.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  0.0,
                  0.0,
                  0.0,
                  valueOrDefault<double>(
                    () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 6.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 6.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 6.0;
                      } else {
                        return 24.0;
                      }
                    }(),
                    0.0,
                  )),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (_model.toggleEditChapterContent == true)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              var confirmDialogResponse =
                                  await showDialog<bool>(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: const Text('Confirm Delete'),
                                            content: Text(
                                                'Are you sure you would like to delete: ${widget.stringChapterContent} from this Chapter?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, false),
                                                child: const Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    alertDialogContext, true),
                                                child: const Text('Confirm'),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ??
                                      false;
                              if (confirmDialogResponse) {
                                await widget.refAIChapter!.update({
                                  ...mapToFirestore(
                                    {
                                      'AI_Chapter_Content_List':
                                          FieldValue.arrayRemove(
                                              [widget.stringChapterContent]),
                                    },
                                  ),
                                });
                                FFAppState().toggleCannotReorderChapterContent =
                                    false;
                                _model.updatePage(() {});
                              } else {
                                return;
                              }
                            },
                            child: Icon(
                              Icons.delete,
                              color: FlutterFlowTheme.of(context).error,
                              size: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 24.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 24.0;
                                } else if (MediaQuery.sizeOf(context).width <
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
                  if (_model.toggleEditChapterContent == true)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              FFAppState().toggleCannotReorderChapterContent =
                                  false;
                              _model.toggleEditChapterContent = false;
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.undo,
                              color: FlutterFlowTheme.of(context).iconColour,
                              size: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 24.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 24.0;
                                } else if (MediaQuery.sizeOf(context).width <
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          if (_model.toggleEditChapterContent == false)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().toggleCannotReorderChapterContent =
                                    true;
                                _model.toggleEditChapterContent = true;
                                safeSetState(() {});
                              },
                              child: Icon(
                                Icons.edit,
                                color: FlutterFlowTheme.of(context).iconColour,
                                size: () {
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
                              ),
                            ),
                          if (_model.toggleEditChapterContent == true)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                safeSetState(() {
                                  _model.textController?.text =
                                      _model.textController.text;
                                });

                                await widget.refAIChapter!.update({
                                  ...mapToFirestore(
                                    {
                                      'AI_Chapter_Content_List':
                                          FieldValue.arrayRemove(
                                              [widget.stringChapterContent]),
                                    },
                                  ),
                                });

                                await widget.refAIChapter!.update({
                                  ...mapToFirestore(
                                    {
                                      'AI_Chapter_Content_List':
                                          FieldValue.arrayUnion(
                                              [_model.textController.text]),
                                    },
                                  ),
                                });
                                safeSetState(() {
                                  _model.textController?.text =
                                      valueOrDefault<String>(
                                    widget.stringChapterContent,
                                    'Chapter Content',
                                  );
                                });
                                FFAppState().toggleCannotReorderChapterContent =
                                    false;
                                _model.toggleEditChapterContent = false;
                                safeSetState(() {});
                              },
                              child: Icon(
                                Icons.save,
                                color: FlutterFlowTheme.of(context).accent4,
                                size: () {
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
                                    return 28.0;
                                  }
                                }(),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 32.0, 0.0),
              child: Stack(
                children: [
                  if (_model.toggleEditChapterContent == false)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            valueOrDefault<String>(
                              widget.stringChapterContent,
                              'Chapter Content',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Lora',
                                  fontSize: () {
                                    if (MediaQuery.sizeOf(context).width <
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
                                      return 21.0;
                                    }
                                  }(),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  if (_model.toggleEditChapterContent == true)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 200.0,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: true,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lora',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).width <
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
                                        return 21.0;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              maxLines: null,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
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
    );
  }
}
