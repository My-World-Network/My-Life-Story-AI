import '/call_to_action/my_world_network_logo/my_world_network_logo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'call_to_action_page1_model.dart';
export 'call_to_action_page1_model.dart';

class CallToActionPage1Widget extends StatefulWidget {
  const CallToActionPage1Widget({super.key});

  @override
  State<CallToActionPage1Widget> createState() =>
      _CallToActionPage1WidgetState();
}

class _CallToActionPage1WidgetState extends State<CallToActionPage1Widget> {
  late CallToActionPage1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CallToActionPage1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 5000));

      context.pushNamed(
        'Call_To_Action_Page_2',
        extra: <String, dynamic>{
          kTransitionInfoKey: const TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 2000),
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
                      Colors.black,
                      Color(0xFF7B60BA),
                      Color(0xFFC8C6F0),
                      Color(0xFFD6D5F2),
                      Color(0xFFC8C6F0),
                      Color(0xFF7B60BA),
                      Colors.black
                    ],
                    stops: [0.0, 0.2, 0.35, 0.5, 0.65, 0.8, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 92.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      wrapWithModel(
                        model: _model.myWorldNetworkLogoModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const MyWorldNetworkLogoWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
