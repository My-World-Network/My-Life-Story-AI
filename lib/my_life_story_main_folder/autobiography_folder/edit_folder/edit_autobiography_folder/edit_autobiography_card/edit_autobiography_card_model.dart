import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/my_life_story_main_folder/autobiography_folder/edit_folder/edit_autobiography_folder/edit_front_cover_colour_select_component/edit_front_cover_colour_select_component_widget.dart';
import 'edit_autobiography_card_widget.dart' show EditAutobiographyCardWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class EditAutobiographyCardModel
    extends FlutterFlowModel<EditAutobiographyCardWidget> {
  ///  Local state fields for this component.

  bool toggleEditAutobiographyTitle = false;

  bool toggleAnimationAutobiographyTitleSet = false;

  bool toggleExpandColour = false;

  bool toggleExpandAISettings = false;

  bool toggleExpandChapters = false;

  bool toggleAudioConversation = false;

  bool toggleUserOpenAIKey = false;

  String? deleteAutobiographyTitle;

  int? oldChapterNumber;

  int? newChapterNumber;

  int? oldIndex;

  int? newIndex;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  AudioPlayer? soundPlayer1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  AudioPlayer? soundPlayer2;
  // Model for EditFrontCoverColourSelectComponent component.
  late EditFrontCoverColourSelectComponentModel
      editFrontCoverColourSelectComponentModel;
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
  // Stores action output result for [Backend Call - Read Document] action in ListView widget.
  AIChaptersRecord? readOldChapterNumber1;
  // Stores action output result for [Backend Call - Read Document] action in ListView widget.
  AIChaptersRecord? readNewChapterNumber1;

  @override
  void initState(BuildContext context) {
    editFrontCoverColourSelectComponentModel =
        createModel(context, () => EditFrontCoverColourSelectComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    editFrontCoverColourSelectComponentModel.dispose();
    textAccompanyFocusNode?.dispose();
    textAccompanyTextController?.dispose();

    textOpenAIAPIFocusNode?.dispose();
    textOpenAIAPITextController?.dispose();
  }
}
