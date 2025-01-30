import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home_page_nav_bar_component_model.dart';
export 'home_page_nav_bar_component_model.dart';

class HomePageNavBarComponentWidget extends StatefulWidget {
  const HomePageNavBarComponentWidget({super.key});

  @override
  State<HomePageNavBarComponentWidget> createState() =>
      _HomePageNavBarComponentWidgetState();
}

class _HomePageNavBarComponentWidgetState
    extends State<HomePageNavBarComponentWidget> {
  late HomePageNavBarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageNavBarComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Container(
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
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
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
                                      return 600.0;
                                    }
                                  }(),
                                  decoration: const BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        icon: Icon(
                                          Icons.menu_book_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          size: 32.0,
                                        ),
                                        onPressed: () async {
                                          _model.backendQueryAllAutobiographies =
                                              await queryAutobiographiesRecordOnce(
                                            queryBuilder:
                                                (autobiographiesRecord) =>
                                                    autobiographiesRecord.where(
                                              'Autobiography_UID',
                                              isEqualTo: currentUserReference,
                                            ),
                                          );

                                          context.goNamed(
                                            'AutobiographySelectPage',
                                            queryParameters: {
                                              'refAutobiographiesList':
                                                  serializeParam(
                                                _model
                                                    .backendQueryAllAutobiographies
                                                    ?.map((e) => e.reference)
                                                    .toList(),
                                                ParamType.DocumentReference,
                                                isList: true,
                                              ),
                                            }.withoutNulls,
                                          );

                                          safeSetState(() {});
                                        },
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        icon: Icon(
                                          Icons.help,
                                          color: FlutterFlowTheme.of(context)
                                              .iconColour,
                                          size: 32.0,
                                        ),
                                        onPressed: () async {
                                          FFAppState()
                                                  .toggle1stAutobiographyCreated =
                                              true;
                                          safeSetState(() {});
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Container(
                                        width: 62.0,
                                        height: 62.0,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconColour,
                                              offset: const Offset(
                                                0.0,
                                                0.0,
                                              ),
                                            )
                                          ],
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(25.0),
                                            bottomRight: Radius.circular(25.0),
                                            topLeft: Radius.circular(25.0),
                                            topRight: Radius.circular(25.0),
                                          ),
                                        ),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 25.0,
                                          borderWidth: 1.0,
                                          buttonSize: 60.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          icon: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                            size: 42.0,
                                          ),
                                          onPressed: () async {
                                            FFAppState()
                                                    .createAutobiographyButtonHomePage =
                                                true;
                                            _model.updatePage(() {});
                                          },
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
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
