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
import 'package:provider/provider.dart';
import 'autobiography_listing_component_model.dart';
export 'autobiography_listing_component_model.dart';

class AutobiographyListingComponentWidget extends StatefulWidget {
  const AutobiographyListingComponentWidget({super.key});

  @override
  State<AutobiographyListingComponentWidget> createState() =>
      _AutobiographyListingComponentWidgetState();
}

class _AutobiographyListingComponentWidgetState
    extends State<AutobiographyListingComponentWidget>
    with TickerProviderStateMixin {
  late AutobiographyListingComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyListingComponentModel());

    animationsMap.addAll({
      'columnOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'listTileOnPageLoadAnimation': AnimationInfo(
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
    context.watch<FFAppState>();

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
                                FFAppState().sortAutobiographySelectPage =
                                    _model.dropDownValue!;
                                FFAppState().update(() {});
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
                              hintText: 'Sort Autobiographies By...',
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
                                  if (_model.toggleABCoverOn == true)
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
                                        icon: FaIcon(
                                          FontAwesomeIcons.book,
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour2,
                                          size: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 26.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 26.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 26.0;
                                            } else {
                                              return 30.0;
                                            }
                                          }(),
                                        ),
                                        onPressed: () async {
                                          if (animationsMap[
                                                  'columnOnActionTriggerAnimation'] !=
                                              null) {
                                            await animationsMap[
                                                    'columnOnActionTriggerAnimation']!
                                                .controller
                                                .reverse();
                                          }
                                          await Future.delayed(const Duration(
                                              milliseconds: 500));
                                          if (animationsMap[
                                                  'columnOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'columnOnActionTriggerAnimation']!
                                                .controller
                                                .stop();
                                          }
                                          _model.toggleABCoverOn = false;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ),
                                  if (_model.toggleABCoverOn == false)
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
                                        icon: FaIcon(
                                          FontAwesomeIcons.book,
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          size: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 26.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 26.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 26.0;
                                            } else {
                                              return 30.0;
                                            }
                                          }(),
                                        ),
                                        onPressed: () async {
                                          _model.toggleABCoverOn = true;
                                          safeSetState(() {});
                                          await Future.delayed(const Duration(
                                              milliseconds: 100));
                                          if (animationsMap[
                                                  'columnOnActionTriggerAnimation'] !=
                                              null) {
                                            await animationsMap[
                                                    'columnOnActionTriggerAnimation']!
                                                .controller
                                                .forward(from: 0.0);
                                          }
                                          await Future.delayed(const Duration(
                                              milliseconds: 500));
                                          if (animationsMap[
                                                  'columnOnActionTriggerAnimation'] !=
                                              null) {
                                            animationsMap[
                                                    'columnOnActionTriggerAnimation']!
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
          StreamBuilder<List<AutobiographiesRecord>>(
            stream: queryAutobiographiesRecord(
              queryBuilder: (autobiographiesRecord) => autobiographiesRecord
                  .where(
                    'Autobiography_UID',
                    isEqualTo: currentUserReference,
                  )
                  .orderBy('Autobiography_Updated_At'),
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
              List<AutobiographiesRecord>
                  autobiographyListingContainerAutobiographiesRecordList =
                  snapshot.data!;

              return Container(
                decoration: const BoxDecoration(),
                child: Builder(
                  builder: (context) {
                    final listAutobiographySelect = () {
                      if (FFAppState().sortAutobiographySelectPage ==
                          'Created: Newest to Oldest') {
                        return autobiographyListingContainerAutobiographiesRecordList
                            .sortedList(
                                keyOf: (e) => dateTimeFormat(
                                    "d/M/y", e.autobiographyCreatedAt!),
                                desc: false);
                      } else if (FFAppState().sortAutobiographySelectPage ==
                          'Created: Oldest to Newest') {
                        return autobiographyListingContainerAutobiographiesRecordList
                            .sortedList(
                                keyOf: (e) => dateTimeFormat(
                                    "d/M/y", e.autobiographyCreatedAt!),
                                desc: true);
                      } else if (FFAppState().sortAutobiographySelectPage ==
                          'Updated: Newest to Oldest') {
                        return autobiographyListingContainerAutobiographiesRecordList
                            .sortedList(
                                keyOf: (e) => dateTimeFormat(
                                    "d/M/y", e.autobiographyUpdatedAt!),
                                desc: false);
                      } else if (FFAppState().sortAutobiographySelectPage ==
                          'Updated: Oldest to Newest') {
                        return autobiographyListingContainerAutobiographiesRecordList
                            .sortedList(
                                keyOf: (e) => dateTimeFormat(
                                    "d/M/y", e.autobiographyUpdatedAt!),
                                desc: true);
                      } else if (FFAppState().sortAutobiographySelectPage ==
                          'Alphabetical: A to Z') {
                        return autobiographyListingContainerAutobiographiesRecordList
                            .sortedList(
                                keyOf: (e) => e.autobiographyTitle,
                                desc: false);
                      } else if (FFAppState().sortAutobiographySelectPage ==
                          'Alphabetical: Z to A') {
                        return autobiographyListingContainerAutobiographiesRecordList
                            .sortedList(
                                keyOf: (e) => e.autobiographyTitle, desc: true);
                      } else {
                        return autobiographyListingContainerAutobiographiesRecordList
                            .sortedList(
                                keyOf: (e) => dateTimeFormat(
                                    "d/M/y", e.autobiographyCreatedAt!),
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
                      itemCount: listAutobiographySelect.length,
                      itemBuilder: (context, listAutobiographySelectIndex) {
                        final listAutobiographySelectItem =
                            listAutobiographySelect[
                                listAutobiographySelectIndex];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeIn,
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
                            child: Container(
                              child: Stack(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (_model.toggleABCoverOn == true)
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            SizedBox(
                                              width: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 393.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 393.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 393.0;
                                                } else {
                                                  return 600.0;
                                                }
                                              }(),
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    child: Image.network(
                                                      listAutobiographySelectItem
                                                          .autobiographyCoverImage,
                                                      width: double.infinity,
                                                      height: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 218.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 218.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 218.0;
                                                        } else {
                                                          return 364.0;
                                                        }
                                                      }(),
                                                      fit: BoxFit.cover,
                                                      alignment:
                                                          const Alignment(0.0, -1.0),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return 218.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return 218.0;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return 218.0;
                                                        } else {
                                                          return 364.0;
                                                        }
                                                      }(),
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            const Color(0x00F7F7F7),
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground
                                                          ],
                                                          stops: const [0.1, 1.0],
                                                          begin:
                                                              const AlignmentDirectional(
                                                                  0.0, -1.0),
                                                          end:
                                                              const AlignmentDirectional(
                                                                  0, 1.0),
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  0.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  0.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                68.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 78.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 78.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 78.0;
                                                                    } else {
                                                                      return 136.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                ),
                                                                62.0,
                                                                48.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  listAutobiographySelectItem
                                                                      .autobiographyTitle,
                                                                  'Autobiography Title',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lora',
                                                                      fontSize:
                                                                          () {
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
                                                                          return 32.0;
                                                                        }
                                                                      }(),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Witten By',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lora',
                                                                        fontSize:
                                                                            () {
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
                                                                            return 21.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    listAutobiographySelectItem
                                                                        .authorName,
                                                                    'Author Name',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lora',
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 18.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointLarge) {
                                                                            return 18.0;
                                                                          } else {
                                                                            return 24.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
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
                                              ),
                                            ),
                                          ],
                                        ).animateOnActionTrigger(
                                          animationsMap[
                                              'columnOnActionTriggerAnimation']!,
                                        ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0,
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 0.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 0.0;
                                                                } else if (MediaQuery.sizeOf(
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
                                                            valueOrDefault<
                                                                double>(
                                                              () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 0.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 0.0;
                                                                } else if (MediaQuery.sizeOf(
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
                                                  duration: const Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.easeIn,
                                                  height: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 72.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 72.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 72.0;
                                                    } else {
                                                      return 96.0;
                                                    }
                                                  }(),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .headerColour,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          const Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(
                                                              valueOrDefault<
                                                                  double>(
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
                                                      topLeft:
                                                          const Radius.circular(0.0),
                                                      topRight: Radius.circular(
                                                          valueOrDefault<
                                                              double>(
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
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Divider(
                                                        height: 3.0,
                                                        thickness: 3.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                      ),
                                                      Expanded(
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
                                                          child: Slidable(
                                                            endActionPane:
                                                                ActionPane(
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
                                                                  icon: Icons
                                                                      .edit,
                                                                  onPressed:
                                                                      (_) async {
                                                                    context
                                                                        .goNamed(
                                                                      'EditAutobiographyPage',
                                                                      queryParameters:
                                                                          {
                                                                        'refAutobiography':
                                                                            serializeParam(
                                                                          listAutobiographySelectItem
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
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 1000),
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
                                                                  icon: FontAwesomeIcons
                                                                      .bookReader,
                                                                  onPressed:
                                                                      (_) async {
                                                                    context
                                                                        .pushNamed(
                                                                      'AutobiographyReadingPage',
                                                                      queryParameters:
                                                                          {
                                                                        'refAutobiography':
                                                                            serializeParam(
                                                                          listAutobiographySelectItem
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
                                                                              PageTransitionType.fade,
                                                                          duration:
                                                                              Duration(milliseconds: 1000),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                                SlidableAction(
                                                                  label:
                                                                      'Continue',
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .continueButton,
                                                                  icon: Icons
                                                                      .auto_awesome,
                                                                  onPressed:
                                                                      (_) async {
                                                                    context
                                                                        .pushNamed(
                                                                      'AIChapterSelectPage',
                                                                      queryParameters:
                                                                          {
                                                                        'refAutobiography':
                                                                            serializeParam(
                                                                          listAutobiographySelectItem
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
                                                                              PageTransitionType.rightToLeft,
                                                                          duration:
                                                                              Duration(milliseconds: 500),
                                                                        ),
                                                                      },
                                                                    );
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child: ListTile(
                                                                title: Text(
                                                                  listAutobiographySelectItem
                                                                      .autobiographyTitle,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter Tight',
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 20.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 20.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
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
                                                                      if ((FFAppState().sortAutobiographySelectPage ==
                                                                              'Created: Newest to Oldest') ||
                                                                          (FFAppState().sortAutobiographySelectPage ==
                                                                              'Created: Oldest to Newest')) {
                                                                        return 'Created at: ${valueOrDefault<String>(
                                                                          dateTimeFormat(
                                                                              "d/M/y",
                                                                              listAutobiographySelectItem.autobiographyCreatedAt),
                                                                          'Created At:',
                                                                        )}';
                                                                      } else if ((FFAppState().sortAutobiographySelectPage ==
                                                                              'Updated: Newest to Oldest') ||
                                                                          (FFAppState().sortAutobiographySelectPage ==
                                                                              'Updated: Oldest to Newest')) {
                                                                        return valueOrDefault<
                                                                            String>(
                                                                          'Updated at: ${valueOrDefault<String>(
                                                                            dateTimeFormat("d/M/y",
                                                                                listAutobiographySelectItem.autobiographyUpdatedAt),
                                                                            'Updated at:',
                                                                          )}',
                                                                          'Updated at:',
                                                                        );
                                                                      } else {
                                                                        return valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                              "d/M/y",
                                                                              listAutobiographySelectItem.autobiographyCreatedAt),
                                                                          'Created At:',
                                                                        );
                                                                      }
                                                                    }(),
                                                                    'Created at:',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        fontSize:
                                                                            () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 14.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 14.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
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
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 21.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 21.0;
                                                                    } else {
                                                                      return 26.0;
                                                                    }
                                                                  }(),
                                                                ),
                                                                dense: false,
                                                                contentPadding: EdgeInsetsDirectional
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
                                                                  'listTileOnPageLoadAnimation']!),
                                                        ),
                                                      ),
                                                      Divider(
                                                        height: 3.0,
                                                        thickness: 3.0,
                                                        color:
                                                            FlutterFlowTheme.of(
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ].addToStart(const SizedBox(height: 124.0)).addToEnd(const SizedBox(height: 164.0)),
      ),
    );
  }
}
