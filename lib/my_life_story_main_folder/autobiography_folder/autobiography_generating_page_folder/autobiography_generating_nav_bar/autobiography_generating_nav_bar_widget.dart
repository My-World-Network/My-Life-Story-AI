import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'autobiography_generating_nav_bar_model.dart';
export 'autobiography_generating_nav_bar_model.dart';

class AutobiographyGeneratingNavBarWidget extends StatefulWidget {
  const AutobiographyGeneratingNavBarWidget({
    super.key,
    required this.refAutobiography,
  });

  final DocumentReference? refAutobiography;

  @override
  State<AutobiographyGeneratingNavBarWidget> createState() =>
      _AutobiographyGeneratingNavBarWidgetState();
}

class _AutobiographyGeneratingNavBarWidgetState
    extends State<AutobiographyGeneratingNavBarWidget> {
  late AutobiographyGeneratingNavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyGeneratingNavBarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: double.infinity,
        height: 90.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              FlutterFlowTheme.of(context).navFade1,
              FlutterFlowTheme.of(context).navFade2,
              FlutterFlowTheme.of(context).navFade3,
              FlutterFlowTheme.of(context).navFade4,
              FlutterFlowTheme.of(context).navFade5
            ],
            stops: const [0.1, 0.2, 0.5, 0.8, 0.9],
            begin: const AlignmentDirectional(0.0, -1.0),
            end: const AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 0.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 80.0,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10.0,
                            color: Color(0x1A57636C),
                            offset: Offset(
                              0.0,
                              -10.0,
                            ),
                            spreadRadius: 0.1,
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
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
                      return 600.0;
                    }
                  }(),
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.home,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 32.0,
                          ),
                          onPressed: () async {
                            context.goNamed(
                              'MyLifeStoryHomePage',
                              queryParameters: {
                                'refAutobiography': serializeParam(
                                  widget.refAutobiography,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: const TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 500),
                                ),
                              },
                            );
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.menu_book_rounded,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 32.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(
                              'AutobiographyReadingPage',
                              queryParameters: {
                                'refAutobiography': serializeParam(
                                  widget.refAutobiography,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          },
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 25.0,
                                borderWidth: 1.0,
                                buttonSize: 60.0,
                                fillColor: const Color(0xFFA9884D),
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 42.0,
                                ),
                                onPressed: () {
                                  print('MiddleButton pressed ...');
                                },
                              ),
                            ),
                          ],
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.edit,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 32.0,
                          ),
                          onPressed: () async {
                            context.pushNamed(
                              'EditAutobiographyPage',
                              queryParameters: {
                                'refAutobiography': serializeParam(
                                  widget.refAutobiography,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          },
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 50.0,
                          icon: Icon(
                            Icons.auto_awesome,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 32.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
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
    );
  }
}
