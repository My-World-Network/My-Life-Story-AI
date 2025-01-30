import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'autobiography_generating_page_header_widget.dart'
    show AutobiographyGeneratingPageHeaderWidget;
import 'package:flutter/material.dart';

class AutobiographyGeneratingPageHeaderModel
    extends FlutterFlowModel<AutobiographyGeneratingPageHeaderWidget> {
  ///  Local state fields for this component.

  bool toggleChapterSelect = false;

  bool toggleAddChapter = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - getDocRefFromID] action in DropDown widget.
  DocumentReference? customActionGetChapterRef;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  AIChaptersRecord? backendCreateNewChapter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
