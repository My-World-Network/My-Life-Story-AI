import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/autobiography_creation_page_header2/autobiography_creation_page_header2_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_front_cover_component/create_front_cover_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'autobiography_creation_page2_model.dart';
export 'autobiography_creation_page2_model.dart';

class AutobiographyCreationPage2Widget extends StatefulWidget {
  const AutobiographyCreationPage2Widget({
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
  State<AutobiographyCreationPage2Widget> createState() =>
      _AutobiographyCreationPage2WidgetState();
}

class _AutobiographyCreationPage2WidgetState
    extends State<AutobiographyCreationPage2Widget>
    with TickerProviderStateMixin {
  late AutobiographyCreationPage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyCreationPage2Model());

    animationsMap.addAll({
      'autobiographyCreationPageHeader2OnPageLoadAnimation': AnimationInfo(
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
      'createFrontCoverComponentOnPageLoadAnimation': AnimationInfo(
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
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF2AB8E1), Color(0xFFA2E4EE)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              wrapWithModel(
                model: _model.autobiographyCreationPageHeader2Model,
                updateCallback: () => safeSetState(() {}),
                child: AutobiographyCreationPageHeader2Widget(
                  refAutobiography: widget.refAutobiography,
                  refUserChapter: widget.refUserChapter,
                  refAIChapter: widget.refAIChapter,
                  refUserAutobiography: widget.refUserAutobiography,
                  refAIAutobiography: widget.refAIAutobiography,
                  refAIInstructions: widget.refAIInstructions,
                ),
              ).animateOnPageLoad(animationsMap[
                  'autobiographyCreationPageHeader2OnPageLoadAnimation']!),
              wrapWithModel(
                model: _model.createFrontCoverComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: CreateFrontCoverComponentWidget(
                  refAutobiography: widget.refAutobiography,
                ),
              ).animateOnPageLoad(animationsMap[
                  'createFrontCoverComponentOnPageLoadAnimation']!),
            ],
          ),
        ),
      ),
    );
  }
}
