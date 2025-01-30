import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'edit_autobiography_header_model.dart';
export 'edit_autobiography_header_model.dart';

class EditAutobiographyHeaderWidget extends StatefulWidget {
  const EditAutobiographyHeaderWidget({
    super.key,
    this.refAutobiography,
    this.refAutobiographyList,
  });

  final DocumentReference? refAutobiography;
  final List<DocumentReference>? refAutobiographyList;

  @override
  State<EditAutobiographyHeaderWidget> createState() =>
      _EditAutobiographyHeaderWidgetState();
}

class _EditAutobiographyHeaderWidgetState
    extends State<EditAutobiographyHeaderWidget> {
  late EditAutobiographyHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditAutobiographyHeaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 12.0,
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
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          icon: const Icon(
                                            Icons.chevron_left,
                                            color: Color(0xFF8F7538),
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            context.goNamed(
                                              'AutobiographySelectPage',
                                              queryParameters: {
                                                'refAutobiographiesList':
                                                    serializeParam(
                                                  widget.refAutobiographyList,
                                                  ParamType.DocumentReference,
                                                  isList: true,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType
                                                          .leftToRight,
                                                  duration: Duration(
                                                      milliseconds: 1000),
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 24.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 12.0,
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
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          icon: const Icon(
                                            Icons.undo,
                                            color: Color(0xFF8F7538),
                                            size: 30.0,
                                          ),
                                          onPressed: () async {
                                            FFAppState()
                                                .deleteCreateAutobiographyTitle();
                                            FFAppState()
                                                .createAutobiographyTitle = '';

                                            FFAppState()
                                                .deleteCreateAuthorName();
                                            FFAppState().createAuthorName = '';

                                            FFAppState()
                                                .deleteCreateAuthorBackground();
                                            FFAppState()
                                                .createAuthorBackground = '';

                                            FFAppState()
                                                .deleteCreateAuthorDOB();
                                            FFAppState().createAuthorDOB = null;

                                            FFAppState().deleteCreateChapter1();
                                            FFAppState().createChapter1 = '';

                                            FFAppState()
                                                .deleteCreateAudioConversationSet();
                                            FFAppState()
                                                    .createAudioConversationSet =
                                                false;

                                            FFAppState()
                                                .deleteCreateAccompanimentName();
                                            FFAppState()
                                                .createAccompanimentName = '';

                                            FFAppState()
                                                .deleteCreateOpenAIUserAPISet();
                                            FFAppState()
                                                .createOpenAIUserAPISet = false;

                                            FFAppState()
                                                .deleteCreateUserOpenAIAPIKey();
                                            FFAppState()
                                                .createUserOpenAIAPIKey = '';

                                            FFAppState().deleteCreateAIModel();
                                            FFAppState().createAIModel = '';

                                            FFAppState()
                                                .deleteCreateAIAssistantType();
                                            FFAppState().createAIAssistantType =
                                                '';

                                            FFAppState()
                                                    .editAutobiographyProcess =
                                                false;
                                            FFAppState()
                                                .editAutobiographyTitle = false;
                                            FFAppState()
                                                    .editAutobiographyAuthor =
                                                false;
                                            FFAppState()
                                                    .editAutobiographyAudioConversation =
                                                false;
                                            FFAppState()
                                                    .editAutobiographyAccompany =
                                                false;
                                            FFAppState()
                                                    .editAutobiographyOpenAIKey =
                                                false;
                                            FFAppState()
                                                    .createAutobiographyButtonHomePage =
                                                false;
                                            FFAppState()
                                                    .editAutobiographyOpenAIKeyText =
                                                false;
                                            FFAppState()
                                                .editAutobiographyModel = false;
                                            FFAppState().editAutobiographyType =
                                                false;
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
                        Align(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                82.0,
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
                                      return 6.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                82.0,
                                0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Edit Autobiographies',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                        fontFamily: 'Inter Tight',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 22.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 22.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 22.0;
                                          } else {
                                            return 30.0;
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
                              ].divide(const SizedBox(width: 12.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
