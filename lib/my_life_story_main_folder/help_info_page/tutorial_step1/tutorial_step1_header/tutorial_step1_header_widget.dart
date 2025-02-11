import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'tutorial_step1_header_model.dart';
export 'tutorial_step1_header_model.dart';

class TutorialStep1HeaderWidget extends StatefulWidget {
  const TutorialStep1HeaderWidget({super.key});

  @override
  State<TutorialStep1HeaderWidget> createState() =>
      _TutorialStep1HeaderWidgetState();
}

class _TutorialStep1HeaderWidgetState extends State<TutorialStep1HeaderWidget> {
  late TutorialStep1HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TutorialStep1HeaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: () {
            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
              return 118.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
              return 118.0;
            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
              return 118.0;
            } else {
              return 136.0;
            }
          }(),
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
                      color: FlutterFlowTheme.of(context).headerColour,
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
                          color: FlutterFlowTheme.of(context).iconColour,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              valueOrDefault<double>(
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
                                0.0,
                              ),
                              0.0,
                              valueOrDefault<double>(
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
                                0.0,
                              )),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            'How To Start',
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                              fontFamily: 'Lora',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: () {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <
                                                    kBreakpointSmall) {
                                                  return 32.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointMedium) {
                                                  return 32.0;
                                                } else if (MediaQuery.sizeOf(
                                                            context)
                                                        .width <
                                                    kBreakpointLarge) {
                                                  return 32.0;
                                                } else {
                                                  return 44.0;
                                                }
                                              }(),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                              shadows: [
                                                Shadow(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .headerTextShadow,
                                                  offset: const Offset(2.0, 2.0),
                                                  blurRadius: 2.0,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 12.0)),
                                    ),
                                  ],
                                ),
                              ),
                            ].divide(const SizedBox(width: 12.0)),
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
