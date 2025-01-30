import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'edit_front_cover_colour_select_component_model.dart';
export 'edit_front_cover_colour_select_component_model.dart';

class EditFrontCoverColourSelectComponentWidget extends StatefulWidget {
  const EditFrontCoverColourSelectComponentWidget({
    super.key,
    this.refAutobiography,
    this.docAutobiography,
  });

  final DocumentReference? refAutobiography;
  final AutobiographiesRecord? docAutobiography;

  @override
  State<EditFrontCoverColourSelectComponentWidget> createState() =>
      _EditFrontCoverColourSelectComponentWidgetState();
}

class _EditFrontCoverColourSelectComponentWidgetState
    extends State<EditFrontCoverColourSelectComponentWidget> {
  late EditFrontCoverColourSelectComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => EditFrontCoverColourSelectComponentModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 6.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 372.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 372.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 372.0;
                      } else {
                        return 536.0;
                      }
                    }(),
                    height: () {
                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                        return 190.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointMedium) {
                        return 190.0;
                      } else if (MediaQuery.sizeOf(context).width <
                          kBreakpointLarge) {
                        return 190.0;
                      } else {
                        return 246.0;
                      }
                    }(),
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
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(6.0, 12.0, 6.0, 0.0),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleNavyBlue
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleNavyBlue
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleMidnightPurple
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleMidnightPurple
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleSapphire
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleSapphire
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleBlue
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleBlue
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleSkyBlue
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleSkyBlue
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleLightBlue
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleLightBlue
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleTeal
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleTeal
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleEbony
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleEbony
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleOlive
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleOlive
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleEmerald
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleEmerald
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleGreen
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleGreen
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleYellow
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleYellow
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleGold
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleGold
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleCopper
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleCopper
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.togglePink
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.togglePink
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleRed
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleRed
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleIvory
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleIvory
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleEggShell
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleEggShell
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleLightGray
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleLightGray
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleGray
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleGray
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleCharcoal
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleCharcoal
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleJetBlack
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleJetBlack
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.togglePearlBlack
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.togglePearlBlack
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                                    FFAppState().editAutobiographyProcess =
                                        true;
                                    FFAppState().editAutobiographyCoverColour =
                                        true;
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
                                      _model.toggleBlack
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
                                      26.0,
                                    ),
                                    height: valueOrDefault<double>(
                                      _model.toggleBlack
                                          ? () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 29.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 29.0;
                                              } else {
                                                return 40.0;
                                              }
                                            }()
                                          : () {
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
                                                return 34.0;
                                              }
                                            }(),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
