import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'autobiography_a_i_chapter_content_component_model.dart';
export 'autobiography_a_i_chapter_content_component_model.dart';

class AutobiographyAIChapterContentComponentWidget extends StatefulWidget {
  const AutobiographyAIChapterContentComponentWidget({
    super.key,
    this.refAIChapters,
    this.docAIChapterContent,
  });

  final DocumentReference? refAIChapters;
  final String? docAIChapterContent;

  @override
  State<AutobiographyAIChapterContentComponentWidget> createState() =>
      _AutobiographyAIChapterContentComponentWidgetState();
}

class _AutobiographyAIChapterContentComponentWidgetState
    extends State<AutobiographyAIChapterContentComponentWidget> {
  late AutobiographyAIChapterContentComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => AutobiographyAIChapterContentComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              widget.docAIChapterContent!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lora',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await widget.refAIChapters!.update({
                              ...mapToFirestore(
                                {
                                  'AI_Chapter_Content_List':
                                      FieldValue.arrayRemove(
                                          [widget.docAIChapterContent]),
                                },
                              ),
                            });

                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.delete,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
