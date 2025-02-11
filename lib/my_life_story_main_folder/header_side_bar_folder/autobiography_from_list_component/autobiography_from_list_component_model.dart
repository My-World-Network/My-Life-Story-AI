import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/header_side_bar_folder/chapter_list_component/chapter_list_component_widget.dart';
import 'autobiography_from_list_component_widget.dart'
    show AutobiographyFromListComponentWidget;
import 'package:flutter/material.dart';

class AutobiographyFromListComponentModel
    extends FlutterFlowModel<AutobiographyFromListComponentWidget> {
  ///  Local state fields for this component.

  bool toggleABOpen = false;

  ///  State fields for stateful widgets in this component.

  // Model for ChapterListComponent component.
  late ChapterListComponentModel chapterListComponentModel;

  @override
  void initState(BuildContext context) {
    chapterListComponentModel =
        createModel(context, () => ChapterListComponentModel());
  }

  @override
  void dispose() {
    chapterListComponentModel.dispose();
  }
}
