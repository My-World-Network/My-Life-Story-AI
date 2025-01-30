import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/home_page/create_new_autobiography_component/create_new_autobiography_component_widget.dart';
import '/my_life_story_main_folder/home_page/home_page_header_component/home_page_header_component_widget.dart';
import '/my_life_story_main_folder/home_page/home_page_nav_bar_component/home_page_nav_bar_component_widget.dart';
import '/my_life_story_main_folder/home_page/my_life_story_logo_home_page_component/my_life_story_logo_home_page_component_widget.dart';
import 'my_life_story_home_page_widget.dart' show MyLifeStoryHomePageWidget;
import 'package:flutter/material.dart';

class MyLifeStoryHomePageModel
    extends FlutterFlowModel<MyLifeStoryHomePageWidget> {
  ///  Local state fields for this page.

  bool togglePlusButtonOff = false;

  ///  State fields for stateful widgets in this page.

  // Model for HomePageHeaderComponent.
  late HomePageHeaderComponentModel homePageHeaderComponentModel;
  // Model for MyLifeStoryLogoHomePageComponent component.
  late MyLifeStoryLogoHomePageComponentModel
      myLifeStoryLogoHomePageComponentModel;
  // Model for CreateNewAutobiographyComponent component.
  late CreateNewAutobiographyComponentModel
      createNewAutobiographyComponentModel;
  // Model for HomePageNavBarComponent component.
  late HomePageNavBarComponentModel homePageNavBarComponentModel;

  @override
  void initState(BuildContext context) {
    homePageHeaderComponentModel =
        createModel(context, () => HomePageHeaderComponentModel());
    myLifeStoryLogoHomePageComponentModel =
        createModel(context, () => MyLifeStoryLogoHomePageComponentModel());
    createNewAutobiographyComponentModel =
        createModel(context, () => CreateNewAutobiographyComponentModel());
    homePageNavBarComponentModel =
        createModel(context, () => HomePageNavBarComponentModel());
  }

  @override
  void dispose() {
    homePageHeaderComponentModel.dispose();
    myLifeStoryLogoHomePageComponentModel.dispose();
    createNewAutobiographyComponentModel.dispose();
    homePageNavBarComponentModel.dispose();
  }
}
