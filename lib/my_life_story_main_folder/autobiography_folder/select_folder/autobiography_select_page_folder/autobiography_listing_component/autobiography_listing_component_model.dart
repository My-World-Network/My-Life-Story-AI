import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'autobiography_listing_component_widget.dart'
    show AutobiographyListingComponentWidget;
import 'package:flutter/material.dart';

class AutobiographyListingComponentModel
    extends FlutterFlowModel<AutobiographyListingComponentWidget> {
  ///  Local state fields for this component.

  bool toggleABCoverOn = false;

  bool toggleABCoverIsSetOn = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
