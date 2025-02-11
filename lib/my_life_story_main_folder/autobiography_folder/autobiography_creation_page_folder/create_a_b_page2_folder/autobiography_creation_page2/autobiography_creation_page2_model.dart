import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page2_folder/autobiography_creation_page2_header/autobiography_creation_page2_header_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_a_b_page2_folder/create_front_cover_component/create_front_cover_component_widget.dart';
import 'autobiography_creation_page2_widget.dart'
    show AutobiographyCreationPage2Widget;
import 'package:flutter/material.dart';

class AutobiographyCreationPage2Model
    extends FlutterFlowModel<AutobiographyCreationPage2Widget> {
  ///  Local state fields for this page.

  bool textAutobiographyTitle = false;

  ///  State fields for stateful widgets in this page.

  // Model for CreateFrontCoverComponent component.
  late CreateFrontCoverComponentModel createFrontCoverComponentModel;
  // Model for AutobiographyCreationPage2Header component.
  late AutobiographyCreationPage2HeaderModel
      autobiographyCreationPage2HeaderModel;

  @override
  void initState(BuildContext context) {
    createFrontCoverComponentModel =
        createModel(context, () => CreateFrontCoverComponentModel());
    autobiographyCreationPage2HeaderModel =
        createModel(context, () => AutobiographyCreationPage2HeaderModel());
  }

  @override
  void dispose() {
    createFrontCoverComponentModel.dispose();
    autobiographyCreationPage2HeaderModel.dispose();
  }
}
