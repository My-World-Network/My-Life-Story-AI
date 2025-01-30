import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_select_page_folder/autobiography_select_page_nav_bar/autobiography_select_page_nav_bar_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_select_page_folder/create_new_autobiography_component2/create_new_autobiography_component2_widget.dart';
import 'autobiography_select_page_widget.dart'
    show AutobiographySelectPageWidget;
import 'package:flutter/material.dart';

class AutobiographySelectPageModel
    extends FlutterFlowModel<AutobiographySelectPageWidget> {
  ///  Local state fields for this page.

  String? deleteAutobiography;

  bool toggleCoverOn = false;

  bool toggleCoverOff = true;

  bool expandAutobiographySort = false;

  bool toggleSetCoverOn = false;

  bool toggleAutobiographySortTab = false;

  ///  State fields for stateful widgets in this page.

  List<AutobiographiesRecord>? autobiographySelectPagePreviousSnapshot;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Model for AutobiographySelectPageNavBar component.
  late AutobiographySelectPageNavBarModel autobiographySelectPageNavBarModel;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for CreateNewAutobiographyComponent2 component.
  late CreateNewAutobiographyComponent2Model
      createNewAutobiographyComponent2Model;

  @override
  void initState(BuildContext context) {
    autobiographySelectPageNavBarModel =
        createModel(context, () => AutobiographySelectPageNavBarModel());
    createNewAutobiographyComponent2Model =
        createModel(context, () => CreateNewAutobiographyComponent2Model());
  }

  @override
  void dispose() {
    autobiographySelectPageNavBarModel.dispose();
    createNewAutobiographyComponent2Model.dispose();
  }
}
