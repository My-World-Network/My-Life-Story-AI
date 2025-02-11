import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/header_side_bar_folder/chapter_from_list_component/chapter_from_list_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'chapter_list_component_model.dart';
export 'chapter_list_component_model.dart';

class ChapterListComponentWidget extends StatefulWidget {
  const ChapterListComponentWidget({
    super.key,
    bool? toggleABListOpen,
    bool? toggleABOpen,
    required this.refAutobiography,
  })  : toggleABListOpen = toggleABListOpen ?? false,
        toggleABOpen = toggleABOpen ?? false;

  final bool toggleABListOpen;
  final bool toggleABOpen;
  final DocumentReference? refAutobiography;

  @override
  State<ChapterListComponentWidget> createState() =>
      _ChapterListComponentWidgetState();
}

class _ChapterListComponentWidgetState extends State<ChapterListComponentWidget>
    with TickerProviderStateMixin {
  late ChapterListComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChapterListComponentModel());

    animationsMap.addAll({
      'chapterFromListComponentOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 240.0.ms,
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        StreamBuilder<List<AIChaptersRecord>>(
          stream: queryAIChaptersRecord(
            parent: widget.refAutobiography,
            queryBuilder: (aIChaptersRecord) => aIChaptersRecord
                .where(
                  'AI_Chapter_UID',
                  isEqualTo: currentUserReference,
                )
                .orderBy('AI_Chapter_Number'),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return const Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: SpinKitFadingCircle(
                    color: Color(0xC84B59BC),
                    size: 50.0,
                  ),
                ),
              );
            }
            List<AIChaptersRecord> chapterListContainerAIChaptersRecordList =
                snapshot.data!;

            return Container(
              decoration: const BoxDecoration(),
              child: Builder(
                builder: (context) {
                  final autobiographyListContainerVar =
                      chapterListContainerAIChaptersRecordList.toList();

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: autobiographyListContainerVar.length,
                    itemBuilder: (context, autobiographyListContainerVarIndex) {
                      final autobiographyListContainerVarItem =
                          autobiographyListContainerVar[
                              autobiographyListContainerVarIndex];
                      return ChapterFromListComponentWidget(
                        key: Key(
                            'Keyumt_${autobiographyListContainerVarIndex}_of_${autobiographyListContainerVar.length}'),
                        toggleABListOpen: widget.toggleABListOpen,
                        toggleABOpen: widget.toggleABOpen,
                        refAutobiography: widget.refAutobiography!,
                        refChapter: autobiographyListContainerVarItem.reference,
                      ).animateOnPageLoad(animationsMap[
                          'chapterFromListComponentOnPageLoadAnimation']!);
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
