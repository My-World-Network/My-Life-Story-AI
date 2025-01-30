import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/autobiography_creation_page_header1/autobiography_creation_page_header1_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_autobiography_basic_information_component/create_autobiography_basic_information_component_widget.dart';
import 'autobiography_creation_page1_widget.dart'
    show AutobiographyCreationPage1Widget;
import 'package:flutter/material.dart';

class AutobiographyCreationPage1Model
    extends FlutterFlowModel<AutobiographyCreationPage1Widget> {
  ///  Local state fields for this page.

  bool textAutobiographyTitle = false;

  ///  State fields for stateful widgets in this page.

  // Model for CreateAutobiographyBasicInformationComponent component.
  late CreateAutobiographyBasicInformationComponentModel
      createAutobiographyBasicInformationComponentModel;
  // Model for AutobiographyCreationPageHeader1 component.
  late AutobiographyCreationPageHeader1Model
      autobiographyCreationPageHeader1Model;

  @override
  void initState(BuildContext context) {
    createAutobiographyBasicInformationComponentModel = createModel(
        context, () => CreateAutobiographyBasicInformationComponentModel());
    autobiographyCreationPageHeader1Model =
        createModel(context, () => AutobiographyCreationPageHeader1Model());
  }

  @override
  void dispose() {
    createAutobiographyBasicInformationComponentModel.dispose();
    autobiographyCreationPageHeader1Model.dispose();
  }
}
