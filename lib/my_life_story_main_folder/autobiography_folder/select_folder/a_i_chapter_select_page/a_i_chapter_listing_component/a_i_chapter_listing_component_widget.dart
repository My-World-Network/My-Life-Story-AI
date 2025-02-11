import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'a_i_chapter_listing_component_model.dart';
export 'a_i_chapter_listing_component_model.dart';

class AIChapterListingComponentWidget extends StatefulWidget {
  const AIChapterListingComponentWidget({
    super.key,
    this.refAutobiography,
  });

  final DocumentReference? refAutobiography;

  @override
  State<AIChapterListingComponentWidget> createState() =>
      _AIChapterListingComponentWidgetState();
}

class _AIChapterListingComponentWidgetState
    extends State<AIChapterListingComponentWidget>
    with TickerProviderStateMixin {
  late AIChapterListingComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIChapterListingComponentModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'listTileOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listTileOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0.0,
                valueOrDefault<double>(
                  () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 12.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointMedium) {
                      return 12.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 12.0;
                    } else {
                      return 24.0;
                    }
                  }(),
                  0.0,
                ),
                0.0,
                12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  height: 3.0,
                  thickness: 3.0,
                  color: FlutterFlowTheme.of(context).iconColour,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).headerColour,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownValue ??= '',
                              ),
                              options: List<String>.from([
                                'Created: Newest to Oldest',
                                'Created: Oldest to Newest',
                                'Updated: Newest to Oldest',
                                'Updated: Oldest to Newest',
                                'Alphabetical: A to Z',
                                'Alphabetical: Z to A'
                              ]),
                              optionLabels: const [
                                'Created: Newest to Oldest',
                                'Created: Oldest to Newest',
                                'Updated: Newest to Oldest',
                                'Updated: Oldest to Newest',
                                'Alphabetical: A to Z',
                                'Alphabetical: Z to A'
                              ],
                              onChanged: (val) async {
                                safeSetState(() => _model.dropDownValue = val);
                                _model.stringSortChapterBy =
                                    _model.dropDownValue;
                                safeSetState(() {});
                              },
                              width: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 296.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 324.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 324.0;
                                } else {
                                  return 424.0;
                                }
                              }(),
                              height: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 52.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 52.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 52.0;
                                } else {
                                  return 64.0;
                                }
                              }(),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lora',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 18.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 18.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 18.0;
                                      } else {
                                        return 21.0;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: 'Sort Chapters By...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 32.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).iconColour,
                              borderWidth: 3.0,
                              borderRadius: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 16.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 16.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 16.0;
                                } else {
                                  return 24.0;
                                }
                              }(),
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  valueOrDefault<double>(
                                    () {
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
                                        return 24.0;
                                      }
                                    }(),
                                    0.0,
                                  ),
                                  0.0,
                                  12.0,
                                  0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
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
                              ),
                              0.0,
                              0.0,
                              0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  if (_model.toggleChapterReorder == true)
                                    Container(
                                      decoration: BoxDecoration(
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
                                          bottomLeft: Radius.circular(16.0),
                                          bottomRight: Radius.circular(16.0),
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(16.0),
                                        ),
                                      ),
                                      child: FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .iconColour,
                                        borderRadius: 16.0,
                                        borderWidth: 3.0,
                                        buttonSize: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 50.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 50.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 50.0;
                                          } else {
                                            return 58.0;
                                          }
                                        }(),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        icon: Icon(
                                          Icons.drag_handle,
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour2,
                                          size: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 30.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 30.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 30.0;
                                            } else {
                                              return 34.0;
                                            }
                                          }(),
                                        ),
                                        onPressed: () async {
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation2'] !=
                                              null) {
                                            await animationsMap[
                                                    'containerOnActionTriggerAnimation2']!
                                                .controller
                                                .reverse();
                                          }
                                          await Future.delayed(const Duration(
                                              milliseconds: 600));
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation2'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation2']!
                                                .controller
                                                .stop();
                                          }
                                          _model.toggleChapterReorder = false;
                                          safeSetState(() {});
                                          await Future.delayed(const Duration(
                                              milliseconds: 100));
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation1'] !=
                                              null) {
                                            await animationsMap[
                                                    'containerOnActionTriggerAnimation1']!
                                                .controller
                                                .reverse();
                                          }
                                          await Future.delayed(const Duration(
                                              milliseconds: 600));
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation1'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation1']!
                                                .controller
                                                .stop();
                                          }
                                        },
                                      ),
                                    ),
                                  if (_model.toggleChapterReorder == false)
                                    Container(
                                      decoration: BoxDecoration(
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
                                          bottomLeft: Radius.circular(16.0),
                                          bottomRight: Radius.circular(16.0),
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(16.0),
                                        ),
                                      ),
                                      child: FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .iconColour,
                                        borderRadius: 16.0,
                                        borderWidth: 3.0,
                                        buttonSize: () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 50.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 50.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 50.0;
                                          } else {
                                            return 58.0;
                                          }
                                        }(),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .iconSelected,
                                        icon: Icon(
                                          Icons.drag_handle,
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          size: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 30.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 30.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 30.0;
                                            } else {
                                              return 34.0;
                                            }
                                          }(),
                                        ),
                                        onPressed: () async {
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation1'] !=
                                              null) {
                                            await animationsMap[
                                                    'containerOnActionTriggerAnimation1']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          await Future.delayed(const Duration(
                                              milliseconds: 600));
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation1'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation1']!
                                                .controller
                                                .stop();
                                          }
                                          _model.toggleChapterReorder = true;
                                          safeSetState(() {});
                                          await Future.delayed(const Duration(
                                              milliseconds: 100));
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation2'] !=
                                              null) {
                                            await animationsMap[
                                                    'containerOnActionTriggerAnimation2']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          await Future.delayed(const Duration(
                                              milliseconds: 600));
                                          if (animationsMap[
                                                  'containerOnActionTriggerAnimation2'] !=
                                              null) {
                                            animationsMap[
                                                    'containerOnActionTriggerAnimation2']!
                                                .controller
                                                .stop();
                                          }
                                        },
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
                ),
                Divider(
                  height: 3.0,
                  thickness: 3.0,
                  color: FlutterFlowTheme.of(context).iconColour,
                ),
              ].addToStart(const SizedBox(height: 1.0)),
            ),
          ),
          Stack(
            children: [
              if (_model.toggleChapterReorder == false)
                StreamBuilder<List<AIChaptersRecord>>(
                  stream: queryAIChaptersRecord(
                    parent: widget.refAutobiography,
                    queryBuilder: (aIChaptersRecord) => aIChaptersRecord
                        .where(
                          'AI_Chapter_UID',
                          isEqualTo: currentUserReference,
                        )
                        .where(
                          'Autobiography_Ref',
                          isEqualTo: widget.refAutobiography,
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
                        chapterListingContainerAIChaptersRecordList =
                        snapshot.data!;

                    return Container(
                      decoration: const BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final listAIChapterSelect = () {
                            if (_model.stringSortChapterBy ==
                                'Created: Newest to Oldest') {
                              return chapterListingContainerAIChaptersRecordList
                                  .sortedList(
                                      keyOf: (e) => dateTimeFormat(
                                          "d/M/y", e.aIChapterCreatedAt!),
                                      desc: false);
                            } else if (_model.stringSortChapterBy ==
                                'Created: Oldest to Newest') {
                              return chapterListingContainerAIChaptersRecordList
                                  .sortedList(
                                      keyOf: (e) => dateTimeFormat(
                                          "d/M/y", e.aIChapterCreatedAt!),
                                      desc: true);
                            } else if (_model.stringSortChapterBy ==
                                'Updated: Newest to Oldest') {
                              return chapterListingContainerAIChaptersRecordList
                                  .sortedList(
                                      keyOf: (e) => dateTimeFormat(
                                          "d/M/y", e.aIChapterUpdatedAt!),
                                      desc: false);
                            } else if (_model.stringSortChapterBy ==
                                'Updated: Oldest to Newest') {
                              return chapterListingContainerAIChaptersRecordList
                                  .sortedList(
                                      keyOf: (e) => dateTimeFormat(
                                          "d/M/y", e.aIChapterUpdatedAt!),
                                      desc: true);
                            } else if (_model.stringSortChapterBy ==
                                'Chapter Number: Ascending') {
                              return chapterListingContainerAIChaptersRecordList
                                  .sortedList(
                                      keyOf: (e) =>
                                          e.aIChapterNumber.toString(),
                                      desc: false);
                            } else if (_model.stringSortChapterBy ==
                                'Chapter Number: Descending') {
                              return chapterListingContainerAIChaptersRecordList
                                  .sortedList(
                                      keyOf: (e) =>
                                          e.aIChapterNumber.toString(),
                                      desc: true);
                            } else {
                              return chapterListingContainerAIChaptersRecordList
                                  .sortedList(
                                      keyOf: (e) =>
                                          e.aIChapterNumber.toString(),
                                      desc: false);
                            }
                          }()
                              .toList();

                          return ListView.builder(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              12.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listAIChapterSelect.length,
                            itemBuilder: (context, listAIChapterSelectIndex) {
                              final listAIChapterSelectItem =
                                  listAIChapterSelect[listAIChapterSelectIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(24.0),
                                      topRight: Radius.circular(24.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 0.0,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        alignment:
                                            const AlignmentDirectional(0.0, -0.175),
                                        children: [
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
                                                          return 6.0;
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
                                                          return 6.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    )),
                                            child: AnimatedContainer(
                                              duration:
                                                  const Duration(milliseconds: 500),
                                              curve: Curves.easeIn,
                                              height: () {
                                                if (MediaQuery.sizeOf(context)
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
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .headerColour,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      const Radius.circular(0.0),
                                                  bottomRight: Radius.circular(
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
                                                        return 12.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  )),
                                                  topLeft: const Radius.circular(0.0),
                                                  topRight: Radius.circular(
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
                                                        return 12.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  )),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Divider(
                                                    height: 3.0,
                                                    thickness: 3.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .iconColour,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 462.0;
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
                                                                      return 462.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: Slidable(
                                                      endActionPane: ActionPane(
                                                        motion:
                                                            const ScrollMotion(),
                                                        extentRatio: 0.75,
                                                        children: [
                                                          SlidableAction(
                                                            label: 'Edit',
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .editButton,
                                                            icon: Icons.edit,
                                                            onPressed:
                                                                (_) async {
                                                              context.goNamed(
                                                                'EditAutobiographyChapterPage',
                                                                queryParameters:
                                                                    {
                                                                  'refAutobiography':
                                                                      serializeParam(
                                                                    listAIChapterSelectItem
                                                                        .parentReference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                  'refAIChapter':
                                                                      serializeParam(
                                                                    listAIChapterSelectItem
                                                                        .reference,
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
                                                            },
                                                          ),
                                                          SlidableAction(
                                                            label: 'Read',
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .viewButton,
                                                            icon:
                                                                FontAwesomeIcons
                                                                    .bookReader,
                                                            onPressed:
                                                                (_) async {
                                                              context.pushNamed(
                                                                'AutobiographyReadingPage',
                                                                queryParameters:
                                                                    {
                                                                  'refAutobiography':
                                                                      serializeParam(
                                                                    listAIChapterSelectItem
                                                                        .parentReference,
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
                                                            },
                                                          ),
                                                          SlidableAction(
                                                            label: 'Continue',
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .continueButton,
                                                            icon: Icons
                                                                .auto_awesome,
                                                            onPressed:
                                                                (_) async {
                                                              context.pushNamed(
                                                                'AutobiographyGeneratingPage',
                                                                queryParameters:
                                                                    {
                                                                  'refAutobiography':
                                                                      serializeParam(
                                                                    listAIChapterSelectItem
                                                                        .parentReference,
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
                                                                            .rightToLeft,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            500),
                                                                  ),
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        child: ListTile(
                                                          title: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              'Chapter ${listAIChapterSelectItem.aIChapterNumber.toString()}: ${listAIChapterSelectItem.aIChapterTitle}',
                                                              'AI Chapter Number & Title',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter Tight',
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 20.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 20.0;
                                                                    } else {
                                                                      return 24.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          subtitle: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              () {
                                                                if ((_model.stringSortChapterBy ==
                                                                        'Created: Newest to Oldest') ||
                                                                    (_model.stringSortChapterBy ==
                                                                        'Created: Oldest to Newest')) {
                                                                  return 'Created at: ${dateTimeFormat("d/M/y", listAIChapterSelectItem.aIChapterCreatedAt)}';
                                                                } else if ((_model
                                                                            .stringSortChapterBy ==
                                                                        'Updated: Newest to Oldest') ||
                                                                    (_model.stringSortChapterBy ==
                                                                        'Updated: Oldest to Newest')) {
                                                                  return valueOrDefault<
                                                                      String>(
                                                                    'Updated at: ${dateTimeFormat("d/M/y", listAIChapterSelectItem.aIChapterUpdatedAt)}',
                                                                    'Updated at:',
                                                                  );
                                                                } else {
                                                                  return 'Created at: ${dateTimeFormat("d/M/y", listAIChapterSelectItem.aIChapterCreatedAt)}';
                                                                }
                                                              }(),
                                                              'Created at:',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
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
                                                          ),
                                                          trailing: Icon(
                                                            Icons
                                                                .arrow_back_ios_new,
                                                            size: () {
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
                                                                return 26.0;
                                                              }
                                                            }(),
                                                          ),
                                                          dense: false,
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
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
                                                                            return 12.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      ),
                                                                      12.0,
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
                                                                            return 12.0;
                                                                          }
                                                                        }(),
                                                                        0.0,
                                                                      )),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'listTileOnPageLoadAnimation1']!),
                                                  ),
                                                  Divider(
                                                    height: 3.0,
                                                    thickness: 3.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .iconColour,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation1']!,
                    );
                  },
                ),
              if (_model.toggleChapterReorder == true)
                StreamBuilder<List<AIChaptersRecord>>(
                  stream: queryAIChaptersRecord(
                    parent: widget.refAutobiography,
                    queryBuilder: (aIChaptersRecord) => aIChaptersRecord
                        .where(
                          'AI_Chapter_UID',
                          isEqualTo: currentUserReference,
                        )
                        .where(
                          'Autobiography_Ref',
                          isEqualTo: widget.refAutobiography,
                        )
                        .orderBy('AI_Chapter_Number'),
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
                        chapterReorderContainerAIChaptersRecordList =
                        snapshot.data!;

                    return Container(
                      decoration: const BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final listReorderAIChapter =
                              chapterReorderContainerAIChaptersRecordList
                                  .toList();

                          return ListView.builder(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              0,
                              0,
                              12.0,
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listReorderAIChapter.length,
                            itemBuilder: (context, listReorderAIChapterIndex) {
                              final listReorderAIChapterItem =
                                  listReorderAIChapter[
                                      listReorderAIChapterIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
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
                                                          return 6.0;
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
                                                          return 6.0;
                                                        }
                                                      }(),
                                                      0.0,
                                                    )),
                                            child: AnimatedContainer(
                                              duration:
                                                  const Duration(milliseconds: 500),
                                              curve: Curves.easeIn,
                                              height: () {
                                                if (MediaQuery.sizeOf(context)
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
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .headerColour,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Divider(
                                                    height: 3.0,
                                                    thickness: 3.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .iconColour,
                                                  ),
                                                  Expanded(
                                                    child: Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding: EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
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
                                                                      return 462.0;
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
                                                                      return 462.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          child: ListTile(
                                                            title: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                'Chapter ${listReorderAIChapterItem.aIChapterNumber.toString()}: ${listReorderAIChapterItem.aIChapterTitle}',
                                                                'AI Chapter Title',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter Tight',
                                                                    fontSize:
                                                                        () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 20.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 20.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 20.0;
                                                                      } else {
                                                                        return 24.0;
                                                                      }
                                                                    }(),
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            subtitle: Text(
                                                              'Created at: ${valueOrDefault<String>(
                                                                dateTimeFormat(
                                                                    "d/M/y",
                                                                    listReorderAIChapterItem
                                                                        .aIChapterCreatedAt),
                                                                'Created At:',
                                                              )}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    fontSize:
                                                                        () {
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
                                                            ),
                                                            trailing: Icon(
                                                              Icons.drag_handle,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconColour,
                                                              size: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 24.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 24.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 24.0;
                                                                } else {
                                                                  return 32.0;
                                                                }
                                                              }(),
                                                            ),
                                                            dense: false,
                                                            contentPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'listTileOnPageLoadAnimation2']!),
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 3.0,
                                                    thickness: 3.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .iconColour,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation2']!,
                    );
                  },
                ),
            ],
          ),
        ].addToStart(const SizedBox(height: 124.0)).addToEnd(const SizedBox(height: 124.0)),
      ),
    );
  }
}
