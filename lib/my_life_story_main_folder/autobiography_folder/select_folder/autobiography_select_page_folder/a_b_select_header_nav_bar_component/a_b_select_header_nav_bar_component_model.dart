import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/header_side_bar_folder/autobiography_list_component/autobiography_list_component_widget.dart';
import 'a_b_select_header_nav_bar_component_widget.dart'
    show ABSelectHeaderNavBarComponentWidget;
import 'package:flutter/material.dart';

class ABSelectHeaderNavBarComponentModel
    extends FlutterFlowModel<ABSelectHeaderNavBarComponentWidget> {
  ///  Local state fields for this component.

  bool toggleSideBarOpen = false;

  bool toggleSideBarABListOpen = false;

  ///  State fields for stateful widgets in this component.

  // Model for AutobiographyListComponent component.
  late AutobiographyListComponentModel autobiographyListComponentModel1;
  // Model for AutobiographyListComponent component.
  late AutobiographyListComponentModel autobiographyListComponentModel2;

  @override
  void initState(BuildContext context) {
    autobiographyListComponentModel1 =
        createModel(context, () => AutobiographyListComponentModel());
    autobiographyListComponentModel2 =
        createModel(context, () => AutobiographyListComponentModel());
  }

  @override
  void dispose() {
    autobiographyListComponentModel1.dispose();
    autobiographyListComponentModel2.dispose();
  }
}
