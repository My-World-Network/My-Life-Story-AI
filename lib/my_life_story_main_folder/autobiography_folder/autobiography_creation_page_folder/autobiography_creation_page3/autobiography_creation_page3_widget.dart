import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/autobiography_creation_page_header3/autobiography_creation_page_header3_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_creation_page_folder/create_autobiography_a_i_settings_component/create_autobiography_a_i_settings_component_widget.dart';
import 'package:flutter/material.dart';
import 'autobiography_creation_page3_model.dart';
export 'autobiography_creation_page3_model.dart';

class AutobiographyCreationPage3Widget extends StatefulWidget {
  const AutobiographyCreationPage3Widget({
    super.key,
    this.refAutobiography,
    this.refUserChapter,
    this.refAIChapter,
    this.refUserAutobiography,
    this.refAIAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserChapter;
  final DocumentReference? refAIChapter;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<AutobiographyCreationPage3Widget> createState() =>
      _AutobiographyCreationPage3WidgetState();
}

class _AutobiographyCreationPage3WidgetState
    extends State<AutobiographyCreationPage3Widget> {
  late AutobiographyCreationPage3Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyCreationPage3Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF2AB8E1), Color(0xFFA2E4EE)],
              stops: [0.0, 1.0],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              wrapWithModel(
                model: _model.autobiographyCreationPageHeader3Model,
                updateCallback: () => safeSetState(() {}),
                child: AutobiographyCreationPageHeader3Widget(
                  refAutobiography: widget.refAutobiography,
                  refUserChapter: widget.refUserChapter,
                  refAIChapter: widget.refAIChapter,
                  refUserAutobiography: widget.refUserAutobiography,
                  refAIAutobiography: widget.refAIAutobiography,
                  refAIInstructions: widget.refAIInstructions,
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
                  child: wrapWithModel(
                    model: _model.createAutobiographyAISettingsComponentModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CreateAutobiographyAISettingsComponentWidget(
                      refAutobiography: widget.refAutobiography,
                      refUserChapters: widget.refUserChapter,
                      refUserAutobiography: widget.refUserAutobiography,
                      refAIChapters: widget.refAIChapter,
                      refAIAutobiography: widget.refAIAutobiography,
                      refAIInstructions: widget.refAIInstructions,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
