import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'create_autobiography_basic_information_component_model.dart';
export 'create_autobiography_basic_information_component_model.dart';

class CreateAutobiographyBasicInformationComponentWidget
    extends StatefulWidget {
  const CreateAutobiographyBasicInformationComponentWidget({
    super.key,
    this.refAutobiography,
    this.refUserChapters,
    this.refUserAutobiography,
    this.refAIChapters,
    this.refAIAutobiography,
    this.refAIInstructions,
  });

  final DocumentReference? refAutobiography;
  final DocumentReference? refUserChapters;
  final DocumentReference? refUserAutobiography;
  final DocumentReference? refAIChapters;
  final DocumentReference? refAIAutobiography;
  final DocumentReference? refAIInstructions;

  @override
  State<CreateAutobiographyBasicInformationComponentWidget> createState() =>
      _CreateAutobiographyBasicInformationComponentWidgetState();
}

class _CreateAutobiographyBasicInformationComponentWidgetState
    extends State<CreateAutobiographyBasicInformationComponentWidget> {
  late CreateAutobiographyBasicInformationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(
        context, () => CreateAutobiographyBasicInformationComponentModel());

    _model.textABTitleFocusNode ??= FocusNode();

    _model.textChapterOneFocusNode ??= FocusNode();

    _model.textAuthorNameFocusNode ??= FocusNode();

    _model.textAuthorBackgroundInfoFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 6.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 6.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 6.0;
              } else {
                return 412.0;
              }
            }(),
            0.0,
          ),
          0.0,
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 6.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 6.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 6.0;
              } else {
                return 412.0;
              }
            }(),
            0.0,
          ),
          0.0),
      child: StreamBuilder<AutobiographiesRecord>(
        stream: AutobiographiesRecord.getDocument(widget.refAutobiography!),
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

          final columnAutobiographiesRecord = snapshot.data!;

          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 6.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 6.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 6.0;
                          } else {
                            return 12.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0,
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 6.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 6.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 6.0;
                          } else {
                            return 12.0;
                          }
                        }(),
                        0.0,
                      ),
                      6.0),
                  child: StreamBuilder<AIChaptersRecord>(
                    stream:
                        AIChaptersRecord.getDocument(widget.refAIChapters!),
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

                      final columnAIChaptersRecord = snapshot.data!;

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Autobiography Title:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 16.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 16.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 16.0;
                                                    } else {
                                                      return 21.0;
                                                    }
                                                  }(),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 6.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x87000000),
                                          offset: Offset(
                                            2.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .iconColour,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                          .textABTitleTextController ??=
                                                      TextEditingController(
                                                    text: columnAutobiographiesRecord
                                                                    .autobiographyTitle !=
                                                                ''
                                                        ? columnAutobiographiesRecord
                                                            .autobiographyTitle
                                                        : '',
                                                  ),
                                                  focusNode: _model
                                                      .textABTitleFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textABTitleTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () async {
                                                      await widget
                                                          .refAutobiography!
                                                          .update({
                                                        ...createAutobiographiesRecordData(
                                                          autobiographyTitle: _model
                                                              .textABTitleTextController
                                                              .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'Autobiography_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });

                                                      await widget
                                                          .refUserAutobiography!
                                                          .update({
                                                        ...createUserAutobiographyRecordData(
                                                          userAutobiographyTitle:
                                                              _model
                                                                  .textABTitleTextController
                                                                  .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'User_Autobiography_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });

                                                      await widget
                                                          .refAIAutobiography!
                                                          .update({
                                                        ...createAIAutobiographyRecordData(
                                                          aIAutobiographyTitle:
                                                              _model
                                                                  .textABTitleTextController
                                                                  .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Autobiography_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });

                                                      await widget
                                                          .refAIInstructions!
                                                          .update({
                                                        ...createAIInstructionsRecordData(
                                                          autobiographyTitle: _model
                                                              .textABTitleTextController
                                                              .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Instructions_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                    },
                                                  ),
                                                  autofocus: false,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Inter Tight',
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 14.0;
                                                                } else {
                                                                  return 18.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    alignLabelWithHint: false,
                                                    hintText:
                                                        'Enter Autobiography Title here...',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconColour,
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 14.0;
                                                                } else {
                                                                  return 18.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 14.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 14.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 14.0;
                                                          } else {
                                                            return 18.0;
                                                          }
                                                        }(),
                                                        letterSpacing: 0.0,
                                                      ),
                                                  minLines: 1,
                                                  maxLength: 24,
                                                  validator: _model
                                                      .textABTitleTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Chapter 1 Title:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 16.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 16.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 16.0;
                                                    } else {
                                                      return 21.0;
                                                    }
                                                  }(),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 6.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x87000000),
                                          offset: Offset(
                                            2.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .iconColour,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                          .textChapterOneTextController ??=
                                                      TextEditingController(
                                                    text: columnAIChaptersRecord
                                                                    .aIChapterTitle !=
                                                                ''
                                                        ? columnAIChaptersRecord
                                                            .aIChapterTitle
                                                        : '',
                                                  ),
                                                  focusNode: _model
                                                      .textChapterOneFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textChapterOneTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () async {
                                                      await widget
                                                          .refUserChapters!
                                                          .update({
                                                        ...createUserChaptersRecordData(
                                                          userChapterTitle: _model
                                                              .textChapterOneTextController
                                                              .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'User_Chapter_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });

                                                      await widget
                                                          .refAIChapters!
                                                          .update({
                                                        ...createAIChaptersRecordData(
                                                          aIChapterTitle: _model
                                                              .textChapterOneTextController
                                                              .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Chapter_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                    },
                                                  ),
                                                  autofocus: false,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Inter Tight',
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 14.0;
                                                                } else {
                                                                  return 18.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    alignLabelWithHint: false,
                                                    hintText:
                                                        'Enter Chapter 1 Title here...',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconColour,
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 14.0;
                                                                } else {
                                                                  return 18.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 14.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 14.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 14.0;
                                                          } else {
                                                            return 18.0;
                                                          }
                                                        }(),
                                                        letterSpacing: 0.0,
                                                      ),
                                                  minLines: 1,
                                                  maxLength: 24,
                                                  validator: _model
                                                      .textChapterOneTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Author Name:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 16.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 16.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 16.0;
                                                    } else {
                                                      return 21.0;
                                                    }
                                                  }(),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x89000000),
                                          offset: Offset(
                                            2.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .iconColour,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 12.0, 12.0, 12.0),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: TextFormField(
                                                  controller: _model
                                                          .textAuthorNameTextController ??=
                                                      TextEditingController(
                                                    text: columnAutobiographiesRecord
                                                                    .authorName !=
                                                                ''
                                                        ? columnAutobiographiesRecord
                                                            .authorName
                                                        : '',
                                                  ),
                                                  focusNode: _model
                                                      .textAuthorNameFocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.textAuthorNameTextController',
                                                    const Duration(
                                                        milliseconds: 2000),
                                                    () async {
                                                      await widget
                                                          .refAutobiography!
                                                          .update({
                                                        ...createAutobiographiesRecordData(
                                                          authorName: _model
                                                              .textAuthorNameTextController
                                                              .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'Autobiography_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });

                                                      await widget
                                                          .refUserAutobiography!
                                                          .update({
                                                        ...createUserAutobiographyRecordData(
                                                          userAutobiographyAuthor:
                                                              _model
                                                                  .textAuthorNameTextController
                                                                  .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'User_Autobiography_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });

                                                      await widget
                                                          .refAIAutobiography!
                                                          .update({
                                                        ...createAIAutobiographyRecordData(
                                                          aIAutobiographyAuthor:
                                                              _model
                                                                  .textAuthorNameTextController
                                                                  .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Autobiography_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });

                                                      await widget
                                                          .refAIInstructions!
                                                          .update({
                                                        ...createAIInstructionsRecordData(
                                                          authorName: _model
                                                              .textAuthorNameTextController
                                                              .text,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'AI_Instructions_Updated_At':
                                                                FieldValue
                                                                    .serverTimestamp(),
                                                          },
                                                        ),
                                                      });
                                                    },
                                                  ),
                                                  autofocus: false,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Inter Tight',
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 14.0;
                                                                } else {
                                                                  return 18.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    alignLabelWithHint: false,
                                                    hintText:
                                                        'Enter Author\'s Name here...',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconColour,
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 14.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 14.0;
                                                                } else {
                                                                  return 18.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 14.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 14.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 14.0;
                                                          } else {
                                                            return 18.0;
                                                          }
                                                        }(),
                                                        letterSpacing: 0.0,
                                                      ),
                                                  minLines: 1,
                                                  maxLength: 24,
                                                  validator: _model
                                                      .textAuthorNameTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 4.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Author Date of Birth:',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 16.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 16.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 16.0;
                                                    } else {
                                                      return 21.0;
                                                    }
                                                  }(),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x8C000000),
                                        offset: Offset(
                                          2.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .iconColour,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 12.0, 12.0, 12.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 6.0, 6.0, 6.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    final datePickedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          getCurrentTimestamp,
                                                      firstDate: DateTime(1900),
                                                      lastDate:
                                                          getCurrentTimestamp,
                                                      builder:
                                                          (context, child) {
                                                        return wrapInMaterialDatePickerTheme(
                                                          context,
                                                          child!,
                                                          headerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          headerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          headerTextStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter Tight',
                                                                    fontSize:
                                                                        32.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                          pickerBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          pickerForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          selectedDateTimeBackgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          selectedDateTimeForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .info,
                                                          actionButtonForegroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          iconSize: 24.0,
                                                        );
                                                      },
                                                    );

                                                    if (datePickedDate !=
                                                        null) {
                                                      safeSetState(() {
                                                        _model.datePicked =
                                                            DateTime(
                                                          datePickedDate.year,
                                                          datePickedDate.month,
                                                          datePickedDate.day,
                                                        );
                                                      });
                                                    }

                                                    await widget
                                                        .refAutobiography!
                                                        .update({
                                                      ...createAutobiographiesRecordData(
                                                        authorDateOfBirth:
                                                            _model.datePicked,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'Autobiography_Updated_At':
                                                              FieldValue
                                                                  .serverTimestamp(),
                                                        },
                                                      ),
                                                    });

                                                    await widget
                                                        .refAIInstructions!
                                                        .update({
                                                      ...createAIInstructionsRecordData(
                                                        authorDateOfBirth:
                                                            _model.datePicked,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'AI_Instructions_Updated_At':
                                                              FieldValue
                                                                  .serverTimestamp(),
                                                        },
                                                      ),
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.date_range,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .iconColour,
                                                    size: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 24.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 24.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 24.0;
                                                      } else {
                                                        return 32.0;
                                                      }
                                                    }(),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        dateTimeFormat(
                                                                        "d/M/y",
                                                                        columnAutobiographiesRecord
                                                                            .authorDateOfBirth) !=
                                                                    ''
                                                            ? dateTimeFormat(
                                                                "d/M/y",
                                                                columnAutobiographiesRecord
                                                                    .authorDateOfBirth!)
                                                            : '01/01/2001',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter Tight',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .iconColour,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 13.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 13.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 13.0;
                                                                    } else {
                                                                      return 16.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      1.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            7.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Author Background Information:',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 16.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 16.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 16.0;
                                                  } else {
                                                    return 21.0;
                                                  }
                                                }(),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 150.0,
                                  constraints: const BoxConstraints(
                                    maxHeight: 150.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x81000000),
                                        offset: Offset(
                                          2.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .iconColour,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 12.0, 12.0, 12.0),
                                          child: SizedBox(
                                            width: double.infinity,
                                            child: TextFormField(
                                              controller: _model
                                                      .textAuthorBackgroundInfoTextController ??=
                                                  TextEditingController(
                                                text: columnAutobiographiesRecord
                                                                .authorBackgroundInformation !=
                                                            ''
                                                    ? columnAutobiographiesRecord
                                                        .authorBackgroundInformation
                                                    : '',
                                              ),
                                              focusNode: _model
                                                  .textAuthorBackgroundInfoFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.textAuthorBackgroundInfoTextController',
                                                const Duration(milliseconds: 2000),
                                                () async {
                                                  await widget
                                                      .refAutobiography!
                                                      .update({
                                                    ...createAutobiographiesRecordData(
                                                      authorBackgroundInformation:
                                                          _model
                                                              .textAuthorBackgroundInfoTextController
                                                              .text,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'Autobiography_Updated_At':
                                                            FieldValue
                                                                .serverTimestamp(),
                                                      },
                                                    ),
                                                  });

                                                  await widget
                                                      .refAIInstructions!
                                                      .update({
                                                    ...createAIInstructionsRecordData(
                                                      authorBackground: _model
                                                          .textAuthorBackgroundInfoTextController
                                                          .text,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'AI_Instructions_Updated_At':
                                                            FieldValue
                                                                .serverTimestamp(),
                                                      },
                                                    ),
                                                  });
                                                },
                                              ),
                                              autofocus: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 14.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 14.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 14.0;
                                                            } else {
                                                              return 18.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                        ),
                                                alignLabelWithHint: false,
                                                hintText:
                                                    'Write a brief description about The Author here...',
                                                hintStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .iconColour,
                                                          fontSize: () {
                                                            if (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <
                                                                kBreakpointSmall) {
                                                              return 14.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointMedium) {
                                                              return 14.0;
                                                            } else if (MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width <
                                                                kBreakpointLarge) {
                                                              return 14.0;
                                                            } else {
                                                              return 18.0;
                                                            }
                                                          }(),
                                                          letterSpacing: 0.0,
                                                        ),
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                errorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                focusedErrorBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: const BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                filled: true,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .iconColour,
                                                        fontSize: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 14.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 14.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 14.0;
                                                          } else {
                                                            return 18.0;
                                                          }
                                                        }(),
                                                        letterSpacing: 0.0,
                                                      ),
                                              maxLines: 6,
                                              minLines: 6,
                                              maxLength: 300,
                                              validator: _model
                                                  .textAuthorBackgroundInfoTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ]
                  .addToStart(const SizedBox(height: 164.0))
                  .addToEnd(const SizedBox(height: 124.0)),
            ),
          );
        },
      ),
    );
  }
}
