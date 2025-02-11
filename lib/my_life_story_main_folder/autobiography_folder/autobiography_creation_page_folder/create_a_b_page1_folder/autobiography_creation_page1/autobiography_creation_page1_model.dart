import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/autobiography_creation_page1_header/autobiography_creation_page1_header_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page1_folder/create_autobiography_basic_information_component/create_autobiography_basic_information_component_widget.dart';
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
  // Model for AutobiographyCreationPage1Header component.
  late AutobiographyCreationPage1HeaderModel
      autobiographyCreationPage1HeaderModel;

  @override
  void initState(BuildContext context) {
    createAutobiographyBasicInformationComponentModel = createModel(
        context, () => CreateAutobiographyBasicInformationComponentModel());
    autobiographyCreationPage1HeaderModel =
        createModel(context, () => AutobiographyCreationPage1HeaderModel());
  }

  @override
  void dispose() {
    createAutobiographyBasicInformationComponentModel.dispose();
    autobiographyCreationPage1HeaderModel.dispose();
  }
}
