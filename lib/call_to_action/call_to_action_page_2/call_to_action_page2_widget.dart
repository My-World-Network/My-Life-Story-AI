import '/call_to_action/my_life_story_logo_component/my_life_story_logo_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'call_to_action_page2_model.dart';
export 'call_to_action_page2_model.dart';

class CallToActionPage2Widget extends StatefulWidget {
  const CallToActionPage2Widget({super.key});

  @override
  State<CallToActionPage2Widget> createState() =>
      _CallToActionPage2WidgetState();
}

class _CallToActionPage2WidgetState extends State<CallToActionPage2Widget> {
  late CallToActionPage2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CallToActionPage2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 6000));

      context.pushNamed(
        'auth_Create',
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 1000),
          ),
        },
      );
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF082D0F),
                      Color(0xFF26A159),
                      Color(0xFFB8F0CD),
                      Color(0xFFCFF4DA),
                      Color(0xFFB0E7C6),
                      Color(0xFF30AB63),
                      Color(0xFF082D0F)
                    ],
                    stops: [0.0, 0.2, 0.35, 0.5, 0.65, 0.8, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    wrapWithModel(
                      model: _model.myLifeStoryLogoComponentModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const MyLifeStoryLogoComponentWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
