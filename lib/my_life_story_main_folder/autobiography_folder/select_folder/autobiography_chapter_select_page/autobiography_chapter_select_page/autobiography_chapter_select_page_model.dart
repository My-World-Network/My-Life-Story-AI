import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/my_life_story_main_folder/autobiography_folder/select_folder/autobiography_chapter_select_page/autobiography_chapter_select_page_nav_bar/autobiography_chapter_select_page_nav_bar_widget.dart';
import 'autobiography_chapter_select_page_widget.dart'
    show AutobiographyChapterSelectPageWidget;
import 'package:flutter/material.dart';

class AutobiographyChapterSelectPageModel
    extends FlutterFlowModel<AutobiographyChapterSelectPageWidget> {
  ///  Local state fields for this page.

  bool sortChapters = false;

  bool expandChapters = false;

  int? oldIndex;

  int? newIndex;

  int? oldChapter;

  int? newChapter;

  bool toggleAddNewChapter = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  AIChaptersRecord? backendCreateChapter;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - Read Document] action in ListView widget.
  AIChaptersRecord? readOldChapterNumber1;
  // Stores action output result for [Backend Call - Read Document] action in ListView widget.
  AIChaptersRecord? readNewChapterNumber1;
  // Model for AutobiographyChapterSelectPageNavBar component.
  late AutobiographyChapterSelectPageNavBarModel
      autobiographyChapterSelectPageNavBarModel;

  @override
  void initState(BuildContext context) {
    autobiographyChapterSelectPageNavBarModel =
        createModel(context, () => AutobiographyChapterSelectPageNavBarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    autobiographyChapterSelectPageNavBarModel.dispose();
  }
}
