import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_autobiography_a_i_settings_component_widget.dart'
    show CreateAutobiographyAISettingsComponentWidget;
import 'package:flutter/material.dart';

class CreateAutobiographyAISettingsComponentModel
    extends FlutterFlowModel<CreateAutobiographyAISettingsComponentWidget> {
  ///  Local state fields for this component.

  bool toggleAudioConversation = false;

  bool toggleUserOpenAIAPI = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for AudioConversationToggle widget.
  bool? audioConversationToggleValue;
  // State field(s) for TextAccompany widget.
  FocusNode? textAccompanyFocusNode;
  TextEditingController? textAccompanyTextController;
  String? Function(BuildContext, String?)? textAccompanyTextControllerValidator;
  // State field(s) for UserOwnOpenAIAPIToggle widget.
  bool? userOwnOpenAIAPIToggleValue;
  // State field(s) for TextOpenAIAPI widget.
  FocusNode? textOpenAIAPIFocusNode;
  TextEditingController? textOpenAIAPITextController;
  String? Function(BuildContext, String?)? textOpenAIAPITextControllerValidator;
  // State field(s) for AIModelDropDown widget.
  String? aIModelDropDownValue;
  FormFieldController<String>? aIModelDropDownValueController;
  // State field(s) for AITypeDropDown widget.
  String? aITypeDropDownValue;
  FormFieldController<String>? aITypeDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textAccompanyFocusNode?.dispose();
    textAccompanyTextController?.dispose();

    textOpenAIAPIFocusNode?.dispose();
    textOpenAIAPITextController?.dispose();
  }
}
