import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/autobiography_creation_page_header2/autobiography_creation_page_header2_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_front_cover_component/create_front_cover_component_widget.dart';
import 'autobiography_creation_page2_widget.dart'
    show AutobiographyCreationPage2Widget;
import 'package:flutter/material.dart';

class AutobiographyCreationPage2Model
    extends FlutterFlowModel<AutobiographyCreationPage2Widget> {
  ///  Local state fields for this page.

  bool textAutobiographyTitle = false;

  ///  State fields for stateful widgets in this page.

  // Model for AutobiographyCreationPageHeader2 component.
  late AutobiographyCreationPageHeader2Model
      autobiographyCreationPageHeader2Model;
  // Model for CreateFrontCoverComponent component.
  late CreateFrontCoverComponentModel createFrontCoverComponentModel;

  @override
  void initState(BuildContext context) {
    autobiographyCreationPageHeader2Model =
        createModel(context, () => AutobiographyCreationPageHeader2Model());
    createFrontCoverComponentModel =
        createModel(context, () => CreateFrontCoverComponentModel());
  }

  @override
  void dispose() {
    autobiographyCreationPageHeader2Model.dispose();
    createFrontCoverComponentModel.dispose();
  }
}
