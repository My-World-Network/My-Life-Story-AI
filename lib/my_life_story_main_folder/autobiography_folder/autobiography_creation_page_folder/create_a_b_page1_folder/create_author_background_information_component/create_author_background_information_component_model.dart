import '/flutter_flow/flutter_flow_util.dart';
import 'create_author_background_information_component_widget.dart'
    show CreateAuthorBackgroundInformationComponentWidget;
import 'package:flutter/material.dart';

class CreateAuthorBackgroundInformationComponentModel
    extends FlutterFlowModel<CreateAuthorBackgroundInformationComponentWidget> {
  ///  Local state fields for this component.

  bool toggleExpandAuthorBG = false;

  String? stringSig1Name;

  String? stringSig1Relation;

  String? stringSig1Content;

  String? stringSig2Name;

  String? stringSig2Relation;

  String? stringSig2Content;

  String? stringSig3Name;

  String? stringSig3Relation;

  String? stringSig3Content;

  bool toggleExpandPerson1 = false;

  bool toggleExpandPerson2 = false;

  bool toggleExpandPerson3 = false;

  bool togglePerson1Saved = true;

  bool togglePerson2Saved = true;

  bool togglePerson3Saved = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Person1NameTextInput widget.
  FocusNode? person1NameTextInputFocusNode;
  TextEditingController? person1NameTextInputTextController;
  String? Function(BuildContext, String?)?
      person1NameTextInputTextControllerValidator;
  // State field(s) for Person1RelationTextInput widget.
  FocusNode? person1RelationTextInputFocusNode;
  TextEditingController? person1RelationTextInputTextController;
  String? Function(BuildContext, String?)?
      person1RelationTextInputTextControllerValidator;
  // State field(s) for Person1ContentTextInput widget.
  FocusNode? person1ContentTextInputFocusNode;
  TextEditingController? person1ContentTextInputTextController;
  String? Function(BuildContext, String?)?
      person1ContentTextInputTextControllerValidator;
  // State field(s) for Person2NameTextInput widget.
  FocusNode? person2NameTextInputFocusNode;
  TextEditingController? person2NameTextInputTextController;
  String? Function(BuildContext, String?)?
      person2NameTextInputTextControllerValidator;
  // State field(s) for Person2RelationTextInput widget.
  FocusNode? person2RelationTextInputFocusNode;
  TextEditingController? person2RelationTextInputTextController;
  String? Function(BuildContext, String?)?
      person2RelationTextInputTextControllerValidator;
  // State field(s) for Person2ContentTextInput widget.
  FocusNode? person2ContentTextInputFocusNode;
  TextEditingController? person2ContentTextInputTextController;
  String? Function(BuildContext, String?)?
      person2ContentTextInputTextControllerValidator;
  // State field(s) for Person3NameTextInput widget.
  FocusNode? person3NameTextInputFocusNode;
  TextEditingController? person3NameTextInputTextController;
  String? Function(BuildContext, String?)?
      person3NameTextInputTextControllerValidator;
  // State field(s) for Person3RelationTextInput widget.
  FocusNode? person3RelationTextInputFocusNode;
  TextEditingController? person3RelationTextInputTextController;
  String? Function(BuildContext, String?)?
      person3RelationTextInputTextControllerValidator;
  // State field(s) for Person3ContentTextInput widget.
  FocusNode? person3ContentTextInputFocusNode;
  TextEditingController? person3ContentTextInputTextController;
  String? Function(BuildContext, String?)?
      person3ContentTextInputTextControllerValidator;
  // State field(s) for TextAuthorBackgroundInfo widget.
  FocusNode? textAuthorBackgroundInfoFocusNode;
  TextEditingController? textAuthorBackgroundInfoTextController;
  String? Function(BuildContext, String?)?
      textAuthorBackgroundInfoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    person1NameTextInputFocusNode?.dispose();
    person1NameTextInputTextController?.dispose();

    person1RelationTextInputFocusNode?.dispose();
    person1RelationTextInputTextController?.dispose();

    person1ContentTextInputFocusNode?.dispose();
    person1ContentTextInputTextController?.dispose();

    person2NameTextInputFocusNode?.dispose();
    person2NameTextInputTextController?.dispose();

    person2RelationTextInputFocusNode?.dispose();
    person2RelationTextInputTextController?.dispose();

    person2ContentTextInputFocusNode?.dispose();
    person2ContentTextInputTextController?.dispose();

    person3NameTextInputFocusNode?.dispose();
    person3NameTextInputTextController?.dispose();

    person3RelationTextInputFocusNode?.dispose();
    person3RelationTextInputTextController?.dispose();

    person3ContentTextInputFocusNode?.dispose();
    person3ContentTextInputTextController?.dispose();

    textAuthorBackgroundInfoFocusNode?.dispose();
    textAuthorBackgroundInfoTextController?.dispose();
  }
}
