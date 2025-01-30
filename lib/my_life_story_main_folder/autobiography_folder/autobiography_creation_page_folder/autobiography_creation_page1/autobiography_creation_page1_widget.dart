import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/autobiography_creation_page_header1/autobiography_creation_page_header1_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_autobiography_basic_information_component/create_autobiography_basic_information_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'autobiography_creation_page1_model.dart';
export 'autobiography_creation_page1_model.dart';

class AutobiographyCreationPage1Widget extends StatefulWidget {
  const AutobiographyCreationPage1Widget({
    super.key,
    this.refAutobiography,
    this.refUserChapter,
    this.refAIChapter,
    this.refUserAutobiography,
    this.refAIAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserChapter;
  final DocumentReference? refAIChapter;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<AutobiographyCreationPage1Widget> createState() =>
      _AutobiographyCreationPage1WidgetState();
}

class _AutobiographyCreationPage1WidgetState
    extends State<AutobiographyCreationPage1Widget>
    with TickerProviderStateMixin {
  late AutobiographyCreationPage1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyCreationPage1Model());

    animationsMap.addAll({
      'createAutobiographyBasicInformationComponentOnPageLoadAnimation':
          AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'autobiographyCreationPageHeader1OnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 210.0.ms,
            duration: 1000.0.ms,
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF2AB8E1), Color(0xFFA2E4EE)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
                      child: wrapWithModel(
                        model: _model
                            .createAutobiographyBasicInformationComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child:
                            CreateAutobiographyBasicInformationComponentWidget(
                          refAutobiography: widget.refAutobiography,
                          refUserChapters: widget.refUserChapter,
                          refUserAutobiography: widget.refUserAutobiography,
                          refAIChapters: widget.refAIChapter,
                          refAIAutobiography: widget.refAIAutobiography,
                          refAIInstructions: widget.refAIInstructions,
                        ),
                      ).animateOnPageLoad(animationsMap[
                          'createAutobiographyBasicInformationComponentOnPageLoadAnimation']!),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.autobiographyCreationPageHeader1Model,
                    updateCallback: () => safeSetState(() {}),
                    child: AutobiographyCreationPageHeader1Widget(
                      refAutobiography: widget.refAutobiography,
                      refUserChapter: widget.refUserChapter,
                      refAIChapter: widget.refAIChapter,
                      refUserAutobiography: widget.refUserAutobiography,
                      refAIAutobiography: widget.refAIAutobiography,
                      refAIInstructions: widget.refAIInstructions,
                    ),
                  ).animateOnPageLoad(animationsMap[
                      'autobiographyCreationPageHeader1OnPageLoadAnimation']!),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
