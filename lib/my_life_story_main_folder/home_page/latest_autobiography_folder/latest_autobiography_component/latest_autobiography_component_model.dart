import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/home_page/autobiography_cover_component/autobiography_cover_component_widget.dart';
import 'latest_autobiography_component_widget.dart'
    show LatestAutobiographyComponentWidget;
import 'package:flutter/material.dart';

class LatestAutobiographyComponentModel
    extends FlutterFlowModel<LatestAutobiographyComponentWidget> {
  ///  Local state fields for this component.

  bool toggleLatestABContentOpen = false;

  ///  State fields for stateful widgets in this component.

  // Model for AutobiographyCoverComponent component.
  late AutobiographyCoverComponentModel autobiographyCoverComponentModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {
    autobiographyCoverComponentModel =
        createModel(context, () => AutobiographyCoverComponentModel());
  }

  @override
  void dispose() {
    autobiographyCoverComponentModel.dispose();
  }
}
