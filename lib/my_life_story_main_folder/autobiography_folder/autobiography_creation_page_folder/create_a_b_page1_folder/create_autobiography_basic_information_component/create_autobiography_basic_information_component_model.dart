import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_author_background_information_component/create_author_background_information_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_author_d_o_b_component/create_author_d_o_b_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_author_name_component/create_author_name_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_autobiography_title_component/create_autobiography_title_component_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_chapter1_component/create_chapter1_component_widget.dart';
import 'create_autobiography_basic_information_component_widget.dart'
    show CreateAutobiographyBasicInformationComponentWidget;
import 'package:flutter/material.dart';

class CreateAutobiographyBasicInformationComponentModel
    extends FlutterFlowModel<
        CreateAutobiographyBasicInformationComponentWidget> {
  ///  Local state fields for this component.

  bool toggleExpandAutobiographyTitle = false;

  bool toggleExpandAuthorName = false;

  bool toggleExpandAuthorBackground = false;

  bool? toggleExpandChapter1 = false;

  bool toggleExpandAuthorDOB = false;

  String? stringABTitle;

  String? stringChapterTitle;

  String? stringAuthorName;

  DateTime? stringAuthorDOB;

  ///  State fields for stateful widgets in this component.

  // Model for CreateAutobiographyTitleComponent component.
  late CreateAutobiographyTitleComponentModel
      createAutobiographyTitleComponentModel;
  // Model for CreateChapter1Component component.
  late CreateChapter1ComponentModel createChapter1ComponentModel;
  // Model for CreateAuthorNameComponent component.
  late CreateAuthorNameComponentModel createAuthorNameComponentModel;
  // Model for CreateAuthorDOBComponent component.
  late CreateAuthorDOBComponentModel createAuthorDOBComponentModel;
  // Model for CreateAuthorBackgroundInformationComponent component.
  late CreateAuthorBackgroundInformationComponentModel
      createAuthorBackgroundInformationComponentModel;

  @override
  void initState(BuildContext context) {
    createAutobiographyTitleComponentModel =
        createModel(context, () => CreateAutobiographyTitleComponentModel());
    createChapter1ComponentModel =
        createModel(context, () => CreateChapter1ComponentModel());
    createAuthorNameComponentModel =
        createModel(context, () => CreateAuthorNameComponentModel());
    createAuthorDOBComponentModel =
        createModel(context, () => CreateAuthorDOBComponentModel());
    createAuthorBackgroundInformationComponentModel = createModel(
        context, () => CreateAuthorBackgroundInformationComponentModel());
  }

  @override
  void dispose() {
    createAutobiographyTitleComponentModel.dispose();
    createChapter1ComponentModel.dispose();
    createAuthorNameComponentModel.dispose();
    createAuthorDOBComponentModel.dispose();
    createAuthorBackgroundInformationComponentModel.dispose();
  }
}
