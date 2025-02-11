import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step2/tutorial_step2_component/tutorial_step2_component_widget.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step2/tutorial_step2_header/tutorial_step2_header_widget.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step2/tutorial_step2_nav_bar/tutorial_step2_nav_bar_widget.dart';
import 'tutorial_step2_page_widget.dart' show TutorialStep2PageWidget;
import 'package:flutter/material.dart';

class TutorialStep2PageModel extends FlutterFlowModel<TutorialStep2PageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TutorialStep2Component component.
  late TutorialStep2ComponentModel tutorialStep2ComponentModel;
  // Model for TutorialStep2Header component.
  late TutorialStep2HeaderModel tutorialStep2HeaderModel;
  // Model for TutorialStep2NavBar component.
  late TutorialStep2NavBarModel tutorialStep2NavBarModel;

  @override
  void initState(BuildContext context) {
    tutorialStep2ComponentModel =
        createModel(context, () => TutorialStep2ComponentModel());
    tutorialStep2HeaderModel =
        createModel(context, () => TutorialStep2HeaderModel());
    tutorialStep2NavBarModel =
        createModel(context, () => TutorialStep2NavBarModel());
  }

  @override
  void dispose() {
    tutorialStep2ComponentModel.dispose();
    tutorialStep2HeaderModel.dispose();
    tutorialStep2NavBarModel.dispose();
  }
}
