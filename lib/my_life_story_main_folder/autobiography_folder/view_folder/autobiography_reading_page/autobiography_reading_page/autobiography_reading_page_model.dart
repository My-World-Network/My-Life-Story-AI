import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/view_folder/autobiography_reading_page/read_autobiography_header/read_autobiography_header_widget.dart';
import 'autobiography_reading_page_widget.dart'
    show AutobiographyReadingPageWidget;
import 'package:flutter/material.dart';

class AutobiographyReadingPageModel
    extends FlutterFlowModel<AutobiographyReadingPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ReadAutobiographyHeader component.
  late ReadAutobiographyHeaderModel readAutobiographyHeaderModel;

  @override
  void initState(BuildContext context) {
    readAutobiographyHeaderModel =
        createModel(context, () => ReadAutobiographyHeaderModel());
  }

  @override
  void dispose() {
    readAutobiographyHeaderModel.dispose();
  }
}
