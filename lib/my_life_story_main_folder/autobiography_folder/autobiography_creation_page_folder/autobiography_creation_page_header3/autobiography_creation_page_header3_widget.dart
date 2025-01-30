import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'autobiography_creation_page_header3_model.dart';
export 'autobiography_creation_page_header3_model.dart';

class AutobiographyCreationPageHeader3Widget extends StatefulWidget {
  const AutobiographyCreationPageHeader3Widget({
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
  State<AutobiographyCreationPageHeader3Widget> createState() =>
      _AutobiographyCreationPageHeader3WidgetState();
}

class _AutobiographyCreationPageHeader3WidgetState
    extends State<AutobiographyCreationPageHeader3Widget> {
  late AutobiographyCreationPageHeader3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AutobiographyCreationPageHeader3Model());

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
            StreamBuilder<AIInstructionsRecord>(
              stream:
                  AIInstructionsRecord.getDocument(widget.refAIInstructions!),
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

                final containerAIInstructionsRecord = snapshot.data!;

                return Container(
                  width: double.infinity,
                  height: 118.0,
                  decoration: const BoxDecoration(),
                  child: StreamBuilder<AIChaptersRecord>(
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
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
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 0.0;
                                    } else {
                                      return 424.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                18.0),
                            child: StreamBuilder<UserChaptersRecord>(
                              stream: UserChaptersRecord.getDocument(
                                  widget.refUserChapter!),
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

                                final rowUserChaptersRecord = snapshot.data!;

                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(16.0),
                                                    bottomRight:
                                                        Radius.circular(16.0),
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0),
                                                  ),
                                                ),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 16.0,
                                                  buttonSize: 50.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  icon: const Icon(
                                                    Icons.chevron_left,
                                                    color: Color(0xFF8F7538),
                                                    size: 30.0,
                                                  ),
                                                  onPressed: () async {
                                                    context.goNamed(
                                                      'AutobiographyCreationPage2',
                                                      queryParameters: {
                                                        'refAutobiography':
                                                            serializeParam(
                                                          widget
                                                              .refAutobiography,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                        'refUserChapter':
                                                            serializeParam(
                                                          widget
                                                              .refUserChapter,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                        'refAIChapter':
                                                            serializeParam(
                                                          widget.refAIChapter,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                        'refUserAutobiography':
                                                            serializeParam(
                                                          widget
                                                              .refUserAutobiography,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                        'refAIAutobiography':
                                                            serializeParam(
                                                          widget
                                                              .refAIAutobiography,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                        'refAIInstructions':
                                                            serializeParam(
                                                          widget
                                                              .refAIInstructions,
                                                          ParamType
                                                              .DocumentReference,
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
                                                              milliseconds:
                                                                  1000),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'Create',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                              fontFamily: 'Inter Tight',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
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
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 24.0, 0.0),
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
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(16.0),
                                                    bottomRight:
                                                        Radius.circular(16.0),
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0),
                                                  ),
                                                ),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 16.0,
                                                  buttonSize: 50.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  icon: const Icon(
                                                    Icons.done,
                                                    color: Color(0xFF8F7538),
                                                    size: 30.0,
                                                  ),
                                                  onPressed: () async {
                                                    var shouldSetState = false;
                                                    if (containerAIInstructionsRecord
                                                                .aIType !=
                                                            '') {
                                                      if (containerAIInstructionsRecord
                                                                  .aIModel !=
                                                              '') {
                                                        if (containerAIInstructionsRecord
                                                                .aIUserOwnOpenAIAPIKey ==
                                                            true) {
                                                          if (containerAIInstructionsRecord
                                                                      .aIUserOpenAIKey !=
                                                                  '') {
                                                            await widget
                                                                .refAIInstructions!
                                                                .update({
                                                              ...createAIInstructionsRecordData(
                                                                aIInstructions:
                                                                    '${() {
                                                                  if (containerAIInstructionsRecord
                                                                          .aIType ==
                                                                      'Minimalistic AI Editor') {
                                                                    return containerAIInstructionsRecord
                                                                        .aIMinimalistEditorInstructions;
                                                                  } else if (containerAIInstructionsRecord
                                                                          .aIType ==
                                                                      'Modest AI Editor') {
                                                                    return containerAIInstructionsRecord
                                                                        .aIModestEditorInstructions;
                                                                  } else if (containerAIInstructionsRecord
                                                                          .aIType ==
                                                                      'Enhanced AI Editor') {
                                                                    return containerAIInstructionsRecord
                                                                        .aIEnhancedEditorInstructions;
                                                                  } else {
                                                                    return 'No AI Editor Type Selected. Please Inform User that you haven\'t been provided any Instructions.';
                                                                  }
                                                                }()}${containerAIInstructionsRecord.audioConversation == true ? containerAIInstructionsRecord.aIAudioConversationInstructions : 'This Autobiography is not an Audio Conversation.'}Autobiography Title: ${containerAIInstructionsRecord.autobiographyTitle}Author Name: ${containerAIInstructionsRecord.authorName}Author Date of Birth: ${dateTimeFormat("d/M/y", containerAIInstructionsRecord.authorDateOfBirth)}Accompanying Person: ${containerAIInstructionsRecord.accompanyingPerson}Author Background: ${containerAIInstructionsRecord.authorBackground}',
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'AI_Instructions_Updated_At':
                                                                      FieldValue
                                                                          .serverTimestamp(),
                                                                },
                                                              ),
                                                            });
                                                            _model.createThreadUserOpenAIKey1 =
                                                                await OpenAIAssistantGroup
                                                                    .createAutobiographyThreadCall
                                                                    .call(
                                                              apiKey: containerAIInstructionsRecord
                                                                  .aIUserOpenAIKey,
                                                            );

                                                            shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .createThreadUserOpenAIKey1
                                                                    ?.succeeded ??
                                                                true)) {
                                                              _model.createAssistantUserOpenAIKey1 =
                                                                  await OpenAIAssistantGroup
                                                                      .createAutobiographyAssistantCall
                                                                      .call(
                                                                instructions:
                                                                    containerAIInstructionsRecord
                                                                        .aIInstructions,
                                                                model:
                                                                    containerAIInstructionsRecord
                                                                        .aIModel,
                                                                apiKey: containerAIInstructionsRecord
                                                                    .aIUserOpenAIKey,
                                                              );

                                                              shouldSetState =
                                                                  true;
                                                              if ((_model
                                                                      .createAssistantUserOpenAIKey1
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                await widget
                                                                    .refAIInstructions!
                                                                    .update({
                                                                  ...createAIInstructionsRecordData(
                                                                    aIThreadID:
                                                                        OpenAIAssistantGroup
                                                                            .createAutobiographyThreadCall
                                                                            .id(
                                                                      (_model.createThreadUserOpenAIKey1
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    aIAssistantID:
                                                                        OpenAIAssistantGroup
                                                                            .createAutobiographyAssistantCall
                                                                            .id(
                                                                      (_model.createAssistantUserOpenAIKey1
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'AI_Instructions_Updated_At':
                                                                          FieldValue
                                                                              .serverTimestamp(),
                                                                    },
                                                                  ),
                                                                });

                                                                await widget
                                                                    .refAutobiography!
                                                                    .update({
                                                                  ...createAutobiographiesRecordData(
                                                                    autobiographyThreadID:
                                                                        OpenAIAssistantGroup
                                                                            .createAutobiographyThreadCall
                                                                            .id(
                                                                      (_model.createThreadUserOpenAIKey1
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    autobiographyAssistantID:
                                                                        OpenAIAssistantGroup
                                                                            .createAutobiographyAssistantCall
                                                                            .id(
                                                                      (_model.createAssistantUserOpenAIKey1
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'Autobiography_Updated_At':
                                                                          FieldValue
                                                                              .serverTimestamp(),
                                                                      'AI_Chapter_Title_List':
                                                                          FieldValue
                                                                              .arrayUnion([
                                                                        'Chapter ${columnAIChaptersRecord.aIChapterNumber.toString()}: ${columnAIChaptersRecord.aIChapterTitle}'
                                                                      ]),
                                                                      'AI_Chapter_ID_List':
                                                                          FieldValue
                                                                              .arrayUnion([
                                                                        widget
                                                                            .refAIChapter
                                                                      ]),
                                                                      'AI_Chapter_Current_Number':
                                                                          FieldValue.increment(
                                                                              1),
                                                                      'User_Chapter_Title_List':
                                                                          FieldValue
                                                                              .arrayUnion([
                                                                        'Chapter ${rowUserChaptersRecord.userChapterNumber.toString()}: ${rowUserChaptersRecord.userChapterTitle}'
                                                                      ]),
                                                                      'User_Chapter_ID_List':
                                                                          FieldValue
                                                                              .arrayUnion([
                                                                        widget
                                                                            .refUserChapter
                                                                      ]),
                                                                      'User_Chapter_Current_Number':
                                                                          FieldValue.increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });

                                                                context
                                                                    .pushNamed(
                                                                  'AutobiographyGeneratingPage',
                                                                  queryParameters:
                                                                      {
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
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              1000),
                                                                    ),
                                                                  },
                                                                );

                                                                if (shouldSetState) {
                                                                  safeSetState(
                                                                      () {});
                                                                }
                                                                return;
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: const Text(
                                                                          'API Failed to Create Assistant'),
                                                                      content: Text(
                                                                          '${(_model.createAssistantUserOpenAIKey1?.statusCode ?? 200).toString()}                                                                     ${(_model.createAssistantUserOpenAIKey1?.exceptionMessage ?? '')}'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              const Text('Ok'),
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
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'API Failed to Create Thread'),
                                                                    content: Text(
                                                                        '${(_model.createThreadUserOpenAIKey1?.statusCode ?? 200).toString()}                                                                     ${(_model.createThreadUserOpenAIKey1?.exceptionMessage ?? '')}'),
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
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: const Text(
                                                                      'You have not set an OpenAI API Key.'),
                                                                  content: const Text(
                                                                      'Vist: https://platform.openai.com/docs/overview                                              For more information.'),
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
                                                        } else {
                                                          await widget
                                                              .refAIInstructions!
                                                              .update({
                                                            ...createAIInstructionsRecordData(
                                                              aIInstructions:
                                                                  '${() {
                                                                if (containerAIInstructionsRecord
                                                                        .aIType ==
                                                                    'Minimalistic AI Editor') {
                                                                  return containerAIInstructionsRecord
                                                                      .aIMinimalistEditorInstructions;
                                                                } else if (containerAIInstructionsRecord
                                                                        .aIType ==
                                                                    'Modest AI Editor') {
                                                                  return containerAIInstructionsRecord
                                                                      .aIModestEditorInstructions;
                                                                } else if (containerAIInstructionsRecord
                                                                        .aIType ==
                                                                    'Enhanced AI Editor') {
                                                                  return containerAIInstructionsRecord
                                                                      .aIEnhancedEditorInstructions;
                                                                } else {
                                                                  return 'No AI Editor Type Selected. Please Inform User that you haven\'t been provided any Instructions.';
                                                                }
                                                              }()}${containerAIInstructionsRecord.audioConversation == true ? containerAIInstructionsRecord.aIAudioConversationInstructions : 'This Autobiography is not an Audio Conversation.'}Autobiography Title: ${containerAIInstructionsRecord.autobiographyTitle}Author Name: ${containerAIInstructionsRecord.authorName}Author Date of Birth: ${dateTimeFormat("d/M/y", containerAIInstructionsRecord.authorDateOfBirth)}Accompanying Person: ${containerAIInstructionsRecord.accompanyingPerson}Author Background: ${containerAIInstructionsRecord.authorBackground}',
                                                              aIUserOpenAIKey:
                                                                  FFDevEnvironmentValues()
                                                                      .OPENAIAPI,
                                                            ),
                                                            ...mapToFirestore(
                                                              {
                                                                'AI_Instructions_Updated_At':
                                                                    FieldValue
                                                                        .serverTimestamp(),
                                                              },
                                                            ),
                                                          });
                                                          _model.createThreadUserOpenAIKey2 =
                                                              await OpenAIAssistantGroup
                                                                  .createAutobiographyThreadCall
                                                                  .call(
                                                            apiKey: containerAIInstructionsRecord
                                                                .aIUserOpenAIKey,
                                                          );

                                                          shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .createThreadUserOpenAIKey2
                                                                  ?.succeeded ??
                                                              true)) {
                                                            _model.createAssistantUserOpenAIKey2 =
                                                                await OpenAIAssistantGroup
                                                                    .createAutobiographyAssistantCall
                                                                    .call(
                                                              instructions:
                                                                  containerAIInstructionsRecord
                                                                      .aIInstructions,
                                                              model:
                                                                  containerAIInstructionsRecord
                                                                      .aIModel,
                                                              apiKey: containerAIInstructionsRecord
                                                                  .aIUserOpenAIKey,
                                                            );

                                                            shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .createAssistantUserOpenAIKey2
                                                                    ?.succeeded ??
                                                                true)) {
                                                              await widget
                                                                  .refAIInstructions!
                                                                  .update({
                                                                ...createAIInstructionsRecordData(
                                                                  aIThreadID:
                                                                      OpenAIAssistantGroup
                                                                          .createAutobiographyThreadCall
                                                                          .id(
                                                                    (_model.createThreadUserOpenAIKey2
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  aIAssistantID:
                                                                      OpenAIAssistantGroup
                                                                          .createAutobiographyAssistantCall
                                                                          .id(
                                                                    (_model.createAssistantUserOpenAIKey2
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'AI_Instructions_Updated_At':
                                                                        FieldValue
                                                                            .serverTimestamp(),
                                                                  },
                                                                ),
                                                              });

                                                              await widget
                                                                  .refAutobiography!
                                                                  .update({
                                                                ...createAutobiographiesRecordData(
                                                                  autobiographyThreadID:
                                                                      OpenAIAssistantGroup
                                                                          .createAutobiographyThreadCall
                                                                          .id(
                                                                    (_model.createThreadUserOpenAIKey2
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  autobiographyAssistantID:
                                                                      OpenAIAssistantGroup
                                                                          .createAutobiographyAssistantCall
                                                                          .id(
                                                                    (_model.createAssistantUserOpenAIKey2
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  userOpenAIAPIKey:
                                                                      FFDevEnvironmentValues()
                                                                          .OPENAIAPI,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'Autobiography_Updated_At':
                                                                        FieldValue
                                                                            .serverTimestamp(),
                                                                    'AI_Chapter_Title_List':
                                                                        FieldValue
                                                                            .arrayUnion([
                                                                      'Chapter ${columnAIChaptersRecord.aIChapterNumber.toString()}: ${columnAIChaptersRecord.aIChapterTitle}'
                                                                    ]),
                                                                    'AI_Chapter_ID_List':
                                                                        FieldValue
                                                                            .arrayUnion([
                                                                      widget
                                                                          .refAIChapter
                                                                    ]),
                                                                    'AI_Chapter_Current_Number':
                                                                        FieldValue
                                                                            .increment(1),
                                                                    'User_Chapter_Title_List':
                                                                        FieldValue
                                                                            .arrayUnion([
                                                                      'Chapter ${rowUserChaptersRecord.userChapterNumber.toString()}: ${rowUserChaptersRecord.userChapterTitle}'
                                                                    ]),
                                                                    'User_Chapter_ID_List':
                                                                        FieldValue
                                                                            .arrayUnion([
                                                                      widget
                                                                          .refUserChapter
                                                                    ]),
                                                                    'User_Chapter_Current_Number':
                                                                        FieldValue
                                                                            .increment(1),
                                                                  },
                                                                ),
                                                              });

                                                              context.pushNamed(
                                                                'AutobiographyGeneratingPage',
                                                                queryParameters:
                                                                    {
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
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            1000),
                                                                  ),
                                                                },
                                                              );

                                                              if (shouldSetState) {
                                                                safeSetState(
                                                                    () {});
                                                              }
                                                              return;
                                                            } else {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'API Failed to Create Assistant'),
                                                                    content: Text(
                                                                        '${(_model.createAssistantUserOpenAIKey2?.statusCode ?? 200).toString()}                                                                     ${(_model.createAssistantUserOpenAIKey2?.exceptionMessage ?? '')}'),
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
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: const Text(
                                                                      'API Failed to Create Thread'),
                                                                  content: Text(
                                                                      '${(_model.createThreadUserOpenAIKey2?.statusCode ?? 200).toString()}                                                                     ${(_model.createThreadUserOpenAIKey2?.exceptionMessage ?? '')}'),
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
                                                        }
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'AI Model Not Set'),
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
                                                        if (shouldSetState) {
                                                          safeSetState(() {});
                                                        }
                                                        return;
                                                      }
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'AI Editor Type Not Set'),
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
                                                      if (shouldSetState) {
                                                        safeSetState(() {});
                                                      }
                                                      return;
                                                    }

                                                    if (shouldSetState) {
                                                      safeSetState(() {});
                                                    }
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ].divide(const SizedBox(width: 12.0)),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
