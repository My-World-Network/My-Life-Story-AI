import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/header_side_bar_folder/chapter_list_component/chapter_list_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'autobiography_from_list_component_model.dart';
export 'autobiography_from_list_component_model.dart';

class AutobiographyFromListComponentWidget extends StatefulWidget {
  const AutobiographyFromListComponentWidget({
    super.key,
    bool? toggleABListOpen,
    required this.refAutobiography,
  }) : toggleABListOpen = toggleABListOpen ?? false;

  final bool toggleABListOpen;
  final DocumentReference? refAutobiography;

  @override
  State<AutobiographyFromListComponentWidget> createState() =>
      _AutobiographyFromListComponentWidgetState();
}

class _AutobiographyFromListComponentWidgetState
    extends State<AutobiographyFromListComponentWidget>
    with TickerProviderStateMixin {
  late AutobiographyFromListComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyFromListComponentModel());

    animationsMap.addAll({
      'chapterListComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 240.0.ms,
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
    return StreamBuilder<AutobiographiesRecord>(
      stream: AutobiographiesRecord.getDocument(widget.refAutobiography!),
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

        final autobiographyColumnAutobiographiesRecord = snapshot.data!;

        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(
                    'AutobiographySelectPage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 1000),
                      ),
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.book,
                          color: FlutterFlowTheme.of(context).iconColour,
                          size: 18.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              autobiographyColumnAutobiographiesRecord
                                  .autobiographyTitle,
                              'Autobiography Title',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).iconColour,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        if ((widget.toggleABListOpen == true) &&
                            (_model.toggleABOpen == false))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.toggleABOpen = true;
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: FlutterFlowTheme.of(context).iconColour,
                              size: 21.0,
                            ),
                          ),
                        if ((widget.toggleABListOpen == true) &&
                            (_model.toggleABOpen == true))
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.toggleABOpen = false;
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: FlutterFlowTheme.of(context).iconColour,
                              size: 21.0,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            if ((widget.toggleABListOpen == true) &&
                (_model.toggleABOpen == true))
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'EditAutobiographyPage',
                          queryParameters: {
                            'refAutobiography': serializeParam(
                              autobiographyColumnAutobiographiesRecord
                                  .reference,
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
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.edit,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 21.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Text(
                              'Edit Autobiography',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).iconColour,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          'AutobiographyReadingPage',
                          queryParameters: {
                            'refAutobiography': serializeParam(
                              autobiographyColumnAutobiographiesRecord
                                  .reference,
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
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.bookReader,
                            color: FlutterFlowTheme.of(context).iconColour,
                            size: 18.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 12.0, 0.0),
                            child: Text(
                              'Read Autobiography',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).iconColour,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.chapterListComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: ChapterListComponentWidget(
                        toggleABListOpen: widget.toggleABListOpen,
                        toggleABOpen: _model.toggleABOpen,
                        refAutobiography: widget.refAutobiography!,
                      ),
                    ).animateOnPageLoad(animationsMap[
                        'chapterListComponentOnPageLoadAnimation']!),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}
