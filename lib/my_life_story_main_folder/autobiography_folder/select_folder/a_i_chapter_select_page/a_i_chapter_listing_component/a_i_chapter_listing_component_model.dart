import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'a_i_chapter_listing_component_widget.dart'
    show AIChapterListingComponentWidget;
import 'package:flutter/material.dart';

class AIChapterListingComponentModel
    extends FlutterFlowModel<AIChapterListingComponentWidget> {
  ///  Local state fields for this component.

  bool toggleChapterReorder = false;

  String? stringSortChapterBy;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
