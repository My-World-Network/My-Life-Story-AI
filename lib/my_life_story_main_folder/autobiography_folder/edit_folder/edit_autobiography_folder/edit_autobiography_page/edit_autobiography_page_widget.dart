import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/edit_folder/edit_autobiography_folder/edit_autobiography_card/edit_autobiography_card_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/edit_folder/edit_autobiography_folder/edit_autobiography_header/edit_autobiography_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'edit_autobiography_page_model.dart';
export 'edit_autobiography_page_model.dart';

class EditAutobiographyPageWidget extends StatefulWidget {
  const EditAutobiographyPageWidget({
    super.key,
    this.refAutobiography,
    this.refAutobiographyList,
  });

  final DocumentReference? refAutobiography;
  final List<DocumentReference>? refAutobiographyList;

  @override
  State<EditAutobiographyPageWidget> createState() =>
      _EditAutobiographyPageWidgetState();
}

class _EditAutobiographyPageWidgetState
    extends State<EditAutobiographyPageWidget> with TickerProviderStateMixin {
  late EditAutobiographyPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditAutobiographyPageModel());

    animationsMap.addAll({
      'editAutobiographyHeaderOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'editAutobiographyCardOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 500.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AutobiographiesRecord>>(
      stream: queryAutobiographiesRecord(
        queryBuilder: (autobiographiesRecord) => autobiographiesRecord.where(
          'Autobiography_UID',
          isEqualTo: currentUserReference,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: const Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitFadingCircle(
                  color: Color(0xC84B59BC),
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<AutobiographiesRecord>
            editAutobiographyPageAutobiographiesRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.editAutobiographyHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: EditAutobiographyHeaderWidget(
                      refAutobiography: widget.refAutobiography,
                    ),
                  ).animateOnPageLoad(animationsMap[
                      'editAutobiographyHeaderOnPageLoadAnimation']!),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.editAutobiographyCardModel,
                        updateCallback: () => safeSetState(() {}),
                        child: EditAutobiographyCardWidget(
                          refAutobiography: widget.refAutobiography,
                        ),
                      ).animateOnPageLoad(animationsMap[
                          'editAutobiographyCardOnPageLoadAnimation']!),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
