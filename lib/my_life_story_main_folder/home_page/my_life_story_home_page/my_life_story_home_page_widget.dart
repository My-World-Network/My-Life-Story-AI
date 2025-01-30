import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/home_page/create_new_autobiography_component/create_new_autobiography_component_widget.dart';
import '/my_life_story_main_folder/home_page/home_page_header_component/home_page_header_component_widget.dart';
import '/my_life_story_main_folder/home_page/home_page_nav_bar_component/home_page_nav_bar_component_widget.dart';
import '/my_life_story_main_folder/home_page/my_life_story_logo_home_page_component/my_life_story_logo_home_page_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'my_life_story_home_page_model.dart';
export 'my_life_story_home_page_model.dart';

class MyLifeStoryHomePageWidget extends StatefulWidget {
  const MyLifeStoryHomePageWidget({
    super.key,
    this.refAutobiography,
    this.refUserChapter,
    this.refAIChapter,
    this.refUserAutobiography,
    this.refAIAutobiography,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserChapter;
  final DocumentReference? refAIChapter;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIAutobiography;

  @override
  State<MyLifeStoryHomePageWidget> createState() =>
      _MyLifeStoryHomePageWidgetState();
}

class _MyLifeStoryHomePageWidgetState extends State<MyLifeStoryHomePageWidget>
    with TickerProviderStateMixin {
  late MyLifeStoryHomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyLifeStoryHomePageModel());

    animationsMap.addAll({
      'homePageHeaderComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'myLifeStoryLogoHomePageComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 310.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'createNewAutobiographyComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 150.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'homePageNavBarComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFC3DAEC),
          ),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    wrapWithModel(
                      model: _model.homePageHeaderComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const HomePageHeaderComponentWidget(),
                    ).animateOnPageLoad(animationsMap[
                        'homePageHeaderComponentOnPageLoadAnimation']!),
                    wrapWithModel(
                      model: _model.myLifeStoryLogoHomePageComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const MyLifeStoryLogoHomePageComponentWidget(),
                    ).animateOnPageLoad(animationsMap[
                        'myLifeStoryLogoHomePageComponentOnPageLoadAnimation']!),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      const Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (FFAppState().createAutobiographyButtonHomePage == true)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: wrapWithModel(
                        model: _model.createNewAutobiographyComponentModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const CreateNewAutobiographyComponentWidget(),
                      ).animateOnPageLoad(animationsMap[
                          'createNewAutobiographyComponentOnPageLoadAnimation']!),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    wrapWithModel(
                      model: _model.homePageNavBarComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const HomePageNavBarComponentWidget(),
                    ).animateOnPageLoad(animationsMap[
                        'homePageNavBarComponentOnPageLoadAnimation']!),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
