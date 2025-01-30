import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'autobiography_creation_page_header2_model.dart';
export 'autobiography_creation_page_header2_model.dart';

class AutobiographyCreationPageHeader2Widget extends StatefulWidget {
  const AutobiographyCreationPageHeader2Widget({
    super.key,
    this.refAutobiography,
    this.refUserChapter,
    this.refAIChapter,
    this.refUserAutobiography,
    this.refAIAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserChapter;
  final DocumentReference? refAIChapter;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<AutobiographyCreationPageHeader2Widget> createState() =>
      _AutobiographyCreationPageHeader2WidgetState();
}

class _AutobiographyCreationPageHeader2WidgetState
    extends State<AutobiographyCreationPageHeader2Widget> {
  late AutobiographyCreationPageHeader2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AutobiographyCreationPageHeader2Model());

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

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 118.0,
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
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
                          return 424.0;
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
                          return 424.0;
                        }
                      }(),
                      0.0,
                    ),
                    18.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            children: [
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
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 16.0,
                                  buttonSize: 50.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: const Icon(
                                    Icons.chevron_left,
                                    color: Color(0xFF8F7538),
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    context.goNamed(
                                      'AutobiographyCreationPage1',
                                      queryParameters: {
                                        'refAutobiography': serializeParam(
                                          widget.refAutobiography,
                                          ParamType.DocumentReference,
                                        ),
                                        'refUserChapter': serializeParam(
                                          widget.refUserChapter,
                                          ParamType.DocumentReference,
                                        ),
                                        'refAIChapter': serializeParam(
                                          widget.refAIChapter,
                                          ParamType.DocumentReference,
                                        ),
                                        'refUserAutobiography': serializeParam(
                                          widget.refUserAutobiography,
                                          ParamType.DocumentReference,
                                        ),
                                        'refAIAutobiography': serializeParam(
                                          widget.refAIAutobiography,
                                          ParamType.DocumentReference,
                                        ),
                                        'refAIInstructions': serializeParam(
                                          widget.refAIInstructions,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.leftToRight,
                                          duration:
                                              Duration(milliseconds: 1000),
                                        ),
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            'Create',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                              fontFamily: 'Inter Tight',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 32.0,
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
                      ].divide(const SizedBox(width: 12.0)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Stack(
                            children: [
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
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 16.0,
                                  buttonSize: 50.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: const Icon(
                                    Icons.chevron_right,
                                    color: Color(0xFF8F7538),
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    await widget.refAutobiography!
                                        .update(createAutobiographiesRecordData(
                                      autobiographyCoverColour: FFAppState()
                                          .createAutobiographyCoverColour,
                                      autobiographyCoverImage: FFAppState()
                                          .createAutobiographyCoverImage,
                                    ));

                                    context.goNamed(
                                      'AutobiographyCreationPage3',
                                      queryParameters: {
                                        'refAutobiography': serializeParam(
                                          widget.refAutobiography,
                                          ParamType.DocumentReference,
                                        ),
                                        'refUserChapter': serializeParam(
                                          widget.refUserChapter,
                                          ParamType.DocumentReference,
                                        ),
                                        'refAIChapter': serializeParam(
                                          widget.refAIChapter,
                                          ParamType.DocumentReference,
                                        ),
                                        'refUserAutobiography': serializeParam(
                                          widget.refUserAutobiography,
                                          ParamType.DocumentReference,
                                        ),
                                        'refAIAutobiography': serializeParam(
                                          widget.refAIAutobiography,
                                          ParamType.DocumentReference,
                                        ),
                                        'refAIInstructions': serializeParam(
                                          widget.refAIInstructions,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                          duration:
                                              Duration(milliseconds: 1000),
                                        ),
                                      },
                                    );
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
    );
  }
}
