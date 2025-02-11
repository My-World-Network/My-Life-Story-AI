import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/main_components/create_new_autobiography_component/create_new_autobiography_component_widget.dart';
import '/my_life_story_main_folder/home_page/home_page_header_nav_bar_component/home_page_header_nav_bar_component_widget.dart';
import '/my_life_story_main_folder/home_page/latest_autobiography_folder/latest_autobiography_component/latest_autobiography_component_widget.dart';
import 'my_life_story_home_page_widget.dart' show MyLifeStoryHomePageWidget;
import 'package:flutter/material.dart';

class MyLifeStoryHomePageModel
    extends FlutterFlowModel<MyLifeStoryHomePageWidget> {
  ///  Local state fields for this page.

  bool togglePlusButtonOff = false;

  bool toggleStep1Open = false;

  bool toggleStep2Open = false;

  bool toggleStep3Open = false;

  ///  State fields for stateful widgets in this page.

  // Model for LatestAutobiographyComponent component.
  late LatestAutobiographyComponentModel latestAutobiographyComponentModel;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AutobiographiesRecord? backendCreateAutobiography1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserChaptersRecord? backendCreateUserChapters1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserAutobiographyRecord? backendCreateUserAutobiography1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AIChaptersRecord? backendCreateAIChapters1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AIAutobiographyRecord? backendCreateAIAutobiography1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AIInstructionsRecord? backendCreateAIInstructions1;
  // Model for HomePageHeaderComponent.
  late HomePageHeaderNavBarComponentModel homePageHeaderComponentModel;
  // Model for CreateNewAutobiographyComponent component.
  late CreateNewAutobiographyComponentModel
      createNewAutobiographyComponentModel;

  @override
  void initState(BuildContext context) {
    latestAutobiographyComponentModel =
        createModel(context, () => LatestAutobiographyComponentModel());
    homePageHeaderComponentModel =
        createModel(context, () => HomePageHeaderNavBarComponentModel());
    createNewAutobiographyComponentModel =
        createModel(context, () => CreateNewAutobiographyComponentModel());
  }

  @override
  void dispose() {
    latestAutobiographyComponentModel.dispose();
    homePageHeaderComponentModel.dispose();
    createNewAutobiographyComponentModel.dispose();
  }
}
