import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_select_page_folder/autobiography_select_page_nav_bar/autobiography_select_page_nav_bar_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_select_page_folder/create_new_autobiography_component2/create_new_autobiography_component2_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'autobiography_select_page_model.dart';
export 'autobiography_select_page_model.dart';

class AutobiographySelectPageWidget extends StatefulWidget {
  const AutobiographySelectPageWidget({
    super.key,
    this.refAutobiographiesList,
  });

  final List<DocumentReference>? refAutobiographiesList;

  @override
  State<AutobiographySelectPageWidget> createState() =>
      _AutobiographySelectPageWidgetState();
}

class _AutobiographySelectPageWidgetState
    extends State<AutobiographySelectPageWidget> with TickerProviderStateMixin {
  late AutobiographySelectPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasDropDownTriggered1 = false;
  var hasColumnTriggered = false;
  var hasDropDownTriggered2 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographySelectPageModel());

    animationsMap.addAll({
      'dropDownOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'columnOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 1.0,
            end: 0.0,
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
      'autobiographySelectPageNavBarOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'dropDownOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'createNewAutobiographyComponent2OnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<AutobiographiesRecord>>(
      stream: queryAutobiographiesRecord(
        queryBuilder: (autobiographiesRecord) => autobiographiesRecord.where(
          'Autobiography_UID',
          isEqualTo: currentUserReference,
        ),
      )..listen((snapshot) {
          List<AutobiographiesRecord>
              autobiographySelectPageAutobiographiesRecordList = snapshot;
          if (_model.autobiographySelectPagePreviousSnapshot != null &&
              !const ListEquality(AutobiographiesRecordDocumentEquality())
                  .equals(autobiographySelectPageAutobiographiesRecordList,
                      _model.autobiographySelectPagePreviousSnapshot)) {
            () async {}();
          }
          _model.autobiographySelectPagePreviousSnapshot = snapshot;
        }),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return const Scaffold(
            backgroundColor: Color(0xFFF1F4F8),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingCircle(
                  color: Color(0xC84B59BC),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<AutobiographiesRecord>
            autobiographySelectPageAutobiographiesRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFFF1F4F8),
            body: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 124.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    AnimatedContainer(
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeIn,
                                      width: () {
                                        if (_model.expandAutobiographySort ==
                                            false) {
                                          return 80.0;
                                        } else if (_model
                                                .expandAutobiographySort ==
                                            true) {
                                          return 318.0;
                                        } else {
                                          return 80.0;
                                        }
                                      }(),
                                      height: 56.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).iconBG,
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
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(12.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(12.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            if (_model
                                                    .toggleAutobiographySortTab ==
                                                true)
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 12.0, 0.0),
                                                child: FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .dropDownValueController1 ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropDownValue1 ??=
                                                        '',
                                                  ),
                                                  options: List<String>.from([
                                                    'Created: Newest to Oldest',
                                                    'Created: Oldest to Newest',
                                                    'Updated: Newest to Oldest',
                                                    'Updated: Oldest to Newest',
                                                    'Chapter: First to Last',
                                                    'Chapter Last to First'
                                                  ]),
                                                  optionLabels: const [
                                                    'Created: Newest to Oldest',
                                                    'Created: Oldest to Newest',
                                                    'Updated: Newest to Oldest',
                                                    'Updated: Oldest to Newest',
                                                    'Chapter: First to Last',
                                                    'Chapter: Last to First'
                                                  ],
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                        .dropDownValue1 = val);
                                                    FFAppState()
                                                            .sortAutobiographySelectPage =
                                                        _model.dropDownValue1!;
                                                    FFAppState().update(() {});
                                                  },
                                                  width: 226.0,
                                                  height: 40.0,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText:
                                                      'Sort Autobiographies By...',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'dropDownOnActionTriggerAnimation1']!,
                                                    hasBeenTriggered:
                                                        hasDropDownTriggered1),
                                              ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 2.0, 4.0, 2.0),
                                              child: AnimatedContainer(
                                                duration:
                                                    const Duration(milliseconds: 300),
                                                curve: Curves.easeIn,
                                                width: 50.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: valueOrDefault<Color>(
                                                    _model.toggleAutobiographySortTab ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .iconSelected
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .iconUnselected,
                                                    FlutterFlowTheme.of(context)
                                                        .iconUnselected,
                                                  ),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
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
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                    topLeft:
                                                        Radius.circular(12.0),
                                                    topRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          if (_model
                                                                  .toggleAutobiographySortTab ==
                                                              true) {
                                                            if (animationsMap[
                                                                    'dropDownOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              await animationsMap[
                                                                      'dropDownOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .reverse();
                                                            }
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        500));
                                                            if (animationsMap[
                                                                    'dropDownOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'dropDownOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .stop();
                                                            }
                                                            _model.expandAutobiographySort =
                                                                false;
                                                            _model.toggleAutobiographySortTab =
                                                                false;
                                                            safeSetState(() {});
                                                          } else if (_model
                                                                  .toggleAutobiographySortTab ==
                                                              false) {
                                                            _model.expandAutobiographySort =
                                                                true;
                                                            safeSetState(() {});
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        300));
                                                            _model.toggleAutobiographySortTab =
                                                                true;
                                                            safeSetState(() {});
                                                            if (animationsMap[
                                                                    'dropDownOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              safeSetState(() =>
                                                                  hasDropDownTriggered1 =
                                                                      true);
                                                              SchedulerBinding
                                                                  .instance
                                                                  .addPostFrameCallback((_) async => await animationsMap[
                                                                          'dropDownOnActionTriggerAnimation1']!
                                                                      .controller
                                                                      .forward(
                                                                          from:
                                                                              0.0));
                                                            }
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        500));
                                                            if (animationsMap[
                                                                    'dropDownOnActionTriggerAnimation1'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'dropDownOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .stop();
                                                            }
                                                            _model.expandAutobiographySort =
                                                                true;
                                                            _model.toggleAutobiographySortTab =
                                                                true;
                                                            safeSetState(() {});
                                                          } else {
                                                            return;
                                                          }
                                                        },
                                                        child: Icon(
                                                          Icons.sort,
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.toggleAutobiographySortTab ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconColour2
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconColour,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                          ),
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: Builder(
                            builder: (context) {
                              final listAutobiographySelect = () {
                                if (FFAppState().sortAutobiographySelectPage ==
                                    'Created: Newest to Oldest') {
                                  return autobiographySelectPageAutobiographiesRecordList
                                      .sortedList(
                                          keyOf: (e) => dateTimeFormat("d/M/y",
                                              e.autobiographyCreatedAt!),
                                          desc: false);
                                } else if (FFAppState()
                                        .sortAutobiographySelectPage ==
                                    'Created: Oldest to Newest') {
                                  return autobiographySelectPageAutobiographiesRecordList
                                      .sortedList(
                                          keyOf: (e) => dateTimeFormat("d/M/y",
                                              e.autobiographyCreatedAt!),
                                          desc: true);
                                } else if (FFAppState()
                                        .sortAutobiographySelectPage ==
                                    'Updated: Newest to Oldest') {
                                  return autobiographySelectPageAutobiographiesRecordList
                                      .sortedList(
                                          keyOf: (e) => dateTimeFormat("d/M/y",
                                              e.autobiographyUpdatedAt!),
                                          desc: false);
                                } else if (FFAppState()
                                        .sortAutobiographySelectPage ==
                                    'Updated: Oldest to Newest') {
                                  return autobiographySelectPageAutobiographiesRecordList
                                      .sortedList(
                                          keyOf: (e) => dateTimeFormat("d/M/y",
                                              e.autobiographyUpdatedAt!),
                                          desc: true);
                                } else {
                                  return autobiographySelectPageAutobiographiesRecordList
                                      .sortedList(
                                          keyOf: (e) => dateTimeFormat("d/M/y",
                                              e.autobiographyCreatedAt!),
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
                                itemBuilder:
                                    (context, listAutobiographySelectIndex) {
                                  final listAutobiographySelectItem =
                                      listAutobiographySelect[
                                          listAutobiographySelectIndex];
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
                                      child: Container(
                                        child: Stack(
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (_model.toggleSetCoverOn ==
                                                    true)
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SizedBox(
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 393.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 393.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
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
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              child:
                                                                  Image.network(
                                                                listAutobiographySelectItem
                                                                    .autobiographyCoverImage,
                                                                width: double
                                                                    .infinity,
                                                                height: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 218.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 218.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 218.0;
                                                                  } else {
                                                                    return 364.0;
                                                                  }
                                                                }(),
                                                                fit: BoxFit
                                                                    .cover,
                                                                alignment:
                                                                    const Alignment(
                                                                        0.0,
                                                                        -1.0),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child: Container(
                                                                width: double
                                                                    .infinity,
                                                                height: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 218.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 218.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 218.0;
                                                                  } else {
                                                                    return 364.0;
                                                                  }
                                                                }(),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  gradient:
                                                                      LinearGradient(
                                                                    colors: [
                                                                      const Color(
                                                                          0x00F7F7F7),
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground
                                                                    ],
                                                                    stops: const [
                                                                      0.1,
                                                                      1.0
                                                                    ],
                                                                    begin:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    end: const AlignmentDirectional(
                                                                        0, 1.0),
                                                                  ),
                                                                  borderRadius:
                                                                      const BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            0.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            0.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            0.0),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      68.0,
                                                                      valueOrDefault<
                                                                          double>(
                                                                        () {
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointSmall) {
                                                                            return 78.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
                                                                              kBreakpointMedium) {
                                                                            return 78.0;
                                                                          } else if (MediaQuery.sizeOf(context).width <
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
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            listAutobiographySelectItem.autobiographyTitle,
                                                                            'Autobiography Title',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Lora',
                                                                                fontSize: () {
                                                                                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                    return 24.0;
                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                    return 24.0;
                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                    return 24.0;
                                                                                  } else {
                                                                                    return 32.0;
                                                                                  }
                                                                                }(),
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
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
                                                                          child:
                                                                              Text(
                                                                            'Witten By',
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Lora',
                                                                                  fontSize: () {
                                                                                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                      return 16.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                      return 16.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                      return 16.0;
                                                                                    } else {
                                                                                      return 21.0;
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
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
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
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              listAutobiographySelectItem.authorName,
                                                                              'Author Name',
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Lora',
                                                                                  fontSize: () {
                                                                                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                      return 18.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                      return 18.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
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
                                                      hasBeenTriggered:
                                                          hasColumnTriggered),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Stack(
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional
                                                              .fromSTEB(
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
                                                                        return 6.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
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
                                                                        return 432.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  ),
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
                                                                        return 6.0;
                                                                      }
                                                                    }(),
                                                                    0.0,
                                                                  )),
                                                          child:
                                                              AnimatedContainer(
                                                            duration: const Duration(
                                                                milliseconds:
                                                                    500),
                                                            curve:
                                                                Curves.easeIn,
                                                            height: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return 72.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointMedium) {
                                                                return 72.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointLarge) {
                                                                return 72.0;
                                                              } else {
                                                                return 96.0;
                                                              }
                                                            }(),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  offset:
                                                                      const Offset(
                                                                    0.0,
                                                                    0.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: const Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
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
                                                                      return 12.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                )),
                                                                topLeft: const Radius
                                                                    .circular(
                                                                        0.0),
                                                                topRight: Radius
                                                                    .circular(
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
                                                                      return 12.0;
                                                                    }
                                                                  }(),
                                                                  0.0,
                                                                )),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
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
                                                                              return 462.0;
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
                                                                              return 12.0;
                                                                            }
                                                                          }(),
                                                                          0.0,
                                                                        ),
                                                                        0.0),
                                                                    child:
                                                                        Slidable(
                                                                      endActionPane:
                                                                          ActionPane(
                                                                        motion:
                                                                            const ScrollMotion(),
                                                                        extentRatio:
                                                                            0.75,
                                                                        children: [
                                                                          SlidableAction(
                                                                            label:
                                                                                'Edit',
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).editButton,
                                                                            icon:
                                                                                Icons.edit,
                                                                            onPressed:
                                                                                (_) async {
                                                                              context.goNamed(
                                                                                'EditAutobiographyPage',
                                                                                queryParameters: {
                                                                                  'refAutobiography': serializeParam(
                                                                                    listAutobiographySelectItem.reference,
                                                                                    ParamType.DocumentReference,
                                                                                  ),
                                                                                  'refAutobiographyList': serializeParam(
                                                                                    widget.refAutobiographiesList,
                                                                                    ParamType.DocumentReference,
                                                                                    isList: true,
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
                                                                          ),
                                                                          SlidableAction(
                                                                            label:
                                                                                'Read',
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).viewButton,
                                                                            icon:
                                                                                FontAwesomeIcons.bookReader,
                                                                            onPressed:
                                                                                (_) async {
                                                                              context.pushNamed(
                                                                                'AutobiographyReadingPage',
                                                                                queryParameters: {
                                                                                  'refAutobiography': serializeParam(
                                                                                    listAutobiographySelectItem.reference,
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
                                                                          ),
                                                                          SlidableAction(
                                                                            label:
                                                                                'Continue',
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).continueButton,
                                                                            icon:
                                                                                Icons.auto_awesome,
                                                                            onPressed:
                                                                                (_) async {
                                                                              context.pushNamed(
                                                                                'AutobiographyChapterSelectPage',
                                                                                queryParameters: {
                                                                                  'refAutobiography': serializeParam(
                                                                                    listAutobiographySelectItem.reference,
                                                                                    ParamType.DocumentReference,
                                                                                  ),
                                                                                  'refAutobiographyList': serializeParam(
                                                                                    widget.refAutobiographiesList,
                                                                                    ParamType.DocumentReference,
                                                                                    isList: true,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  kTransitionInfoKey: const TransitionInfo(
                                                                                    hasTransition: true,
                                                                                    transitionType: PageTransitionType.rightToLeft,
                                                                                    duration: Duration(milliseconds: 500),
                                                                                  ),
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        child:
                                                                            ListTile(
                                                                          title:
                                                                              Text(
                                                                            listAutobiographySelectItem.autobiographyTitle,
                                                                            style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                  fontFamily: 'Inter Tight',
                                                                                  fontSize: () {
                                                                                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                      return 20.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                      return 20.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                      return 20.0;
                                                                                    } else {
                                                                                      return 24.0;
                                                                                    }
                                                                                  }(),
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          subtitle:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              () {
                                                                                if ((FFAppState().sortAutobiographySelectPage == 'Created: Newest to Oldest') || (FFAppState().sortAutobiographySelectPage == 'Created: Oldest to Newest')) {
                                                                                  return 'Created at: ${valueOrDefault<String>(
                                                                                    dateTimeFormat("d/M/y", listAutobiographySelectItem.autobiographyCreatedAt),
                                                                                    'Created At:',
                                                                                  )}';
                                                                                } else if ((FFAppState().sortAutobiographySelectPage == 'Updated: Newest to Oldest') || (FFAppState().sortAutobiographySelectPage == 'Updated: Oldest to Newest')) {
                                                                                  return valueOrDefault<String>(
                                                                                    'Updated at: ${valueOrDefault<String>(
                                                                                      dateTimeFormat("d/M/y", listAutobiographySelectItem.autobiographyUpdatedAt),
                                                                                      'Updated at:',
                                                                                    )}',
                                                                                    'Updated at:',
                                                                                  );
                                                                                } else {
                                                                                  return valueOrDefault<String>(
                                                                                    dateTimeFormat("d/M/y", listAutobiographySelectItem.autobiographyCreatedAt),
                                                                                    'Created At:',
                                                                                  );
                                                                                }
                                                                              }(),
                                                                              'Created at:',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Inter',
                                                                                  fontSize: () {
                                                                                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                      return 14.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                      return 14.0;
                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                      return 14.0;
                                                                                    } else {
                                                                                      return 18.0;
                                                                                    }
                                                                                  }(),
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                          trailing:
                                                                              Icon(
                                                                            Icons.arrow_back_ios_new,
                                                                            size:
                                                                                () {
                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                return 21.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                return 21.0;
                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                return 21.0;
                                                                              } else {
                                                                                return 26.0;
                                                                              }
                                                                            }(),
                                                                          ),
                                                                          tileColor:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          dense:
                                                                              false,
                                                                          contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              12.0,
                                                                              0.0),
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['listTileOnPageLoadAnimation']!),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                        ))
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Container(
                                                              width: 462.0,
                                                              height: 112.0,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0xFFF1F4F8),
                                                                    Color(
                                                                        0xF3F1F4F8),
                                                                    Color(
                                                                        0xD8F1F4F8),
                                                                    Color(
                                                                        0x97F1F4F8),
                                                                    Color(
                                                                        0x00F1F4F8)
                                                                  ],
                                                                  stops: [
                                                                    0.1,
                                                                    0.2,
                                                                    0.5,
                                                                    0.8,
                                                                    0.9
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          0),
                                                                ),
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
                        ),
                        Container(
                          width: double.infinity,
                          height: 140.0,
                          decoration: const BoxDecoration(),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    wrapWithModel(
                      model: _model.autobiographySelectPageNavBarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const AutobiographySelectPageNavBarWidget(),
                    ).animateOnPageLoad(animationsMap[
                        'autobiographySelectPageNavBarOnPageLoadAnimation']!),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xF3FFFFFF),
                        Color(0xCFFFFFFF),
                        Color(0x9EFFFFFF),
                        Color(0x68FFFFFF),
                        Color(0x00FFFFFF)
                      ],
                      stops: [0.1, 0.2, 0.5, 0.8, 0.9],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Container(
                                  width: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 393.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 393.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 393.0;
                                    } else {
                                      return 624.0;
                                    }
                                  }(),
                                  height: 124.0,
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 12.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            offset: const Offset(
                                                              0.0,
                                                              0.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  16.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  16.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  16.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  16.0),
                                                        ),
                                                      ),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 16.0,
                                                        buttonSize: 50.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconUnselected,
                                                        icon: const Icon(
                                                          Icons.home,
                                                          color:
                                                              Color(0xFF8F7538),
                                                          size: 32.0,
                                                        ),
                                                        onPressed: () async {
                                                          context.goNamed(
                                                            'MyLifeStoryHomePage',
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 24.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 12.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            offset: const Offset(
                                                              0.0,
                                                              0.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  16.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  16.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  16.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  16.0),
                                                        ),
                                                      ),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Colors.transparent,
                                                        borderRadius: 16.0,
                                                        buttonSize: 50.0,
                                                        fillColor:
                                                            valueOrDefault<
                                                                Color>(
                                                          _model.toggleCoverOn ==
                                                                  true
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .iconSelected
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconUnselected,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .iconUnselected,
                                                        ),
                                                        icon: FaIcon(
                                                          FontAwesomeIcons.book,
                                                          color: valueOrDefault<
                                                              Color>(
                                                            _model.toggleCoverOn ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconColour2
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .iconColour,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                          ),
                                                          size: 26.0,
                                                        ),
                                                        onPressed: () async {
                                                          if (_model
                                                                  .toggleSetCoverOn ==
                                                              true) {
                                                            if (animationsMap[
                                                                    'columnOnActionTriggerAnimation'] !=
                                                                null) {
                                                              safeSetState(() =>
                                                                  hasColumnTriggered =
                                                                      true);
                                                              SchedulerBinding
                                                                  .instance
                                                                  .addPostFrameCallback((_) async => await animationsMap[
                                                                          'columnOnActionTriggerAnimation']!
                                                                      .controller
                                                                      .forward(
                                                                          from:
                                                                              0.0));
                                                            }
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        1000));
                                                            if (animationsMap[
                                                                    'columnOnActionTriggerAnimation'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'columnOnActionTriggerAnimation']!
                                                                  .controller
                                                                  .stop();
                                                            }
                                                            _model.toggleSetCoverOn =
                                                                false;
                                                            safeSetState(() {});
                                                          } else if (_model
                                                                  .toggleSetCoverOn ==
                                                              false) {
                                                            _model.toggleSetCoverOn =
                                                                true;
                                                            safeSetState(() {});
                                                            if (animationsMap[
                                                                    'columnOnActionTriggerAnimation'] !=
                                                                null) {
                                                              await animationsMap[
                                                                      'columnOnActionTriggerAnimation']!
                                                                  .controller
                                                                  .reverse();
                                                            }
                                                            await Future.delayed(
                                                                const Duration(
                                                                    milliseconds:
                                                                        1000));
                                                            if (animationsMap[
                                                                    'columnOnActionTriggerAnimation'] !=
                                                                null) {
                                                              animationsMap[
                                                                      'columnOnActionTriggerAnimation']!
                                                                  .controller
                                                                  .stop();
                                                            }
                                                          } else {
                                                            return;
                                                          }
                                                        },
                                                      ),
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
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      80.0, 0.0, 80.0, 0.0),
                                  child: Container(
                                    width: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 393.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 393.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 393.0;
                                      } else {
                                        return 452.0;
                                      }
                                    }(),
                                    height: 124.0,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                                        return 46.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 46.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 46.0;
                                                      } else {
                                                        return 32.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  'Autobiography Library',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Lora',
                                                    fontSize: () {
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
                                                        return 32.0;
                                                      }
                                                    }(),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    shadows: [
                                                      const Shadow(
                                                        color:
                                                            Color(0x2A1B1B1B),
                                                        offset:
                                                            Offset(2.0, 2.0),
                                                        blurRadius: 2.0,
                                                      )
                                                    ],
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
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 1.0),
                                child: Container(
                                  width: 350.0,
                                  height: 124.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Visibility(
                                    visible: responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 24.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              AnimatedContainer(
                                                duration:
                                                    const Duration(milliseconds: 300),
                                                curve: Curves.easeIn,
                                                width: () {
                                                  if (_model
                                                          .expandAutobiographySort ==
                                                      false) {
                                                    return 80.0;
                                                  } else if (_model
                                                          .expandAutobiographySort ==
                                                      true) {
                                                    return 318.0;
                                                  } else {
                                                    return 80.0;
                                                  }
                                                }(),
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .iconBG,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4.0,
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
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      if (_model
                                                              .toggleAutobiographySortTab ==
                                                          true)
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: FlutterFlowDropDown<
                                                              String>(
                                                            controller: _model
                                                                    .dropDownValueController2 ??=
                                                                FormFieldController<
                                                                    String>(
                                                              _model.dropDownValue2 ??=
                                                                  '',
                                                            ),
                                                            options: List<
                                                                String>.from([
                                                              'Created: Newest to Oldest',
                                                              'Created: Oldest to Newest',
                                                              'Updated: Newest to Oldest',
                                                              'Updated: Oldest to Newest',
                                                              'Chapter: First to Last',
                                                              'Chapter Last to First'
                                                            ]),
                                                            optionLabels: const [
                                                              'Created: Newest to Oldest',
                                                              'Created: Oldest to Newest',
                                                              'Updated: Newest to Oldest',
                                                              'Updated: Oldest to Newest',
                                                              'Chapter: First to Last',
                                                              'Chapter: Last to First'
                                                            ],
                                                            onChanged:
                                                                (val) async {
                                                              safeSetState(() =>
                                                                  _model.dropDownValue2 =
                                                                      val);
                                                              FFAppState()
                                                                      .sortAutobiographySelectPage =
                                                                  _model
                                                                      .dropDownValue2!;
                                                              FFAppState()
                                                                  .update(
                                                                      () {});
                                                            },
                                                            width: 226.0,
                                                            height: 40.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Inter',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            hintText:
                                                                'Sort Autobiographies By...',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            borderWidth: 0.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: false,
                                                            isSearchable: false,
                                                            isMultiSelect:
                                                                false,
                                                          ).animateOnActionTrigger(
                                                              animationsMap[
                                                                  'dropDownOnActionTriggerAnimation2']!,
                                                              hasBeenTriggered:
                                                                  hasDropDownTriggered2),
                                                        ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    2.0,
                                                                    4.0,
                                                                    2.0),
                                                        child:
                                                            AnimatedContainer(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  300),
                                                          curve: Curves.easeIn,
                                                          width: 50.0,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              _model.toggleAutobiographySortTab ==
                                                                      true
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconSelected
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconUnselected,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .iconUnselected,
                                                            ),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                blurRadius: 4.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                offset: const Offset(
                                                                  0.0,
                                                                  0.0,
                                                                ),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      12.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          12.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      12.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      12.0),
                                                            ),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    if (_model
                                                                            .toggleAutobiographySortTab ==
                                                                        true) {
                                                                      if (animationsMap[
                                                                              'dropDownOnActionTriggerAnimation2'] !=
                                                                          null) {
                                                                        await animationsMap['dropDownOnActionTriggerAnimation2']!
                                                                            .controller
                                                                            .reverse();
                                                                      }
                                                                      await Future.delayed(const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                      if (animationsMap[
                                                                              'dropDownOnActionTriggerAnimation2'] !=
                                                                          null) {
                                                                        animationsMap['dropDownOnActionTriggerAnimation2']!
                                                                            .controller
                                                                            .stop();
                                                                      }
                                                                      _model.expandAutobiographySort =
                                                                          false;
                                                                      _model.toggleAutobiographySortTab =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                    } else if (_model
                                                                            .toggleAutobiographySortTab ==
                                                                        false) {
                                                                      _model.expandAutobiographySort =
                                                                          true;
                                                                      safeSetState(
                                                                          () {});
                                                                      await Future.delayed(const Duration(
                                                                          milliseconds:
                                                                              300));
                                                                      _model.toggleAutobiographySortTab =
                                                                          true;
                                                                      safeSetState(
                                                                          () {});
                                                                      if (animationsMap[
                                                                              'dropDownOnActionTriggerAnimation2'] !=
                                                                          null) {
                                                                        safeSetState(() =>
                                                                            hasDropDownTriggered2 =
                                                                                true);
                                                                        SchedulerBinding
                                                                            .instance
                                                                            .addPostFrameCallback((_) async =>
                                                                                await animationsMap['dropDownOnActionTriggerAnimation2']!.controller.forward(from: 0.0));
                                                                      }
                                                                      await Future.delayed(const Duration(
                                                                          milliseconds:
                                                                              500));
                                                                      if (animationsMap[
                                                                              'dropDownOnActionTriggerAnimation2'] !=
                                                                          null) {
                                                                        animationsMap['dropDownOnActionTriggerAnimation2']!
                                                                            .controller
                                                                            .stop();
                                                                      }
                                                                      _model.expandAutobiographySort =
                                                                          true;
                                                                      _model.toggleAutobiographySortTab =
                                                                          true;
                                                                      safeSetState(
                                                                          () {});
                                                                    } else {
                                                                      return;
                                                                    }
                                                                  },
                                                                  child: Icon(
                                                                    Icons.sort,
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      _model.toggleAutobiographySortTab ==
                                                                              true
                                                                          ? FlutterFlowTheme.of(context)
                                                                              .iconColour2
                                                                          : FlutterFlowTheme.of(context)
                                                                              .iconColour,
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .iconColour,
                                                                    ),
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
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
                                      ),
                                    ),
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
                if (FFAppState()
                        .createAutobiographyButtonAutobiographySelectPage ==
                    true)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.createNewAutobiographyComponent2Model,
                          updateCallback: () => safeSetState(() {}),
                          child: const CreateNewAutobiographyComponent2Widget(),
                        ).animateOnPageLoad(animationsMap[
                            'createNewAutobiographyComponent2OnPageLoadAnimation']!),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
