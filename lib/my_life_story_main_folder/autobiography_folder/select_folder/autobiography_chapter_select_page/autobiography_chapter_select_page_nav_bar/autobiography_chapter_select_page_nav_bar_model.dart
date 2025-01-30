import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'autobiography_chapter_select_page_nav_bar_widget.dart'
    show AutobiographyChapterSelectPageNavBarWidget;
import 'package:flutter/material.dart';

class AutobiographyChapterSelectPageNavBarModel
    extends FlutterFlowModel<AutobiographyChapterSelectPageNavBarWidget> {
  ///  Local state fields for this component.

  bool togglePlusButton = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<AutobiographiesRecord>? backendQueryAllAutobiographies;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
