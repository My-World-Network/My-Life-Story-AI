import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/autobiography_creation_page_header3/autobiography_creation_page_header3_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_autobiography_a_i_settings_component/create_autobiography_a_i_settings_component_widget.dart';
import 'autobiography_creation_page3_widget.dart'
    show AutobiographyCreationPage3Widget;
import 'package:flutter/material.dart';

class AutobiographyCreationPage3Model
    extends FlutterFlowModel<AutobiographyCreationPage3Widget> {
  ///  Local state fields for this page.

  bool textAutobiographyTitle = false;

  ///  State fields for stateful widgets in this page.

  // Model for AutobiographyCreationPageHeader3 component.
  late AutobiographyCreationPageHeader3Model
      autobiographyCreationPageHeader3Model;
  // Model for CreateAutobiographyAISettingsComponent component.
  late CreateAutobiographyAISettingsComponentModel
      createAutobiographyAISettingsComponentModel;

  @override
  void initState(BuildContext context) {
    autobiographyCreationPageHeader3Model =
        createModel(context, () => AutobiographyCreationPageHeader3Model());
    createAutobiographyAISettingsComponentModel = createModel(
        context, () => CreateAutobiographyAISettingsComponentModel());
  }

  @override
  void dispose() {
    autobiographyCreationPageHeader3Model.dispose();
    createAutobiographyAISettingsComponentModel.dispose();
  }
}
