import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'create_front_cover_component_model.dart';
export 'create_front_cover_component_model.dart';

class CreateFrontCoverComponentWidget extends StatefulWidget {
  const CreateFrontCoverComponentWidget({
    super.key,
    this.refAutobiography,
  });

  final DocumentReference? refAutobiography;

  @override
  State<CreateFrontCoverComponentWidget> createState() =>
      _CreateFrontCoverComponentWidgetState();
}

class _CreateFrontCoverComponentWidgetState
    extends State<CreateFrontCoverComponentWidget>
    with TickerProviderStateMixin {
  late CreateFrontCoverComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateFrontCoverComponentModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1500.0.ms,
            duration: 1500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1500.0.ms,
            duration: 1500.0.ms,
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(6.0, 4.0, 6.0, 6.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
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
                        return 424.0;
                      }
                    }(),
                    0.0,
                  ),
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
                        return 424.0;
                      }
                    }(),
                    0.0,
                  ),
                  0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
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
                              return 48.0;
                            }
                          }(),
                          0.0,
                        ),
                        0.0,
                        6.0,
                        12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Choose Front Cover Colour...',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            fontSize: () {
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
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            shadows: [
                              const Shadow(
                                color: Color(0x891B1B1B),
                                offset: Offset(2.0, 2.0),
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 346.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 346.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 346.0;
                      } else {
                        return 482.0;
                      }
                    }(),
                    height: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 172.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 172.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 172.0;
                      } else {
                        return 232.0;
                      }
                    }(),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x83000000),
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).iconColour,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(6.0, 6.0, 6.0, 6.0),
                        child: GridView(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            12.0,
                            0,
                            0,
                          ),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 8,
                            crossAxisSpacing: 0.0,
                            mainAxisSpacing: 12.0,
                            childAspectRatio: 1.0,
                          ),
                          scrollDirection: Axis.vertical,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Navy Blue';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/8ey335e9vu18/Dark_Navy_Front_Cover_Design.png';
                                    _model.toggleNavyBlue =
                                        !_model.toggleNavyBlue;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/8ey335e9vu18/Dark_Navy_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleNavyBlue ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleNavyBlue ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF001F54),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleNavyBlue == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleNavyBlue == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Midnight Purple';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/unueo16nalzy/Midnight_Purple_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple =
                                        !_model.toggleMidnightPurple;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/unueo16nalzy/Midnight_Purple_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleMidnightPurple ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleMidnightPurple ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF191970),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleMidnightPurple == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleMidnightPurple == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Sapphire';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/vididwpmvb4t/Sapphire_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire =
                                        !_model.toggleSapphire;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/vididwpmvb4t/Sapphire_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleSapphire ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleSapphire ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF0F52BA),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleSapphire == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleSapphire == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Blue';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/lr85b6vbn49m/Blue_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = !_model.toggleBlue;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/lr85b6vbn49m/Blue_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleBlue ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleBlue ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF484EF4),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleBlue == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleBlue == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Sky Blue';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/unueo16nalzy/Midnight_Purple_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue =
                                        !_model.toggleSkyBlue;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/unueo16nalzy/Midnight_Purple_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleSkyBlue ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleSkyBlue ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF4682B4),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleSkyBlue == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleSkyBlue == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Light Blue';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/unueo16nalzy/Midnight_Purple_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue =
                                        !_model.toggleLightBlue;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/unueo16nalzy/Midnight_Purple_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleLightBlue ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleLightBlue ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFC3DAF0),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleLightBlue == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleLightBlue == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Teal';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/bvb240th7j0k/Teal_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = !_model.toggleTeal;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/bvb240th7j0k/Teal_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleTeal ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleTeal ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF008080),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleTeal == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleTeal == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Ebony';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/e6fv2prcbj59/Ebony_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = !_model.toggleEbony;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/e6fv2prcbj59/Ebony_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleEbony ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleEbony ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF555D50),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleEbony == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleEbony == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Olive';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/t6x1t68ndfd6/Olive_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = !_model.toggleOlive;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/t6x1t68ndfd6/Olive_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleOlive ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleOlive ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF556B2F),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleOlive == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleOlive == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Emerald';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/hb4psod3xsnr/Emerald_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald =
                                        !_model.toggleEmerald;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/hb4psod3xsnr/Emerald_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleEmerald ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleEmerald ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF50C878),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleEmerald == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleEmerald == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Green';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/aie9nc7zbqrs/Green_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = !_model.toggleGreen;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/aie9nc7zbqrs/Green_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleGreen ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleGreen ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF2CEE34),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleGreen == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleGreen == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Yellow';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/4vzi6mq2jnzm/Yellow_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = !_model.toggleYellow;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/4vzi6mq2jnzm/Yellow_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleYellow ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleYellow ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFEEED2C),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleYellow == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleYellow == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Gold';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/a52r2pleq2lw/Gold_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = !_model.toggleGold;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/a52r2pleq2lw/Gold_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleGold ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleGold ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFB8860B),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleGold == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleGold == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Copper';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/c6jmxmnq4v7j/Copper_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = !_model.toggleCopper;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/c6jmxmnq4v7j/Copper_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleCopper ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleCopper ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFB87333),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleCopper == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleCopper == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Pink';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/89tn1zlehox1/Pink_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = !_model.togglePink;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/89tn1zlehox1/Pink_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.togglePink ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.togglePink ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFD44E6A),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.togglePink == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.togglePink == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                        .createAutobiographyCoverColour = 'Red';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/toya4te45syu/Red_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = !_model.toggleRed;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/toya4te45syu/Red_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleRed ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleRed ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF44848),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleRed == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleRed == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Ivory';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/ivhuqc7p2m0z/Ivory_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = !_model.toggleIvory;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/ivhuqc7p2m0z/Ivory_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleIvory ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleIvory ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFFFF0),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleIvory == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleIvory == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Eggshell White';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/dx1tnazxzxn0/Eggshell_White_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell =
                                        !_model.toggleEggShell;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/dx1tnazxzxn0/Eggshell_White_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleEggShell ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleEggShell ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF0EAD6),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleEggShell == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleEggShell == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Light Gray';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/971az8hwk4i3/Light_Gray_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray =
                                        !_model.toggleLightGray;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/971az8hwk4i3/Light_Gray_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = false;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleLightGray ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleLightGray ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFD3D3D3),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleLightGray == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleLightGray == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Gray';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/jn9i1lniv474/Gray_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = !_model.toggleGray;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/jn9i1lniv474/Gray_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleGray ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleGray ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF6E6E6E),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleGray == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleGray == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Charcoal';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/udax99rm7lsv/Charcoal_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal =
                                        !_model.toggleCharcoal;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/udax99rm7lsv/Charcoal_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleCharcoal ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleCharcoal ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF36454F),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleCharcoal == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleCharcoal == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Jet Black';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/9ctl468ltcj5/Jet_Black_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack =
                                        !_model.toggleJetBlack;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/9ctl468ltcj5/Jet_Black_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleJetBlack ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleJetBlack ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF343434),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleJetBlack == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleJetBlack == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Black Pearl';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/dzfzdtrj9por/Black_Pearl_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack =
                                        !_model.togglePearlBlack;
                                    _model.toggleBlack = false;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/dzfzdtrj9por/Black_Pearl_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.togglePearlBlack ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.togglePearlBlack ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF2C2C2C),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.togglePearlBlack == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.togglePearlBlack == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState()
                                            .createAutobiographyCoverColour =
                                        'Black';
                                    FFAppState().createAutobiographyCoverImage =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/2iozmwyxs17o/Black_Front_Cover_Design.png';
                                    _model.toggleNavyBlue = false;
                                    _model.toggleMidnightPurple = false;
                                    _model.toggleSapphire = false;
                                    _model.toggleBlue = false;
                                    _model.toggleSkyBlue = false;
                                    _model.toggleLightBlue = false;
                                    _model.toggleTeal = false;
                                    _model.toggleEbony = false;
                                    _model.toggleOlive = false;
                                    _model.toggleEmerald = false;
                                    _model.toggleGreen = false;
                                    _model.toggleYellow = false;
                                    _model.toggleGold = false;
                                    _model.toggleCopper = false;
                                    _model.togglePink = false;
                                    _model.toggleRed = false;
                                    _model.toggleIvory = false;
                                    _model.toggleEggShell = false;
                                    _model.toggleLightGray = false;
                                    _model.toggleGray = false;
                                    _model.toggleCharcoal = false;
                                    _model.toggleJetBlack = false;
                                    _model.togglePearlBlack = false;
                                    _model.toggleBlack = !_model.toggleBlack;
                                    _model.toggleColourIsSelected = true;
                                    _model.toggleColour =
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/2iozmwyxs17o/Black_Front_Cover_Design.png';
                                    _model.toggleFontColourWhite = true;
                                    safeSetState(() {});
                                  },
                                  child: Container(
                                    width: valueOrDefault<double>(
                                      _model.toggleBlack ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleBlack ? 29.0 : 26.0,
                                      26.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 8.0,
                                          color: valueOrDefault<Color>(
                                            _model.toggleBlack == true
                                                ? FlutterFlowTheme.of(context)
                                                    .accent4
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(5.0),
                                        bottomRight: Radius.circular(5.0),
                                        topLeft: Radius.circular(5.0),
                                        topRight: Radius.circular(5.0),
                                      ),
                                      border: Border.all(
                                        color: valueOrDefault<Color>(
                                          _model.toggleBlack == true
                                              ? FlutterFlowTheme.of(context)
                                                  .accent4
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                      ),
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
                  if (_model.toggleColourIsSelected == true)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 345.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 345.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 345.0;
                          } else {
                            return 482.0;
                          }
                        }(),
                        height: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 405.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 405.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 405.0;
                          } else {
                            return 482.0;
                          }
                        }(),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x89000000),
                              offset: Offset(
                                2.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(12.0),
                            bottomRight: Radius.circular(12.0),
                            topLeft: Radius.circular(12.0),
                            topRight: Radius.circular(12.0),
                          ),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).iconColour,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 6.0, 18.0, 18.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.0, -1.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          _model.toggleColour!,
                                          width: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 320.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 320.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 320.0;
                                            } else {
                                              return 436.0;
                                            }
                                          }(),
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 380.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 380.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 380.0;
                                            } else {
                                              return 452.0;
                                            }
                                          }(),
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 42.0, 0.0, 42.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 212.0,
                                              height: 294.0,
                                              decoration: const BoxDecoration(),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 12.0, 36.0),
                                                child: StreamBuilder<
                                                    AutobiographiesRecord>(
                                                  stream: AutobiographiesRecord
                                                      .getDocument(widget
                                                          .refAutobiography!),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return const Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              SpinKitFadingCircle(
                                                            color: Color(
                                                                0xC84B59BC),
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }

                                                    final columnAutobiographiesRecord =
                                                        snapshot.data!;

                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      6.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    columnAutobiographiesRecord
                                                                        .autobiographyTitle,
                                                                    'Autobiography Title',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter Tight',
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          _model.toggleFontColourWhite
                                                                              ? FlutterFlowTheme.of(context).secondaryBackground
                                                                              : FlutterFlowTheme.of(context).primaryText,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBackground,
                                                                        ),
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
                                                                            return 26.0;
                                                                          }
                                                                        }(),
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'textOnPageLoadAnimation1']!),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      6.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    columnAutobiographiesRecord
                                                                        .authorName,
                                                                    'Author Name',
                                                                  ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter Tight',
                                                                        color: valueOrDefault<
                                                                            Color>(
                                                                          _model.toggleFontColourWhite
                                                                              ? FlutterFlowTheme.of(context).secondaryBackground
                                                                              : FlutterFlowTheme.of(context).primaryText,
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                        ),
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
                                                                      ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'textOnPageLoadAnimation2']!),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
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
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
