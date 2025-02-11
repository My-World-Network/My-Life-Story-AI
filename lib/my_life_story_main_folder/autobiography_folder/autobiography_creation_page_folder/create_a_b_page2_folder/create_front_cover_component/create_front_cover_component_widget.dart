import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
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
    extends State<CreateFrontCoverComponentWidget> {
  late CreateFrontCoverComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateFrontCoverComponentModel());

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
                0.0,
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
                )),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(
                  height: 3.0,
                  thickness: 3.0,
                  color: FlutterFlowTheme.of(context).iconColour,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 6.0,
                      sigmaY: 6.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).headerColour,
                      ),
                      child: Padding(
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
                                  return 336.0;
                                }
                              }(),
                              0.0,
                            ),
                            12.0,
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
                                  return 336.0;
                                }
                              }(),
                              0.0,
                            ),
                            12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Autobiography Cover',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Lora',
                                    fontSize: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 26.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 26.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 26.0;
                                      } else {
                                        return 42.0;
                                      }
                                    }(),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 3.0,
                  thickness: 3.0,
                  color: FlutterFlowTheme.of(context).iconColour,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                0.0,
                0.0,
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
                )),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Divider(
                  height: 3.0,
                  thickness: 3.0,
                  color: FlutterFlowTheme.of(context).iconColour,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        width: 346.0,
                        height: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 202.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 202.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 202.0;
                          } else {
                            return 296.0;
                          }
                        }(),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).headerColour,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).iconColour,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
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
                                    return 296.0;
                                  }
                                }(),
                                0.0,
                              ),
                              12.0,
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
                                    return 296.0;
                                  }
                                }(),
                                0.0,
                              ),
                              12.0),
                          child: GridView(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 8,
                              crossAxisSpacing: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 1.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 1.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 1.0;
                                } else {
                                  return 1.0;
                                }
                              }(),
                              mainAxisSpacing: 1.0,
                              childAspectRatio: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 0.8;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 0.8;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 0.8;
                                } else {
                                  return 1.2;
                                }
                              }(),
                            ),
                            scrollDirection: Axis.vertical,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                        _model.toggleMidnightPurple
                                            ? 29.0
                                            : 26.0,
                                        26.0,
                                      ),
                                      height: valueOrDefault<double>(
                                        _model.toggleMidnightPurple
                                            ? 29.0
                                            : 26.0,
                                        26.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF191970),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 8.0,
                                            color: valueOrDefault<Color>(
                                              _model.toggleMidnightPurple ==
                                                      true
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                      _model.toggleYellow =
                                          !_model.toggleYellow;
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                      _model.toggleCopper =
                                          !_model.toggleCopper;
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState()
                                              .createAutobiographyCoverColour =
                                          'Red';
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                      FFAppState()
                                              .createAutobiographyCoverImage =
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
                  ],
                ),
                Divider(
                  height: 3.0,
                  thickness: 3.0,
                  color: FlutterFlowTheme.of(context).iconColour,
                ),
              ],
            ),
          ),
          StreamBuilder<AutobiographiesRecord>(
            stream:
                AutobiographiesRecord.getDocument(widget.refAutobiography!),
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

              final coverColumnAutobiographiesRecord = snapshot.data!;

              return Column(
                mainAxisSize: MainAxisSize.max,
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
                                return 336.0;
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
                                return 336.0;
                              }
                            }(),
                            0.0,
                          ),
                          0.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                coverColumnAutobiographiesRecord
                                                .autobiographyCoverImage !=
                                            ''
                                    ? coverColumnAutobiographiesRecord
                                        .autobiographyCoverImage
                                    : _model.toggleColour,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/m-w-n-my-life-story-app-version1-4-rsuds8/assets/2iozmwyxs17o/Black_Front_Cover_Design.png',
                              ),
                              width: double.infinity,
                              height: () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 218.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 218.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 218.0;
                                } else {
                                  return 436.0;
                                }
                              }(),
                              fit: BoxFit.cover,
                              alignment: const Alignment(0.0, -0.85),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 68.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 68.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 68.0;
                                    } else {
                                      return 106.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
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
                                      return 164.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 68.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 68.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 68.0;
                                    } else {
                                      return 96.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                36.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.all(valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 4.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 4.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 4.0;
                                      } else {
                                        return 8.0;
                                      }
                                    }(),
                                    0.0,
                                  )),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          valueOrDefault<String>(
                                            coverColumnAutobiographiesRecord
                                                .autobiographyTitle,
                                            'Autobiography Title',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lora',
                                                color: valueOrDefault<Color>(
                                                  _model.toggleFontColourWhite
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .tutorialFade4
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                                ),
                                                fontSize: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 21.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 21.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 21.0;
                                                  } else {
                                                    return 36.0;
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
                                Padding(
                                  padding:
                                      EdgeInsets.all(valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 2.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 2.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 2.0;
                                      } else {
                                        return 4.0;
                                      }
                                    }(),
                                    0.0,
                                  )),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Witten By',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lora',
                                                color: valueOrDefault<Color>(
                                                  _model.toggleFontColourWhite
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .tutorialFade4
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                                ),
                                                fontSize: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 14.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 14.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 14.0;
                                                  } else {
                                                    return 21.0;
                                                  }
                                                }(),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.all(valueOrDefault<double>(
                                    () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 3.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 3.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 3.0;
                                      } else {
                                        return 6.0;
                                      }
                                    }(),
                                    0.0,
                                  )),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          valueOrDefault<String>(
                                            coverColumnAutobiographiesRecord
                                                .authorName,
                                            'Author Name',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lora',
                                                color: valueOrDefault<Color>(
                                                  _model.toggleFontColourWhite
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .tutorialFade4
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                                ),
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
                                                    return 26.0;
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
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 3.0,
                    thickness: 3.0,
                    color: FlutterFlowTheme.of(context).iconColour,
                  ),
                ],
              );
            },
          ),
        ].addToStart(SizedBox(height: () {
          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
            return 132.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
            return 132.0;
          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
            return 132.0;
          } else {
            return 164.0;
          }
        }())).addToEnd(const SizedBox(height: 124.0)),
      ),
    );
  }
}
