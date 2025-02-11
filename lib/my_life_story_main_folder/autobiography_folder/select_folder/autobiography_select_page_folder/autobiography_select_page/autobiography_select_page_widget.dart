import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/main_components/create_new_autobiography_component/create_new_autobiography_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_select_page_folder/a_b_select_header_nav_bar_component/a_b_select_header_nav_bar_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_select_page_folder/autobiography_listing_component/autobiography_listing_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'autobiography_select_page_model.dart';
export 'autobiography_select_page_model.dart';

class AutobiographySelectPageWidget extends StatefulWidget {
  const AutobiographySelectPageWidget({super.key});

  @override
  State<AutobiographySelectPageWidget> createState() =>
      _AutobiographySelectPageWidgetState();
}

class _AutobiographySelectPageWidgetState
    extends State<AutobiographySelectPageWidget> with TickerProviderStateMixin {
  late AutobiographySelectPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographySelectPageModel());

    animationsMap.addAll({
      'autobiographyListingComponentOnPageLoadAnimation': AnimationInfo(
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF1F4F8),
        body: Stack(
          children: [
            wrapWithModel(
              model: _model.autobiographyListingComponentModel,
              updateCallback: () => safeSetState(() {}),
              child: const AutobiographyListingComponentWidget(),
            ).animateOnPageLoad(animationsMap[
                'autobiographyListingComponentOnPageLoadAnimation']!),
            wrapWithModel(
              model: _model.aBSelectHeaderNavBarComponentModel,
              updateCallback: () => safeSetState(() {}),
              child: const ABSelectHeaderNavBarComponentWidget(),
            ),
            if (FFAppState().createAutobiographyButtonHomePage == true)
              wrapWithModel(
                model: _model.createNewAutobiographyComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: const CreateNewAutobiographyComponentWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
