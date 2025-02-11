import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/a_i_chapter_select_page/a_i_chapter_listing_component/a_i_chapter_listing_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/a_i_chapter_select_page/a_i_chapter_select_header_nav_bar_component/a_i_chapter_select_header_nav_bar_component_widget.dart';
import 'a_i_chapter_select_page_widget.dart' show AIChapterSelectPageWidget;
import 'package:flutter/material.dart';

class AIChapterSelectPageModel
    extends FlutterFlowModel<AIChapterSelectPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AIChapterListingComponent component.
  late AIChapterListingComponentModel aIChapterListingComponentModel;
  // Model for AIChapterSelectHeaderNavBarComponent component.
  late AIChapterSelectHeaderNavBarComponentModel
      aIChapterSelectHeaderNavBarComponentModel;

  @override
  void initState(BuildContext context) {
    aIChapterListingComponentModel =
        createModel(context, () => AIChapterListingComponentModel());
    aIChapterSelectHeaderNavBarComponentModel =
        createModel(context, () => AIChapterSelectHeaderNavBarComponentModel());
  }

  @override
  void dispose() {
    aIChapterListingComponentModel.dispose();
    aIChapterSelectHeaderNavBarComponentModel.dispose();
  }
}
