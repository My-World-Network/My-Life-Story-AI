import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step2/tutorial_step2_component/tutorial_step2_component_widget.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step2/tutorial_step2_header/tutorial_step2_header_widget.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step2/tutorial_step2_nav_bar/tutorial_step2_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'tutorial_step2_page_model.dart';
export 'tutorial_step2_page_model.dart';

class TutorialStep2PageWidget extends StatefulWidget {
  const TutorialStep2PageWidget({super.key});

  @override
  State<TutorialStep2PageWidget> createState() =>
      _TutorialStep2PageWidgetState();
}

class _TutorialStep2PageWidgetState extends State<TutorialStep2PageWidget>
    with TickerProviderStateMixin {
  late TutorialStep2PageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TutorialStep2PageModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
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
      'columnOnPageLoadAnimation2': AnimationInfo(
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
      'columnOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
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
        backgroundColor: const Color(0xFFC6D9E1),
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.tutorialStep2ComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const TutorialStep2ComponentWidget(),
                ),
              ].addToStart(SizedBox(height: () {
                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                  return 92.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointMedium) {
                  return 92.0;
                } else if (MediaQuery.sizeOf(context).width <
                    kBreakpointLarge) {
                  return 92.0;
                } else {
                  return 116.0;
                }
              }())),
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation1']!),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: wrapWithModel(
                    model: _model.tutorialStep2HeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const TutorialStep2HeaderWidget(),
                  ),
                ),
              ],
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation2']!),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                wrapWithModel(
                  model: _model.tutorialStep2NavBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const Hero(
                    tag: 'TestHeroTag',
                    transitionOnUserGestures: true,
                    child: Material(
                      color: Colors.transparent,
                      child: TutorialStep2NavBarWidget(),
                    ),
                  ),
                ),
              ],
            ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation3']!),
          ],
        ),
      ),
    );
  }
}
