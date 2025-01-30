import '/call_to_action/my_world_network_logo/my_world_network_logo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'call_to_action_page1_widget.dart' show CallToActionPage1Widget;
import 'package:flutter/material.dart';

class CallToActionPage1Model extends FlutterFlowModel<CallToActionPage1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for MyWorldNetworkLogo component.
  late MyWorldNetworkLogoModel myWorldNetworkLogoModel;

  @override
  void initState(BuildContext context) {
    myWorldNetworkLogoModel =
        createModel(context, () => MyWorldNetworkLogoModel());
  }

  @override
  void dispose() {
    myWorldNetworkLogoModel.dispose();
  }
}
