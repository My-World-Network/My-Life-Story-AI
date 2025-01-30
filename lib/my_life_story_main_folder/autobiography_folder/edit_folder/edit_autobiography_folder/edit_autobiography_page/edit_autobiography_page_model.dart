import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/edit_folder/edit_autobiography_folder/edit_autobiography_card/edit_autobiography_card_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/edit_folder/edit_autobiography_folder/edit_autobiography_header/edit_autobiography_header_widget.dart';
import 'edit_autobiography_page_widget.dart' show EditAutobiographyPageWidget;
import 'package:flutter/material.dart';

class EditAutobiographyPageModel
    extends FlutterFlowModel<EditAutobiographyPageWidget> {
  ///  Local state fields for this page.

  bool selectAIResponseToggle = false;

  bool toggleContentExpand = false;

  bool toggleReferencesExpand = false;

  bool toggleDeleteResponsePopup = false;

  ///  State fields for stateful widgets in this page.

  // Model for EditAutobiographyHeader component.
  late EditAutobiographyHeaderModel editAutobiographyHeaderModel;
  // Model for EditAutobiographyCard component.
  late EditAutobiographyCardModel editAutobiographyCardModel;

  @override
  void initState(BuildContext context) {
    editAutobiographyHeaderModel =
        createModel(context, () => EditAutobiographyHeaderModel());
    editAutobiographyCardModel =
        createModel(context, () => EditAutobiographyCardModel());
  }

  @override
  void dispose() {
    editAutobiographyHeaderModel.dispose();
    editAutobiographyCardModel.dispose();
  }
}
