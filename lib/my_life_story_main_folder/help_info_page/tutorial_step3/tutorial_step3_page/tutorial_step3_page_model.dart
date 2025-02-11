import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step3/tutorial_step3_component/tutorial_step3_component_widget.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step3/tutorial_step3_header/tutorial_step3_header_widget.dart';
import '/my_life_story_main_folder/help_info_page/tutorial_step3/tutorial_step3_nav_bar/tutorial_step3_nav_bar_widget.dart';
import 'tutorial_step3_page_widget.dart' show TutorialStep3PageWidget;
import 'package:flutter/material.dart';

class TutorialStep3PageModel extends FlutterFlowModel<TutorialStep3PageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TutorialStep3Component component.
  late TutorialStep3ComponentModel tutorialStep3ComponentModel;
  // Model for TutorialStep3Header component.
  late TutorialStep3HeaderModel tutorialStep3HeaderModel;
  // Model for TutorialStep3NavBar component.
  late TutorialStep3NavBarModel tutorialStep3NavBarModel;

  @override
  void initState(BuildContext context) {
    tutorialStep3ComponentModel =
        createModel(context, () => TutorialStep3ComponentModel());
    tutorialStep3HeaderModel =
        createModel(context, () => TutorialStep3HeaderModel());
    tutorialStep3NavBarModel =
        createModel(context, () => TutorialStep3NavBarModel());
  }

  @override
  void dispose() {
    tutorialStep3ComponentModel.dispose();
    tutorialStep3HeaderModel.dispose();
    tutorialStep3NavBarModel.dispose();
  }
}
