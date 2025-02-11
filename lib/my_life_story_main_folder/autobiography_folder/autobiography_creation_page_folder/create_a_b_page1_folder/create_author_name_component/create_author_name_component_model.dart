import '/flutter_flow/flutter_flow_util.dart';
import 'create_author_name_component_widget.dart'
    show CreateAuthorNameComponentWidget;
import 'package:flutter/material.dart';

class CreateAuthorNameComponentModel
    extends FlutterFlowModel<CreateAuthorNameComponentWidget> {
  ///  Local state fields for this component.

  bool toggleExpandAuthorName = false;

  String? stringAuthorName;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextAuthorName widget.
  FocusNode? textAuthorNameFocusNode;
  TextEditingController? textAuthorNameTextController;
  String? Function(BuildContext, String?)?
      textAuthorNameTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textAuthorNameFocusNode?.dispose();
    textAuthorNameTextController?.dispose();
  }
}
