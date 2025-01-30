import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'autobiography_edit_a_i_response_content_component_model.dart';
export 'autobiography_edit_a_i_response_content_component_model.dart';

class AutobiographyEditAIResponseContentComponentWidget extends StatefulWidget {
  const AutobiographyEditAIResponseContentComponentWidget({
    super.key,
    this.refAutobiography,
    this.refAIResponses,
    this.refAIChapters,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refAIResponses;
  final DocumentReference? refAIChapters;

  @override
  State<AutobiographyEditAIResponseContentComponentWidget> createState() =>
      _AutobiographyEditAIResponseContentComponentWidgetState();
}

class _AutobiographyEditAIResponseContentComponentWidgetState
    extends State<AutobiographyEditAIResponseContentComponentWidget> {
  late AutobiographyEditAIResponseContentComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => AutobiographyEditAIResponseContentComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AIResponsesRecord>(
      stream: AIResponsesRecord.getDocument(widget.refAIResponses!),
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

        final containerAIResponsesRecord = snapshot.data!;

        return Container(
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: FlutterFlowTheme.of(context).primary,
                      offset: const Offset(
                        0.0,
                        0.0,
                      ),
                    )
                  ],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24.0),
                    bottomRight: Radius.circular(24.0),
                    topLeft: Radius.circular(24.0),
                    topRight: Radius.circular(24.0),
                  ),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    '#${containerAIResponsesRecord.aIResponseNumber.toString()}: ${valueOrDefault<String>(
                                      containerAIResponsesRecord
                                          .aIResponseTitle,
                                      'AI Response Title',
                                    )}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lora',
                                          fontSize: () {
                                            if (MediaQuery.sizeOf(context)
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
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Switch.adaptive(
                                value: _model.switchValue ??=
                                    containerAIResponsesRecord
                                        .aIResponseAddChapterToggle,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.switchValue = newValue);
                                  if (newValue) {
                                    await widget.refAIResponses!
                                        .update(createAIResponsesRecordData(
                                      aIResponseAddChapterToggle: true,
                                    ));

                                    await widget.refAIChapters!.update({
                                      ...mapToFirestore(
                                        {
                                          'AI_Chapter_Content_List':
                                              FieldValue.arrayUnion([
                                            containerAIResponsesRecord
                                                .aIResponseContent
                                          ]),
                                        },
                                      ),
                                    });
                                  } else {
                                    await widget.refAIResponses!
                                        .update(createAIResponsesRecordData(
                                      aIResponseAddChapterToggle: false,
                                    ));

                                    await widget.refAIChapters!.update({
                                      ...mapToFirestore(
                                        {
                                          'AI_Chapter_Content_List':
                                              FieldValue.arrayRemove([
                                            containerAIResponsesRecord
                                                .aIResponseContent
                                          ]),
                                        },
                                      ),
                                    });
                                  }
                                },
                                activeColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                activeTrackColor:
                                    FlutterFlowTheme.of(context).switchColour,
                                inactiveTrackColor:
                                    FlutterFlowTheme.of(context).alternate,
                                inactiveThumbColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  if (_model.toggleOpenResponseContent == false)
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.toggleOpenResponseContent = true;
                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_down_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: () {
                                          if (MediaQuery.sizeOf(context).width <
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
                                            return 38.0;
                                          }
                                        }(),
                                      ),
                                    ),
                                  if (_model.toggleOpenResponseContent == true)
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.toggleOpenResponseContent =
                                            false;
                                        safeSetState(() {});
                                      },
                                      child: Icon(
                                        Icons.keyboard_arrow_up_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: () {
                                          if (MediaQuery.sizeOf(context).width <
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
                                            return 38.0;
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
                      if (_model.toggleOpenResponseContent == true)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  valueOrDefault<String>(
                                    containerAIResponsesRecord
                                        .aIResponseContent,
                                    'AI Response Content',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lora',
                                        fontSize: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 16.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 16.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 16.0;
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
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
