import '/flutter_flow/flutter_flow_util.dart';
import 'create_chapter1_component_widget.dart'
    show CreateChapter1ComponentWidget;
import 'package:flutter/material.dart';

class CreateChapter1ComponentModel
    extends FlutterFlowModel<CreateChapter1ComponentWidget> {
  ///  Local state fields for this component.

  bool toggleExpandChapter1 = false;

  String? stringChapter1Title;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextChapterOne widget.
  FocusNode? textChapterOneFocusNode;
  TextEditingController? textChapterOneTextController;
  String? Function(BuildContext, String?)?
      textChapterOneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textChapterOneFocusNode?.dispose();
    textChapterOneTextController?.dispose();
  }
}
