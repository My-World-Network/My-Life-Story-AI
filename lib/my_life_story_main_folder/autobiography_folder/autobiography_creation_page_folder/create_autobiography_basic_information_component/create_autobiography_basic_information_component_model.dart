import '/flutter_flow/flutter_flow_util.dart';
import 'create_autobiography_basic_information_component_widget.dart'
    show CreateAutobiographyBasicInformationComponentWidget;
import 'package:flutter/material.dart';

class CreateAutobiographyBasicInformationComponentModel
    extends FlutterFlowModel<
        CreateAutobiographyBasicInformationComponentWidget> {
  ///  Local state fields for this component.

  bool toggleAutobiographyTitleSet = false;

  bool toggleAuthorNameSet = false;

  bool toggleAuthorBackgroundSet = false;

  bool? toggleChapterSet = false;

  bool toggleAuthorDOBSet = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextABTitle widget.
  FocusNode? textABTitleFocusNode;
  TextEditingController? textABTitleTextController;
  String? Function(BuildContext, String?)? textABTitleTextControllerValidator;
  // State field(s) for TextChapterOne widget.
  FocusNode? textChapterOneFocusNode;
  TextEditingController? textChapterOneTextController;
  String? Function(BuildContext, String?)?
      textChapterOneTextControllerValidator;
  // State field(s) for TextAuthorName widget.
  FocusNode? textAuthorNameFocusNode;
  TextEditingController? textAuthorNameTextController;
  String? Function(BuildContext, String?)?
      textAuthorNameTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for TextAuthorBackgroundInfo widget.
  FocusNode? textAuthorBackgroundInfoFocusNode;
  TextEditingController? textAuthorBackgroundInfoTextController;
  String? Function(BuildContext, String?)?
      textAuthorBackgroundInfoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textABTitleFocusNode?.dispose();
    textABTitleTextController?.dispose();

    textChapterOneFocusNode?.dispose();
    textChapterOneTextController?.dispose();

    textAuthorNameFocusNode?.dispose();
    textAuthorNameTextController?.dispose();

    textAuthorBackgroundInfoFocusNode?.dispose();
    textAuthorBackgroundInfoTextController?.dispose();
  }
}
