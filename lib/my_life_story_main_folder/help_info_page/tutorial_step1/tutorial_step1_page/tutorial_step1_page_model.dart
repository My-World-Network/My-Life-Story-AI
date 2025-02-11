import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step1/tutorial_step1_component/tutorial_step1_component_widget.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step1/tutorial_step1_header/tutorial_step1_header_widget.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step1/tutorial_step1_nav_bar/tutorial_step1_nav_bar_widget.dart';
import 'tutorial_step1_page_widget.dart' show TutorialStep1PageWidget;
import 'package:flutter/material.dart';

class TutorialStep1PageModel extends FlutterFlowModel<TutorialStep1PageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TutorialStep1Component component.
  late TutorialStep1ComponentModel tutorialStep1ComponentModel;
  // Model for TutorialStep1Header component.
  late TutorialStep1HeaderModel tutorialStep1HeaderModel;
  // Model for TutorialStep1NavBar component.
  late TutorialStep1NavBarModel tutorialStep1NavBarModel;

  @override
  void initState(BuildContext context) {
    tutorialStep1ComponentModel =
        createModel(context, () => TutorialStep1ComponentModel());
    tutorialStep1HeaderModel =
        createModel(context, () => TutorialStep1HeaderModel());
    tutorialStep1NavBarModel =
        createModel(context, () => TutorialStep1NavBarModel());
  }

  @override
  void dispose() {
    tutorialStep1ComponentModel.dispose();
    tutorialStep1HeaderModel.dispose();
    tutorialStep1NavBarModel.dispose();
  }
}
