import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/edit_folder/edit_autobiography_chapter_folder/edit_autobiography_chapter_header/edit_autobiography_chapter_header_widget.dart';
import 'edit_autobiography_chapter_page_widget.dart'
    show EditAutobiographyChapterPageWidget;
import 'package:flutter/material.dart';

class EditAutobiographyChapterPageModel
    extends FlutterFlowModel<EditAutobiographyChapterPageWidget> {
  ///  Local state fields for this page.

  bool toggleEditChapterContent = false;

  bool toggleEditChapterTitle = false;

  ///  State fields for stateful widgets in this page.

  // Model for EditAutobiographyChapterHeader component.
  late EditAutobiographyChapterHeaderModel editAutobiographyChapterHeaderModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - onReorderStringList] action in ChapterContentListView widget.
  List<String>? newAIChapterContentList;

  @override
  void initState(BuildContext context) {
    editAutobiographyChapterHeaderModel =
        createModel(context, () => EditAutobiographyChapterHeaderModel());
  }

  @override
  void dispose() {
    editAutobiographyChapterHeaderModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
