import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/a_i_chapter_select_page/a_i_chapter_listing_component/a_i_chapter_listing_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/a_i_chapter_select_page/a_i_chapter_select_header_nav_bar_component/a_i_chapter_select_header_nav_bar_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'a_i_chapter_select_page_model.dart';
export 'a_i_chapter_select_page_model.dart';

class AIChapterSelectPageWidget extends StatefulWidget {
  const AIChapterSelectPageWidget({
    super.key,
    required this.refAutobiography,
  });

  final DocumentReference? refAutobiography;

  @override
  State<AIChapterSelectPageWidget> createState() =>
      _AIChapterSelectPageWidgetState();
}

class _AIChapterSelectPageWidgetState extends State<AIChapterSelectPageWidget>
    with TickerProviderStateMixin {
  late AIChapterSelectPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIChapterSelectPageModel());

    animationsMap.addAll({
      'aIChapterListingComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 740.0.ms,
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            wrapWithModel(
              model: _model.aIChapterListingComponentModel,
              updateCallback: () => safeSetState(() {}),
              child: AIChapterListingComponentWidget(
                refAutobiography: widget.refAutobiography,
              ),
            ).animateOnPageLoad(
                animationsMap['aIChapterListingComponentOnPageLoadAnimation']!),
            wrapWithModel(
              model: _model.aIChapterSelectHeaderNavBarComponentModel,
              updateCallback: () => safeSetState(() {}),
              child: const AIChapterSelectHeaderNavBarComponentWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
