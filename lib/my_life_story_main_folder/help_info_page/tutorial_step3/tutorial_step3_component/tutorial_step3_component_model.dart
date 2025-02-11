import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'tutorial_step3_component_widget.dart' show TutorialStep3ComponentWidget;
import 'package:flutter/material.dart';

class TutorialStep3ComponentModel
    extends FlutterFlowModel<TutorialStep3ComponentWidget> {
  ///  Local state fields for this component.

  bool toggleHoverCreatingYourAB = false;

  bool toggleHoverWriteTitle = false;

  bool toggleHoverDescribeAuthor = false;

  bool toggleHoverInviteListener = false;

  bool toggleHoverAISettings = false;

  bool toggleHoverWritingStyle = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 0;

  // State field(s) for CreatingABMouseRegion widget.
  bool creatingABMouseRegionHovered = false;
  // State field(s) for WritingTitleMouseRegion widget.
  bool writingTitleMouseRegionHovered = false;
  // State field(s) for DescribeAuthorMouseRegion widget.
  bool describeAuthorMouseRegionHovered = false;
  // State field(s) for InviteListenerMouseRegion widget.
  bool inviteListenerMouseRegionHovered = false;
  // State field(s) for AISettingsMouseRegion widget.
  bool aISettingsMouseRegionHovered = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
