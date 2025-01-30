import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/view_folder/autobiography_reading_page/read_autobiography_header/read_autobiography_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'autobiography_reading_page_model.dart';
export 'autobiography_reading_page_model.dart';

/// Autobiography Reading Page UI
///
/// Page Structure:
///
/// Use a Column widget as the root layout to vertically stack the header,
/// content, and footer areas.
///
///
/// AppBar and Header Section:
///
/// At the top of the Column, place an AppBar with a minimalistic design:
/// Leading Area (Left): Place a simple IconButton (a back arrow icon) to
/// navigate back to the previous page.
/// Title Area: A Text widget centered, displaying the Autobiography’s title
/// or "My Life Story". Use a clean, modern font, medium weight, and a
/// slightly larger font size.
/// Trailing Area (Right): Place an IconButton with an "Export" icon (e.g., a
/// download icon) that, when pressed, allows users to export their
/// Autobiography as a PDF or text file.
/// Keep the AppBar background plain white or a very light neutral tone, and
/// ensure minimal shadows. The overall feeling should be clean and
/// uncluttered.
/// Chapter Navigation Section:
///
/// Below the AppBar, add a Container with a small amount of vertical padding
/// and a neutral background color (e.g., off-white or very light gray) to
/// gently separate it from the main reading area.
/// Inside this Container, use a Row widget:
/// On the left, a simple Text label such as "Chapters:" in a subtle font.
/// Next to it, add a DropDown widget listing available chapters (e.g.,
/// Chapter 1, Chapter 2, etc.). When a user selects a chapter, the content
/// below updates to that chapter’s text.
/// Keep this section visually minimal: small text, subtle divider lines if
/// needed, and a small vertical space.
/// Reading Area (Main Content):
///
/// Below the Chapter navigation, use a Expanded widget containing a ListView
/// or PageView (depending on whether you want scrolling or paging) for the
/// main text content of the selected chapter.
/// Inside the scrolling widget:
/// Use a Column to display the chapter’s text in Text widgets.
/// Keep the text area clean, black text on a white background, with generous
/// line spacing and margins for comfortable reading.
/// Consider adding a Divider or subtle spacing at the top and bottom for
/// visual clarity.
/// No heavy borders or decorations—just a minimalist, reader-friendly look.
/// Footer / Export & Extras (Optional):
///
/// At the bottom of the page (optionally), include a Row with minimal
/// functionality:
/// A Button labeled "Export" (if not placed in the AppBar) to trigger export
/// functionality.
/// Possibly a Text element showing page numbers or a small, subtle
/// ProgressBar indicating reading progress. Keep it minimal—only add if it
/// does not clutter.
/// Styling & Theming Guidelines:
///
/// Background: White or near-white for a clean reading environment.
/// Font: Sans-serif, medium size for body text, slightly larger and bolder
/// for chapter titles.
/// Spacing: Generous white space around text blocks, minimal borders and no
/// unnecessary images.
/// Icons: Simple, line-based icons that complement the minimalistic
/// aesthetic.
/// Overall Feel: Light, airy, uncluttered, focusing on content readability.
/// Interactivity:
///
/// Chapter DropDown: Smoothly updates the displayed text when a new chapter
/// is selected.
/// Export Button: Triggers a PDF or text file export action.
/// Back Button: Returns to previous page or main menu.
/// Final Note: Aim for a refined, book-like reading experience without visual
/// noise. The page should feel similar to a clean eBook reader, allowing the
/// user to focus solely on the text of their autobiography.
class AutobiographyReadingPageWidget extends StatefulWidget {
  const AutobiographyReadingPageWidget({
    super.key,
    this.refAutobiography,
  });

  final DocumentReference? refAutobiography;

  @override
  State<AutobiographyReadingPageWidget> createState() =>
      _AutobiographyReadingPageWidgetState();
}

class _AutobiographyReadingPageWidgetState
    extends State<AutobiographyReadingPageWidget> {
  late AutobiographyReadingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AutobiographyReadingPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AutobiographiesRecord>(
      stream: AutobiographiesRecord.getDocument(widget.refAutobiography!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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

        final autobiographyReadingPageAutobiographiesRecord = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      0.0,
                      valueOrDefault<double>(
                        () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 72.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 72.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 72.0;
                          } else {
                            return 124.0;
                          }
                        }(),
                        0.0,
                      ),
                      0.0,
                      0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            width: () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 390.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 390.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 390.0;
                              } else {
                                return 800.0;
                              }
                            }(),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(12.0),
                                          bottomRight: Radius.circular(12.0),
                                          topLeft: Radius.circular(12.0),
                                          topRight: Radius.circular(12.0),
                                        ),
                                      ),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 36.0, 12.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        autobiographyReadingPageAutobiographiesRecord
                                                            .autobiographyTitle,
                                                        'Autobiography Title',
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Serif',
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 28.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 28.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 28.0;
                                                                  } else {
                                                                    return 36.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 4.0, 12.0, 24.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Written By: ${autobiographyReadingPageAutobiographiesRecord.authorName}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Noto Serif',
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 24.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 24.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 24.0;
                                                                  } else {
                                                                    return 28.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                StreamBuilder<
                                                    List<AIChaptersRecord>>(
                                                  stream: queryAIChaptersRecord(
                                                    parent: widget
                                                        .refAutobiography,
                                                    queryBuilder:
                                                        (aIChaptersRecord) =>
                                                            aIChaptersRecord
                                                                .where(
                                                                  'AI_Chapter_UID',
                                                                  isEqualTo:
                                                                      currentUserReference,
                                                                )
                                                                .orderBy(
                                                                    'AI_Chapter_Number'),
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return const Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              SpinKitFadingCircle(
                                                            color: Color(
                                                                0xC84B59BC),
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<AIChaptersRecord>
                                                        autobiographyListContentContainerAIChaptersRecordList =
                                                        snapshot.data!;

                                                    return Container(
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final aIChapterTitleList =
                                                              autobiographyListContentContainerAIChaptersRecordList
                                                                  .toList();

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                aIChapterTitleList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                aIChapterTitleListIndex) {
                                                              final aIChapterTitleListItem =
                                                                  aIChapterTitleList[
                                                                      aIChapterTitleListIndex];
                                                              return Container(
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          12.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              aIChapterTitleListItem.aIChapterTitle,
                                                                              textAlign: TextAlign.start,
                                                                              style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                    fontFamily: 'Noto Serif',
                                                                                    fontSize: () {
                                                                                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                        return 24.0;
                                                                                      } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                        return 24.0;
                                                                                      } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                        return 24.0;
                                                                                      } else {
                                                                                        return 28.0;
                                                                                      }
                                                                                    }(),
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    StreamBuilder<
                                                                        AIChaptersRecord>(
                                                                      stream: AIChaptersRecord.getDocument(
                                                                          aIChapterTitleListItem
                                                                              .reference),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return const Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: SpinKitFadingCircle(
                                                                                color: Color(0xC84B59BC),
                                                                                size: 50.0,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }

                                                                        final containerAIChaptersRecord =
                                                                            snapshot.data!;

                                                                        return Container(
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Builder(
                                                                            builder:
                                                                                (context) {
                                                                              final listAIChaptersContent = containerAIChaptersRecord.aIChapterContentList.toList();

                                                                              return ListView.builder(
                                                                                padding: EdgeInsets.zero,
                                                                                shrinkWrap: true,
                                                                                scrollDirection: Axis.vertical,
                                                                                itemCount: listAIChaptersContent.length,
                                                                                itemBuilder: (context, listAIChaptersContentIndex) {
                                                                                  final listAIChaptersContentItem = listAIChaptersContent[listAIChaptersContentIndex];
                                                                                  return Container(
                                                                                    decoration: const BoxDecoration(),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 12.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                listAIChaptersContentItem,
                                                                                                'AI Chapter Content',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Noto Serif',
                                                                                                    fontSize: () {
                                                                                                      if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                        return 14.0;
                                                                                                      } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                        return 14.0;
                                                                                                      } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                        return 14.0;
                                                                                                      } else {
                                                                                                        return 18.0;
                                                                                                      }
                                                                                                    }(),
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              );
                                                                            },
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Container(
                                                  width: 100.0,
                                                  height: 150.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.readAutobiographyHeaderModel,
                        updateCallback: () => safeSetState(() {}),
                        child: ReadAutobiographyHeaderWidget(
                          refAutobiography: widget.refAutobiography,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
