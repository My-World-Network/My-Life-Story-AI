import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/main_components/create_new_autobiography_component/create_new_autobiography_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_select_page_folder/a_b_select_header_nav_bar_component/a_b_select_header_nav_bar_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_select_page_folder/autobiography_listing_component/autobiography_listing_component_widget.dart';
import 'autobiography_select_page_widget.dart'
    show AutobiographySelectPageWidget;
import 'package:flutter/material.dart';

class AutobiographySelectPageModel
    extends FlutterFlowModel<AutobiographySelectPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AutobiographyListingComponent component.
  late AutobiographyListingComponentModel autobiographyListingComponentModel;
  // Model for ABSelectHeaderNavBarComponent component.
  late ABSelectHeaderNavBarComponentModel aBSelectHeaderNavBarComponentModel;
  // Model for CreateNewAutobiographyComponent component.
  late CreateNewAutobiographyComponentModel
      createNewAutobiographyComponentModel;

  @override
  void initState(BuildContext context) {
    autobiographyListingComponentModel =
        createModel(context, () => AutobiographyListingComponentModel());
    aBSelectHeaderNavBarComponentModel =
        createModel(context, () => ABSelectHeaderNavBarComponentModel());
    createNewAutobiographyComponentModel =
        createModel(context, () => CreateNewAutobiographyComponentModel());
  }

  @override
  void dispose() {
    autobiographyListingComponentModel.dispose();
    aBSelectHeaderNavBarComponentModel.dispose();
    createNewAutobiographyComponentModel.dispose();
  }
}
