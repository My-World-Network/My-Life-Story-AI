import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_author_background_information_component/create_author_background_information_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_author_d_o_b_component/create_author_d_o_b_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_author_name_component/create_author_name_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_autobiography_title_component/create_autobiography_title_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_chapter1_component/create_chapter1_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'create_autobiography_basic_information_component_model.dart';
export 'create_autobiography_basic_information_component_model.dart';

class CreateAutobiographyBasicInformationComponentWidget
    extends StatefulWidget {
  const CreateAutobiographyBasicInformationComponentWidget({
    super.key,
    this.refAutobiography,
    this.refUserChapters,
    this.refUserAutobiography,
    this.refAIChapters,
    this.refAIAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserChapters;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIChapters;
  final DocumentReference? refAIAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<CreateAutobiographyBasicInformationComponentWidget> createState() =>
      _CreateAutobiographyBasicInformationComponentWidgetState();
}

class _CreateAutobiographyBasicInformationComponentWidgetState
    extends State<CreateAutobiographyBasicInformationComponentWidget>
    with TickerProviderStateMixin {
  late CreateAutobiographyBasicInformationComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => CreateAutobiographyBasicInformationComponentModel());

    animationsMap.addAll({
      'createAutobiographyTitleComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 500.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'createChapter1ComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 760.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'createAuthorNameComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'createAuthorDOBComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1260.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'createAuthorBackgroundInformationComponentOnPageLoadAnimation':
          AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
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

        final columnAutobiographiesRecord = snapshot.data!;

        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                child: StreamBuilder<AIChaptersRecord>(
                  stream: AIChaptersRecord.getDocument(widget.refAIChapters!),
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

                    final columnAIChaptersRecord = snapshot.data!;

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        wrapWithModel(
                          model: _model.createAutobiographyTitleComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CreateAutobiographyTitleComponentWidget(
                            refAutobiography: widget.refAutobiography,
                            refUserAutobiography: widget.refUserAutobiography,
                            refAIAutobiography: widget.refAIAutobiography,
                            refAIInstructions: widget.refAIInstructions,
                          ),
                        ).animateOnPageLoad(animationsMap[
                            'createAutobiographyTitleComponentOnPageLoadAnimation']!),
                        wrapWithModel(
                          model: _model.createChapter1ComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CreateChapter1ComponentWidget(
                            refAutobiography:
                                columnAutobiographiesRecord.reference,
                            refUserChapters: widget.refUserChapters,
                            refAIChapters: widget.refAIChapters,
                          ),
                        ).animateOnPageLoad(animationsMap[
                            'createChapter1ComponentOnPageLoadAnimation']!),
                        wrapWithModel(
                          model: _model.createAuthorNameComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CreateAuthorNameComponentWidget(
                            refAutobiography: widget.refAutobiography,
                            refUserAutobiography: widget.refUserAutobiography,
                            refAIAutobiography: widget.refAIAutobiography,
                            refAIInstructions: widget.refAIInstructions,
                          ),
                        ).animateOnPageLoad(animationsMap[
                            'createAuthorNameComponentOnPageLoadAnimation']!),
                        wrapWithModel(
                          model: _model.createAuthorDOBComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child: CreateAuthorDOBComponentWidget(
                            refAutobiography: widget.refAutobiography,
                            refAIInstructions: widget.refAIInstructions,
                          ),
                        ).animateOnPageLoad(animationsMap[
                            'createAuthorDOBComponentOnPageLoadAnimation']!),
                        wrapWithModel(
                          model: _model
                              .createAuthorBackgroundInformationComponentModel,
                          updateCallback: () => safeSetState(() {}),
                          child:
                              CreateAuthorBackgroundInformationComponentWidget(
                            refAutobiography: widget.refAutobiography,
                            refAIInstructions: widget.refAIInstructions,
                          ),
                        ).animateOnPageLoad(animationsMap[
                            'createAuthorBackgroundInformationComponentOnPageLoadAnimation']!),
                      ],
                    );
                  },
                ),
              ),
            ]
                .addToStart(const SizedBox(height: 124.0))
                .addToEnd(const SizedBox(height: 124.0)),
          ),
        );
      },
    );
  }
}
