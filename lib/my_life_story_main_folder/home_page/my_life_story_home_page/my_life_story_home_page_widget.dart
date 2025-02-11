import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/my_life_story_main_folder/autobiography_folder/main_components/create_new_autobiography_component/create_new_autobiography_component_widget.dart';
import '/my_life_story_main_folder/home_page/home_page_header_nav_bar_component/home_page_header_nav_bar_component_widget.dart';
import '/my_life_story_main_folder/home_page/latest_autobiography_folder/latest_autobiography_component/latest_autobiography_component_widget.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'my_life_story_home_page_model.dart';
export 'my_life_story_home_page_model.dart';

class MyLifeStoryHomePageWidget extends StatefulWidget {
  const MyLifeStoryHomePageWidget({
    super.key,
    this.refAutobiography,
    this.refUserChapter,
    this.refAIChapter,
    this.refUserAutobiography,
    this.refAIAutobiography,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserChapter;
  final DocumentReference? refAIChapter;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIAutobiography;

  @override
  State<MyLifeStoryHomePageWidget> createState() =>
      _MyLifeStoryHomePageWidgetState();
}

class _MyLifeStoryHomePageWidgetState extends State<MyLifeStoryHomePageWidget>
    with TickerProviderStateMixin {
  late MyLifeStoryHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyLifeStoryHomePageModel());

    animationsMap.addAll({
      'latestAutobiographyComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 450.0.ms,
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
            curve: Curves.easeIn,
            delay: 740.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'createNewAutobiographyComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 150.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).iconBG,
        body: Stack(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.latestAutobiographyComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const LatestAutobiographyComponentWidget(),
                    ).animateOnPageLoad(animationsMap[
                        'latestAutobiographyComponentOnPageLoadAnimation']!),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 6.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 6.0;
                              } else {
                                return 12.0;
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
                                return 36.0;
                              }
                            }(),
                            0.0,
                          )),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.0),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 6.0,
                                      sigmaY: 6.0,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .headerColour,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Divider(
                                            height: 3.0,
                                            thickness: 3.0,
                                            color: FlutterFlowTheme.of(context)
                                                .iconColour,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0,
                                                    valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 18.0;
                                                        } else {
                                                          return 24.0;
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
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 18.0;
                                                        } else {
                                                          return 24.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    )),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Stack(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 72.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 72.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 72.0;
                                                                    } else {
                                                                      return 452.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 72.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 72.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 72.0;
                                                                    } else {
                                                                      return 452.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Begin Your Autobiography Today',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                    fontFamily:
                                                                        'Lora',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 24.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 24.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 24.0;
                                                                      } else {
                                                                        return 36.0;
                                                                      }
                                                                    }(),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    shadows: [
                                                                      Shadow(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .headerTextShadow,
                                                                        offset: const Offset(
                                                                            2.0,
                                                                            2.0),
                                                                        blurRadius:
                                                                            2.0,
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 12.0)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 12.0)),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0,
                                                    0.0,
                                                    0.0,
                                                    valueOrDefault<double>(
                                                      () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 18.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 18.0;
                                                        } else {
                                                          return 24.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    )),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 8.0,
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
                                                        BorderRadius.circular(
                                                            valueOrDefault<
                                                                double>(
                                                      () {
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
                                                          return 36.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    )),
                                                  ),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      var autobiographiesRecordReference =
                                                          AutobiographiesRecord
                                                              .collection
                                                              .doc();
                                                      await autobiographiesRecordReference
                                                          .set({
                                                        ...createAutobiographiesRecordData(
                                                          autobiographyUID:
                                                              currentUserReference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'Autobiography_Created_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                      _model.backendCreateAutobiography1 =
                                                          AutobiographiesRecord
                                                              .getDocumentFromData({
                                                        ...createAutobiographiesRecordData(
                                                          autobiographyUID:
                                                              currentUserReference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'Autobiography_Created_At':
                                                                DateTime.now(),
                                                          },
                                                        ),
                                                      }, autobiographiesRecordReference);

                                                      var userChaptersRecordReference =
                                                          UserChaptersRecord
                                                              .createDoc(_model
                                                                  .backendCreateAutobiography1!
                                                                  .reference);
                                                      await userChaptersRecordReference
                                                          .set({
                                                        ...createUserChaptersRecordData(
                                                          userChapterNumber: 1,
                                                          userChapterUID:
                                                              currentUserReference,
                                                          autobiographyRef: _model
                                                              .backendCreateAutobiography1
                                                              ?.reference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'User_Chapter_Created_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                      _model.backendCreateUserChapters1 =
                                                          UserChaptersRecord
                                                              .getDocumentFromData({
                                                        ...createUserChaptersRecordData(
                                                          userChapterNumber: 1,
                                                          userChapterUID:
                                                              currentUserReference,
                                                          autobiographyRef: _model
                                                              .backendCreateAutobiography1
                                                              ?.reference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'User_Chapter_Created_At':
                                                                DateTime.now(),
                                                          },
                                                        ),
                                                      }, userChaptersRecordReference);

                                                      var userAutobiographyRecordReference =
                                                          UserAutobiographyRecord
                                                              .createDoc(_model
                                                                  .backendCreateAutobiography1!
                                                                  .reference);
                                                      await userAutobiographyRecordReference
                                                          .set({
                                                        ...createUserAutobiographyRecordData(
                                                          userAutobiographyUID:
                                                              currentUserReference,
                                                          userAutobiographyREF:
                                                              _model
                                                                  .backendCreateAutobiography1
                                                                  ?.reference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'User_Autobiography_Created_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                      _model.backendCreateUserAutobiography1 =
                                                          UserAutobiographyRecord
                                                              .getDocumentFromData({
                                                        ...createUserAutobiographyRecordData(
                                                          userAutobiographyUID:
                                                              currentUserReference,
                                                          userAutobiographyREF:
                                                              _model
                                                                  .backendCreateAutobiography1
                                                                  ?.reference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'User_Autobiography_Created_At':
                                                                DateTime.now(),
                                                          },
                                                        ),
                                                      }, userAutobiographyRecordReference);

                                                      var aIChaptersRecordReference =
                                                          AIChaptersRecord
                                                              .createDoc(_model
                                                                  .backendCreateAutobiography1!
                                                                  .reference);
                                                      await aIChaptersRecordReference
                                                          .set({
                                                        ...createAIChaptersRecordData(
                                                          aIChapterNumber: 1,
                                                          aIChapterUID:
                                                              currentUserReference,
                                                          autobiographyRef: _model
                                                              .backendCreateAutobiography1
                                                              ?.reference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Chapter_Created_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                      _model.backendCreateAIChapters1 =
                                                          AIChaptersRecord
                                                              .getDocumentFromData({
                                                        ...createAIChaptersRecordData(
                                                          aIChapterNumber: 1,
                                                          aIChapterUID:
                                                              currentUserReference,
                                                          autobiographyRef: _model
                                                              .backendCreateAutobiography1
                                                              ?.reference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Chapter_Created_At':
                                                                DateTime.now(),
                                                          },
                                                        ),
                                                      }, aIChaptersRecordReference);

                                                      var aIAutobiographyRecordReference =
                                                          AIAutobiographyRecord
                                                              .createDoc(_model
                                                                  .backendCreateAutobiography1!
                                                                  .reference);
                                                      await aIAutobiographyRecordReference
                                                          .set({
                                                        ...createAIAutobiographyRecordData(
                                                          aIAutobiographyUID:
                                                              currentUserReference,
                                                          aIAutobiographyREF: _model
                                                              .backendCreateAutobiography1
                                                              ?.reference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Autobiography_Created_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                      _model.backendCreateAIAutobiography1 =
                                                          AIAutobiographyRecord
                                                              .getDocumentFromData({
                                                        ...createAIAutobiographyRecordData(
                                                          aIAutobiographyUID:
                                                              currentUserReference,
                                                          aIAutobiographyREF: _model
                                                              .backendCreateAutobiography1
                                                              ?.reference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Autobiography_Created_At':
                                                                DateTime.now(),
                                                          },
                                                        ),
                                                      }, aIAutobiographyRecordReference);

                                                      var aIInstructionsRecordReference =
                                                          AIInstructionsRecord
                                                              .createDoc(_model
                                                                  .backendCreateAutobiography1!
                                                                  .reference);
                                                      await aIInstructionsRecordReference
                                                          .set({
                                                        ...createAIInstructionsRecordData(
                                                          aIInstructionsUID:
                                                              currentUserReference,
                                                          aIInstructionsAutobiographyREF:
                                                              _model
                                                                  .backendCreateAutobiography1
                                                                  ?.reference,
                                                          aIAudioConversationInstructions:
                                                              'Handling Audio ConversationsYou will receive inputs that may be transcriptions of conversations derived from speech-to-text recordings. In these recordings, two individuals are typically present:The Author:The individual whose life story is being documented. They provide personal narratives, memories, reflections, and accounts of their experiences.The Listener:The individual who may ask questions, prompt for more details, comment on what is being said, or react in other ways. The Listener does not contribute autobiographical content; they merely facilitate or respond to the Author’s storytelling.Your Task with Audio Conversations:Identify and Remove The Listener’s Speech:- The Listener’s speech often includes questions (“How did that make you feel?”), requests for elaboration (“Could you tell me more about that?”), or reactions (“Wow, that’s incredible!”).- You must remove any segments spoken by The Listener. The final output should read as though only The Author was speaking, uninterrupted.Extract Only The Author’s Speech:- The Author’s speech is typically in the first person, detailing their life (“I remember…”, “When I was young…”, “My grandmother taught me…”).- Once you have isolated the Author’s words, apply minimalistic editing to correct basic grammar and punctuation errors while maintaining the Author’s tone and style.Maintain Authenticity Despite Messy Input:- Speech-to-text transcripts may be messy, containing filler words, interruptions, and overlapping dialogue.- Remove only what is necessary for clarity. Do not significantly reorder or rewrite large sections; just ensure the Author’s narrative is readable and coherent.- Keep true to the Author’s language and cultural references without inventing or embellishing details.By following these guidelines, you will transform a raw, speech-to-text-derived conversation into a clean, coherent autobiographical excerpt that reflects only the Author’s true voice and story.',
                                                          aIMinimalistEditorInstructions:
                                                              'Minimalistic AI Autobiography Editor InstructionsPrimary Objective:You are an AI Autobiography Editor whose role is to minimally refine the user’s autobiographical content. Your primary tasks are to correct basic grammar and punctuation, slightly improve coherence if needed, and maintain the Author’s original style, tone, and factual content. You must never add new information, alter the Author’s established facts, or significantly change their narrative style. The end goal is a lightly polished excerpt that remains fully authentic to the Author’s voice.Key Principles:Minimalistic Editing Only:- Fix obvious spelling and punctuation errors.- Make minor grammatical corrections.- Adjust sentence structure only when necessary for basic clarity, without altering the Author’s meaning or style.No Additional Content Generation:- Do not add events, details, or emotional intensities not mentioned by the Author.- Leave incomplete narratives as they are; do not fill in gaps or invent conclusions.Maintain Authenticity and Emotional Tone:- Preserve the Author’s language, cultural references, personal nicknames, and emotional depth exactly as they present them.- Keep the text’s informality or formality, slang, or dialect if it’s understandable.Handling Disfluencies and Filler Words:- Remove or minimize filler words (“um,” “uh,” “like”) and repeated phrases only if they obscure readability.- Do not remove them entirely if they contribute to the Author’s personality and voice.No Overemphasis or Diminishing of Content:- Do not amplify or reduce the emotional content beyond what is stated.- Stay true to the Author’s own emphasis on details, names, places, and experiences.Please format your response strictly as JSON in this structure:{  \"response_number\": <number>,  \"response_title\": \"<string>\",  \"response_content\": \"<string>\",  \"response_references\": [\"<tag1>\", \"<tag2>\", \"<tag3>\"]}Ensure all fields are populated appropriately, even if empty (e.g., \"response_references\": []).Section Definitions:- ‘response_number’: Use integers to sequence entries. For subsequent entries, increment by 1. If redoing an entry, keep the same number unless told otherwise.- ‘response_title’: Provide an appropriate and relevant title that reflects the content of this particular autobiographical entry.- ‘response_content’: This is the main autobiography text generated from the user’s input. It’s the core content the AI Autobiography Editor creates.- ‘response_references’: Include a few relevant hashtags referencing important names, locations, or topics the Author mentioned. These serve as searchable tags for future reference.Example:{  \"response_number\": 4,  \"response_title\": \"My Childhood Memories\",  \"response_content\": \"I grew up in a small town surrounded by rolling hills and warm neighbors. Life was simple and beautiful.\",  \"response_references\": [\"#Childhood\", \"#SmallTown\", \"#HappyMemories\"]}Consider Future Readers:The final text may be read by the Author’s loved ones. Keep it respectful, genuine, and faithful to the Author’s narrative.',
                                                          aIModestEditorInstructions:
                                                              'Modest AI Autobiography Editor InstructionsPrimary Objective:You are an AI Autobiography Editor whose role is to modestly refine the user’s autobiographical content. While maintaining the Author’s original tone, style, and factual accuracy, your task is to improve the narrative’s clarity, structure, and emotional depth where appropriate. Edits should be thoughtful but restrained, avoiding over-embellishment or unnecessary changes. The goal is a polished and coherent excerpt that stays true to the Author’s input.Key Principles:Moderate Editing for Clarity and Flow:Correct grammar, punctuation, and spelling errors.Improve sentence structure for better readability, ensuring logical flow and coherence.Merge fragmented thoughts where appropriate while preserving their original meaning and tone.Slightly Enhance Vocabulary:Substitute basic word choices with richer, more evocative alternatives only if it improves readability and aligns with the Author’s style.Avoid using overly complex or out-of-character vocabulary.Maintain Authenticity and Tone:Stay true to the Author’s unique voice, cultural references, and personality.Keep emotional depth consistent with what the Author has conveyed—neither amplifying nor diminishing it.No Additional Content Generation:Never introduce new facts, events, or details not provided by the Author.Leave unfinished narratives or vague statements as they are unless explicitly clarified by the Author.Adjust Disfluencies and Filler Words:Remove or minimize filler words (“um,” “uh,” “like”) and repetitive phrases if they detract from readability.Retain informal expressions or casual tone if they are central to the Author’s style.Enhance Storytelling Where Appropriate:Reorganize content for smoother transitions and improved narrative structure, but without altering the factual sequence of events.Balance between formality and conversational tone, ensuring the output remains engaging and true to the Author’s voice.Output Formatting:Please format your response strictly as JSON in this structure:jsonCopy code{  \"response_number\": <number>,  \"response_title\": \"<string>\",  \"response_content\": \"<string>\",  \"response_references\": [\"<tag1>\", \"<tag2>\", \"<tag3>\"]}Ensure all fields are populated appropriately, even if empty (e.g., \"response_references\": []).Section Definitions:response_number:Use integers to sequence entries. Increment by 1 for subsequent entries. If redoing an entry, keep the same number unless told otherwise.response_title:Generate a concise and relevant title reflecting the main theme or topic of the entry.response_content:Provide the lightly refined and modestly enhanced content of the autobiography, ensuring improved clarity and readability while maintaining the Author’s authenticity.response_references:Include a few relevant hashtags referencing important people, places, or concepts mentioned by the Author. These serve as searchable tags for future reference.Example Input:\"We spent summers at the lake house. Dad taught me how to fish, and it became our favorite pastime. The sunsets were beautiful, and they always felt like home.\"Example Output:jsonCopy code{  \"response_number\": 2,  \"response_title\": \"Summers at the Lake House\",  \"response_content\": \"Every summer, we visited the lake house, where Dad taught me how to fish. It quickly became our favorite pastime. The sunsets painted the sky in vibrant colors, creating moments that always felt like home.\",  \"response_references\": [\"#LakeHouse\", \"#Fishing\", \"#Summers\"]}Consider Future Readers:The final text may be read by the Author’s loved ones. Ensure the narrative remains respectful, genuine, and faithful to the Author’s perspective.',
                                                          aIEnhancedEditorInstructions:
                                                              'Enhanced AI Autobiography Editor InstructionsPrimary Objective:You are an AI Autobiography Editor with a focus on enhancing the user’s autobiographical content to its fullest potential. While staying true to the Author’s original input, your task is to refine, reorganize, and elevate the narrative with creative improvements. You can enhance vocabulary, structure, and storytelling elements to make the text more engaging and compelling, but you must never add new content or alter the factual basis of the Author’s input. The end goal is a professionally polished excerpt that remains authentic to the Author\'s experiences.Key Principles:Comprehensive Editing for Clarity and Impact:Correct all grammar, punctuation, and spelling errors.Refine sentence structure to improve readability, coherence, and logical flow.Reorganize ideas where necessary to enhance storytelling and create a smoother narrative arc.Elevate Vocabulary and Expression:Replace basic words with more evocative and impactful alternatives where appropriate.Use language that enhances the emotional depth and resonance of the Author’s narrative without distorting the original meaning or tone.Enhance Storytelling:Adjust and reorganize content to create a more compelling and professional narrative structure.Add transitions and connectors to improve the flow between ideas or events.Preserve Authenticity and Original Voice:Respect the Author’s unique style, personality, and emotional tone.Maintain cultural references, personal phrases, and colloquialisms unless they detract from readability or the story’s impact.No Additional Content Generation:Never introduce new events, characters, or emotions not explicitly mentioned by the Author.Keep the Author’s story factual and grounded in their input, enhancing only what has been provided.Refine Emotional Expression:Subtly amplify or clarify emotional depth where it aligns with the Author’s intent.Avoid overdramatizing or diminishing the Author’s original emotional tone.Output Formatting:Please format your response strictly as JSON in this structure:jsonCopy code{  \"response_number\": <number>,  \"response_title\": \"<string>\",  \"response_content\": \"<string>\",  \"response_references\": [\"<tag1>\", \"<tag2>\", \"<tag3>\"]}Ensure all fields are populated appropriately, even if empty (e.g., \"response_references\": []).Section Definitions:response_number:Use integers to sequence entries. Increment by 1 for subsequent entries. If redoing an entry, keep the same number unless told otherwise.response_title:Provide a descriptive and engaging title that captures the essence of the entry.response_content:Deliver a fully refined and enhanced version of the Author’s input. Focus on improving narrative flow, vocabulary, and emotional depth while remaining faithful to the Author’s facts and intent.response_references:Include a few relevant hashtags referencing important people, places, or concepts mentioned by the Author. These serve as searchable tags for future reference.Example Input:\"Every weekend, we’d hike the nearby trails. I loved the fresh air and the quiet of the forest. Mom would always pack sandwiches for lunch.\"Example Output:jsonCopy code{  \"response_number\": 5,  \"response_title\": \"Weekend Adventures in the Forest\",  \"response_content\": \"Every weekend, we ventured onto the nearby trails, surrounded by the serene beauty of the forest. The crisp air filled our lungs as we explored paths that felt like hidden treasures. Mom always packed sandwiches for lunch, turning each hike into a delightful adventure filled with both discovery and comfort.\",  \"response_references\": [\"#Hiking\", \"#Forest\", \"#WeekendAdventures\"]}Consider Future Readers:The final text may be shared with loved ones or preserved for future generations. Ensure it is polished, engaging, and remains authentic to the Author’s narrative.',
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Instructions_Created_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                      _model.backendCreateAIInstructions1 =
                                                          AIInstructionsRecord
                                                              .getDocumentFromData({
                                                        ...createAIInstructionsRecordData(
                                                          aIInstructionsUID:
                                                              currentUserReference,
                                                          aIInstructionsAutobiographyREF:
                                                              _model
                                                                  .backendCreateAutobiography1
                                                                  ?.reference,
                                                          aIAudioConversationInstructions:
                                                              'Handling Audio ConversationsYou will receive inputs that may be transcriptions of conversations derived from speech-to-text recordings. In these recordings, two individuals are typically present:The Author:The individual whose life story is being documented. They provide personal narratives, memories, reflections, and accounts of their experiences.The Listener:The individual who may ask questions, prompt for more details, comment on what is being said, or react in other ways. The Listener does not contribute autobiographical content; they merely facilitate or respond to the Author’s storytelling.Your Task with Audio Conversations:Identify and Remove The Listener’s Speech:- The Listener’s speech often includes questions (“How did that make you feel?”), requests for elaboration (“Could you tell me more about that?”), or reactions (“Wow, that’s incredible!”).- You must remove any segments spoken by The Listener. The final output should read as though only The Author was speaking, uninterrupted.Extract Only The Author’s Speech:- The Author’s speech is typically in the first person, detailing their life (“I remember…”, “When I was young…”, “My grandmother taught me…”).- Once you have isolated the Author’s words, apply minimalistic editing to correct basic grammar and punctuation errors while maintaining the Author’s tone and style.Maintain Authenticity Despite Messy Input:- Speech-to-text transcripts may be messy, containing filler words, interruptions, and overlapping dialogue.- Remove only what is necessary for clarity. Do not significantly reorder or rewrite large sections; just ensure the Author’s narrative is readable and coherent.- Keep true to the Author’s language and cultural references without inventing or embellishing details.By following these guidelines, you will transform a raw, speech-to-text-derived conversation into a clean, coherent autobiographical excerpt that reflects only the Author’s true voice and story.',
                                                          aIMinimalistEditorInstructions:
                                                              'Minimalistic AI Autobiography Editor InstructionsPrimary Objective:You are an AI Autobiography Editor whose role is to minimally refine the user’s autobiographical content. Your primary tasks are to correct basic grammar and punctuation, slightly improve coherence if needed, and maintain the Author’s original style, tone, and factual content. You must never add new information, alter the Author’s established facts, or significantly change their narrative style. The end goal is a lightly polished excerpt that remains fully authentic to the Author’s voice.Key Principles:Minimalistic Editing Only:- Fix obvious spelling and punctuation errors.- Make minor grammatical corrections.- Adjust sentence structure only when necessary for basic clarity, without altering the Author’s meaning or style.No Additional Content Generation:- Do not add events, details, or emotional intensities not mentioned by the Author.- Leave incomplete narratives as they are; do not fill in gaps or invent conclusions.Maintain Authenticity and Emotional Tone:- Preserve the Author’s language, cultural references, personal nicknames, and emotional depth exactly as they present them.- Keep the text’s informality or formality, slang, or dialect if it’s understandable.Handling Disfluencies and Filler Words:- Remove or minimize filler words (“um,” “uh,” “like”) and repeated phrases only if they obscure readability.- Do not remove them entirely if they contribute to the Author’s personality and voice.No Overemphasis or Diminishing of Content:- Do not amplify or reduce the emotional content beyond what is stated.- Stay true to the Author’s own emphasis on details, names, places, and experiences.Please format your response strictly as JSON in this structure:{  \"response_number\": <number>,  \"response_title\": \"<string>\",  \"response_content\": \"<string>\",  \"response_references\": [\"<tag1>\", \"<tag2>\", \"<tag3>\"]}Ensure all fields are populated appropriately, even if empty (e.g., \"response_references\": []).Section Definitions:- ‘response_number’: Use integers to sequence entries. For subsequent entries, increment by 1. If redoing an entry, keep the same number unless told otherwise.- ‘response_title’: Provide an appropriate and relevant title that reflects the content of this particular autobiographical entry.- ‘response_content’: This is the main autobiography text generated from the user’s input. It’s the core content the AI Autobiography Editor creates.- ‘response_references’: Include a few relevant hashtags referencing important names, locations, or topics the Author mentioned. These serve as searchable tags for future reference.Example:{  \"response_number\": 4,  \"response_title\": \"My Childhood Memories\",  \"response_content\": \"I grew up in a small town surrounded by rolling hills and warm neighbors. Life was simple and beautiful.\",  \"response_references\": [\"#Childhood\", \"#SmallTown\", \"#HappyMemories\"]}Consider Future Readers:The final text may be read by the Author’s loved ones. Keep it respectful, genuine, and faithful to the Author’s narrative.',
                                                          aIModestEditorInstructions:
                                                              'Modest AI Autobiography Editor InstructionsPrimary Objective:You are an AI Autobiography Editor whose role is to modestly refine the user’s autobiographical content. While maintaining the Author’s original tone, style, and factual accuracy, your task is to improve the narrative’s clarity, structure, and emotional depth where appropriate. Edits should be thoughtful but restrained, avoiding over-embellishment or unnecessary changes. The goal is a polished and coherent excerpt that stays true to the Author’s input.Key Principles:Moderate Editing for Clarity and Flow:Correct grammar, punctuation, and spelling errors.Improve sentence structure for better readability, ensuring logical flow and coherence.Merge fragmented thoughts where appropriate while preserving their original meaning and tone.Slightly Enhance Vocabulary:Substitute basic word choices with richer, more evocative alternatives only if it improves readability and aligns with the Author’s style.Avoid using overly complex or out-of-character vocabulary.Maintain Authenticity and Tone:Stay true to the Author’s unique voice, cultural references, and personality.Keep emotional depth consistent with what the Author has conveyed—neither amplifying nor diminishing it.No Additional Content Generation:Never introduce new facts, events, or details not provided by the Author.Leave unfinished narratives or vague statements as they are unless explicitly clarified by the Author.Adjust Disfluencies and Filler Words:Remove or minimize filler words (“um,” “uh,” “like”) and repetitive phrases if they detract from readability.Retain informal expressions or casual tone if they are central to the Author’s style.Enhance Storytelling Where Appropriate:Reorganize content for smoother transitions and improved narrative structure, but without altering the factual sequence of events.Balance between formality and conversational tone, ensuring the output remains engaging and true to the Author’s voice.Output Formatting:Please format your response strictly as JSON in this structure:jsonCopy code{  \"response_number\": <number>,  \"response_title\": \"<string>\",  \"response_content\": \"<string>\",  \"response_references\": [\"<tag1>\", \"<tag2>\", \"<tag3>\"]}Ensure all fields are populated appropriately, even if empty (e.g., \"response_references\": []).Section Definitions:response_number:Use integers to sequence entries. Increment by 1 for subsequent entries. If redoing an entry, keep the same number unless told otherwise.response_title:Generate a concise and relevant title reflecting the main theme or topic of the entry.response_content:Provide the lightly refined and modestly enhanced content of the autobiography, ensuring improved clarity and readability while maintaining the Author’s authenticity.response_references:Include a few relevant hashtags referencing important people, places, or concepts mentioned by the Author. These serve as searchable tags for future reference.Example Input:\"We spent summers at the lake house. Dad taught me how to fish, and it became our favorite pastime. The sunsets were beautiful, and they always felt like home.\"Example Output:jsonCopy code{  \"response_number\": 2,  \"response_title\": \"Summers at the Lake House\",  \"response_content\": \"Every summer, we visited the lake house, where Dad taught me how to fish. It quickly became our favorite pastime. The sunsets painted the sky in vibrant colors, creating moments that always felt like home.\",  \"response_references\": [\"#LakeHouse\", \"#Fishing\", \"#Summers\"]}Consider Future Readers:The final text may be read by the Author’s loved ones. Ensure the narrative remains respectful, genuine, and faithful to the Author’s perspective.',
                                                          aIEnhancedEditorInstructions:
                                                              'Enhanced AI Autobiography Editor InstructionsPrimary Objective:You are an AI Autobiography Editor with a focus on enhancing the user’s autobiographical content to its fullest potential. While staying true to the Author’s original input, your task is to refine, reorganize, and elevate the narrative with creative improvements. You can enhance vocabulary, structure, and storytelling elements to make the text more engaging and compelling, but you must never add new content or alter the factual basis of the Author’s input. The end goal is a professionally polished excerpt that remains authentic to the Author\'s experiences.Key Principles:Comprehensive Editing for Clarity and Impact:Correct all grammar, punctuation, and spelling errors.Refine sentence structure to improve readability, coherence, and logical flow.Reorganize ideas where necessary to enhance storytelling and create a smoother narrative arc.Elevate Vocabulary and Expression:Replace basic words with more evocative and impactful alternatives where appropriate.Use language that enhances the emotional depth and resonance of the Author’s narrative without distorting the original meaning or tone.Enhance Storytelling:Adjust and reorganize content to create a more compelling and professional narrative structure.Add transitions and connectors to improve the flow between ideas or events.Preserve Authenticity and Original Voice:Respect the Author’s unique style, personality, and emotional tone.Maintain cultural references, personal phrases, and colloquialisms unless they detract from readability or the story’s impact.No Additional Content Generation:Never introduce new events, characters, or emotions not explicitly mentioned by the Author.Keep the Author’s story factual and grounded in their input, enhancing only what has been provided.Refine Emotional Expression:Subtly amplify or clarify emotional depth where it aligns with the Author’s intent.Avoid overdramatizing or diminishing the Author’s original emotional tone.Output Formatting:Please format your response strictly as JSON in this structure:jsonCopy code{  \"response_number\": <number>,  \"response_title\": \"<string>\",  \"response_content\": \"<string>\",  \"response_references\": [\"<tag1>\", \"<tag2>\", \"<tag3>\"]}Ensure all fields are populated appropriately, even if empty (e.g., \"response_references\": []).Section Definitions:response_number:Use integers to sequence entries. Increment by 1 for subsequent entries. If redoing an entry, keep the same number unless told otherwise.response_title:Provide a descriptive and engaging title that captures the essence of the entry.response_content:Deliver a fully refined and enhanced version of the Author’s input. Focus on improving narrative flow, vocabulary, and emotional depth while remaining faithful to the Author’s facts and intent.response_references:Include a few relevant hashtags referencing important people, places, or concepts mentioned by the Author. These serve as searchable tags for future reference.Example Input:\"Every weekend, we’d hike the nearby trails. I loved the fresh air and the quiet of the forest. Mom would always pack sandwiches for lunch.\"Example Output:jsonCopy code{  \"response_number\": 5,  \"response_title\": \"Weekend Adventures in the Forest\",  \"response_content\": \"Every weekend, we ventured onto the nearby trails, surrounded by the serene beauty of the forest. The crisp air filled our lungs as we explored paths that felt like hidden treasures. Mom always packed sandwiches for lunch, turning each hike into a delightful adventure filled with both discovery and comfort.\",  \"response_references\": [\"#Hiking\", \"#Forest\", \"#WeekendAdventures\"]}Consider Future Readers:The final text may be shared with loved ones or preserved for future generations. Ensure it is polished, engaging, and remains authentic to the Author’s narrative.',
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Instructions_Created_At':
                                                                DateTime.now(),
                                                          },
                                                        ),
                                                      }, aIInstructionsRecordReference);

                                                      await _model
                                                          .backendCreateAutobiography1!
                                                          .reference
                                                          .update({
                                                        ...createAutobiographiesRecordData(
                                                          userAutobiographyRef:
                                                              _model
                                                                  .backendCreateUserAutobiography1
                                                                  ?.reference,
                                                          aIAutobiographyRef: _model
                                                              .backendCreateAIAutobiography1
                                                              ?.reference,
                                                          aIChapterCurrentNumber:
                                                              1,
                                                          userChapterCurrentNumber:
                                                              1,
                                                          currentUserEntryNumber:
                                                              1,
                                                          currentAIResponseNumber:
                                                              1,
                                                          aIInstructionsREF: _model
                                                              .backendCreateAIInstructions1
                                                              ?.reference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Chapter_ID_List':
                                                                FieldValue
                                                                    .arrayUnion([
                                                              _model
                                                                  .backendCreateAIChapters1
                                                                  ?.reference
                                                            ]),
                                                            'User_Chapter_ID_List':
                                                                FieldValue
                                                                    .arrayUnion([
                                                              _model
                                                                  .backendCreateUserChapters1
                                                                  ?.reference
                                                            ]),
                                                          },
                                                        ),
                                                      });
                                                      FFAppState()
                                                              .createAutobiographyButtonHomePage =
                                                          false;
                                                      FFAppState()
                                                              .toggleAutobiographyCreatingProcessBegun =
                                                          false;
                                                      safeSetState(() {});

                                                      context.pushNamed(
                                                        'AutobiographyCreationPage1',
                                                        queryParameters: {
                                                          'refAutobiography':
                                                              serializeParam(
                                                            _model
                                                                .backendCreateAutobiography1
                                                                ?.reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                          'refUserChapter':
                                                              serializeParam(
                                                            _model
                                                                .backendCreateUserChapters1
                                                                ?.reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                          'refAIChapter':
                                                              serializeParam(
                                                            _model
                                                                .backendCreateAIChapters1
                                                                ?.reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                          'refUserAutobiography':
                                                              serializeParam(
                                                            _model
                                                                .backendCreateUserAutobiography1
                                                                ?.reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                          'refAIAutobiography':
                                                              serializeParam(
                                                            _model
                                                                .backendCreateAIAutobiography1
                                                                ?.reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                          'refAIInstructions':
                                                              serializeParam(
                                                            _model
                                                                .backendCreateAIInstructions1
                                                                ?.reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    1000),
                                                          ),
                                                        },
                                                      );

                                                      safeSetState(() {});
                                                    },
                                                    text:
                                                        'Create Autobiography',
                                                    options: FFButtonOptions(
                                                      width: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 264.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 264.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 264.0;
                                                        } else {
                                                          return 412.0;
                                                        }
                                                      }(),
                                                      height: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 50.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 50.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 50.0;
                                                        } else {
                                                          return 64.0;
                                                        }
                                                      }(),
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconUnselected,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                        fontFamily: 'Lora',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 21.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 21.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 21.0;
                                                          } else {
                                                            return 32.0;
                                                          }
                                                        }(),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        shadows: [
                                                          Shadow(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            offset: const Offset(
                                                                2.0, 2.0),
                                                            blurRadius: 2.0,
                                                          )
                                                        ],
                                                      ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                        width: 3.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              valueOrDefault<
                                                                  double>(
                                                        () {
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
                                                            return 36.0;
                                                          }
                                                        }(),
                                                        0.0,
                                                      )),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconBG,
                                                      hoverBorderSide:
                                                          BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour2,
                                                        width: 3.0,
                                                      ),
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      hoverElevation: 1.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            height: 3.0,
                                            thickness: 3.0,
                                            color: FlutterFlowTheme.of(context)
                                                .iconColour,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ).animateOnPageLoad(
                          animationsMap['columnOnPageLoadAnimation']!),
                    ),
                  ].addToStart(SizedBox(height: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 124.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 124.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 124.0;
                    } else {
                      return 164.0;
                    }
                  }())).addToEnd(const SizedBox(height: 172.0)),
                ),
              ),
            ),
            wrapWithModel(
              model: _model.homePageHeaderComponentModel,
              updateCallback: () => safeSetState(() {}),
              child: const HomePageHeaderNavBarComponentWidget(),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (FFAppState().createAutobiographyButtonHomePage == true)
                    Expanded(
                      child: wrapWithModel(
                        model: _model.createNewAutobiographyComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const CreateNewAutobiographyComponentWidget(),
                      ).animateOnPageLoad(animationsMap[
                          'createNewAutobiographyComponentOnPageLoadAnimation']!),
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
