import '/flutter_flow/flutter_flow_util.dart';
import '/profile_folder/profile_page_folder/profile_page_header/profile_page_header_widget.dart';
import 'profile_settings_page_widget.dart' show ProfileSettingsPageWidget;
import 'package:flutter/material.dart';

class ProfileSettingsPageModel
    extends FlutterFlowModel<ProfileSettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // Model for ProfilePageHeader component.
  late ProfilePageHeaderModel profilePageHeaderModel;

  @override
  void initState(BuildContext context) {
    profilePageHeaderModel =
        createModel(context, () => ProfilePageHeaderModel());
  }

  @override
  void dispose() {
    profilePageHeaderModel.dispose();
  }
}
