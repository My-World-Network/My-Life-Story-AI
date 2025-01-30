import '/flutter_flow/flutter_flow_util.dart';
import 'edit_chapter_content_component_widget.dart'
    show EditChapterContentComponentWidget;
import 'package:flutter/material.dart';

class EditChapterContentComponentModel
    extends FlutterFlowModel<EditChapterContentComponentWidget> {
  ///  Local state fields for this component.

  bool toggleEditChapterContent = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
