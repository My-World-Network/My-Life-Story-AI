import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/header_side_bar_folder/autobiography_from_list_component/autobiography_from_list_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'autobiography_list_component_model.dart';
export 'autobiography_list_component_model.dart';

class AutobiographyListComponentWidget extends StatefulWidget {
  const AutobiographyListComponentWidget({
    super.key,
    bool? toggleABListOpen,
  }) : toggleABListOpen = toggleABListOpen ?? false;

  final bool toggleABListOpen;

  @override
  State<AutobiographyListComponentWidget> createState() =>
      _AutobiographyListComponentWidgetState();
}

class _AutobiographyListComponentWidgetState
    extends State<AutobiographyListComponentWidget>
    with TickerProviderStateMixin {
  late AutobiographyListComponentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyListComponentModel());

    animationsMap.addAll({
      'autobiographyFromListComponentOnPageLoadAnimation': AnimationInfo(
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
        StreamBuilder<List<AutobiographiesRecord>>(
          stream: queryAutobiographiesRecord(
            queryBuilder: (autobiographiesRecord) => autobiographiesRecord
                .where(
                  'Autobiography_UID',
                  isEqualTo: currentUserReference,
                )
                .orderBy('Autobiography_Created_At'),
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
            List<AutobiographiesRecord>
                autobiographyListContainerAutobiographiesRecordList =
                snapshot.data!;

            return Container(
              height: 364.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24.0),
                  bottomRight: Radius.circular(24.0),
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: Builder(
                builder: (context) {
                  final autobiographyListContainerVar =
                      autobiographyListContainerAutobiographiesRecordList
                          .toList();

                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: autobiographyListContainerVar.length,
                    itemBuilder: (context, autobiographyListContainerVarIndex) {
                      final autobiographyListContainerVarItem =
                          autobiographyListContainerVar[
                              autobiographyListContainerVarIndex];
                      return AutobiographyFromListComponentWidget(
                        key: Key(
                            'Keye38_${autobiographyListContainerVarIndex}_of_${autobiographyListContainerVar.length}'),
                        toggleABListOpen: widget.toggleABListOpen,
                        refAutobiography:
                            autobiographyListContainerVarItem.reference,
                      ).animateOnPageLoad(animationsMap[
                          'autobiographyFromListComponentOnPageLoadAnimation']!);
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
