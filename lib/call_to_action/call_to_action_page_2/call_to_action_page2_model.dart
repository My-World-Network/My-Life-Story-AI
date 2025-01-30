import '/call_to_action/my_life_story_logo_component/my_life_story_logo_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'call_to_action_page2_widget.dart' show CallToActionPage2Widget;
import 'package:flutter/material.dart';

class CallToActionPage2Model extends FlutterFlowModel<CallToActionPage2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for MyLifeStoryLogoComponent component.
  late MyLifeStoryLogoComponentModel myLifeStoryLogoComponentModel;

  @override
  void initState(BuildContext context) {
    myLifeStoryLogoComponentModel =
        createModel(context, () => MyLifeStoryLogoComponentModel());
  }

  @override
  void dispose() {
    myLifeStoryLogoComponentModel.dispose();
  }
}
