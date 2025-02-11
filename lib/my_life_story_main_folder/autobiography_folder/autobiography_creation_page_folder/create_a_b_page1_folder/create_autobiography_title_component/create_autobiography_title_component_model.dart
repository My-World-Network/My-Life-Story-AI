import '/flutter_flow/flutter_flow_util.dart';
import 'create_autobiography_title_component_widget.dart'
    show CreateAutobiographyTitleComponentWidget;
import 'package:flutter/material.dart';

class CreateAutobiographyTitleComponentModel
    extends FlutterFlowModel<CreateAutobiographyTitleComponentWidget> {
  ///  Local state fields for this component.

  bool toggleExpandABTitle = false;

  String? stringAutobiographyTitle;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextABTitle widget.
  FocusNode? textABTitleFocusNode;
  TextEditingController? textABTitleTextController;
  String? Function(BuildContext, String?)? textABTitleTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textABTitleFocusNode?.dispose();
    textABTitleTextController?.dispose();
  }
}
