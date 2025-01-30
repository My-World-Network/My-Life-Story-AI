import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_generating_page_folder/autobiography_generating_nav_bar/autobiography_generating_nav_bar_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_generating_page_folder/autobiography_generating_page_header/autobiography_generating_page_header_widget.dart';
import '/my_life_story_main_folder/autobiography_folder/autobiography_generating_page_folder/chat_bubble_component/chat_bubble_component_widget.dart';
import 'autobiography_generating_page_widget.dart'
    show AutobiographyGeneratingPageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class AutobiographyGeneratingPageModel
    extends FlutterFlowModel<AutobiographyGeneratingPageWidget> {
  ///  Local state fields for this page.

  List<MessageStruct> messages = [];
  void addToMessages(MessageStruct item) => messages.add(item);
  void removeFromMessages(MessageStruct item) => messages.remove(item);
  void removeAtIndexFromMessages(int index) => messages.removeAt(index);
  void insertAtIndexInMessages(int index, MessageStruct item) =>
      messages.insert(index, item);
  void updateMessagesAtIndex(int index, Function(MessageStruct) updateFn) =>
      messages[index] = updateFn(messages[index]);

  DocumentReference? chatRef;

  bool componentRecordAppear = false;

  bool microphonePermission = false;

  bool settingsPopup = false;

  AutobiographiesRecord? docAutobiography;

  bool waiting = false;

  bool addResponse = false;

  int? currentEntryNumber = 0;

  bool toggleAudioRecordingComponent = false;

  bool toggleRecording = false;

  bool toggleAudioUploaded = false;

  bool toggleAudioRecorded = false;

  bool toggleAudioExistsForSTT = false;

  bool toggleAudioExistsToAddAutobio = false;

  ///  State fields for stateful widgets in this page.

  // Model for ChatBubbleComponent component.
  late ChatBubbleComponentModel chatBubbleComponentModel;
  // Model for AutobiographyGeneratingPageHeader component.
  late AutobiographyGeneratingPageHeaderModel
      autobiographyGeneratingPageHeaderModel;
  // State field(s) for PromptTextField widget.
  FocusNode? promptTextFieldFocusNode;
  TextEditingController? promptTextFieldTextController;
  String? Function(BuildContext, String?)?
      promptTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (addAutobiographyMessage)] action in IconButton widget.
  ApiCallResponse? backendAddMessage;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  AutobiographyMessagesRecord? backendAudioConvoDoc;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  AutobiographyMessagesRecord? backendConvoDoc;
  // Stores action output result for [Backend Call - API (createAutobiographyRun)] action in IconButton widget.
  ApiCallResponse? backendCreateRun;
  // Stores action output result for [Backend Call - API (getAutobiographyRun)] action in IconButton widget.
  ApiCallResponse? backendGetRun;
  // Stores action output result for [Backend Call - API (getAutobiographyMessages)] action in IconButton widget.
  ApiCallResponse? backendResponseMessage;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  AutobiographyMessagesRecord? backendResponseAIDoc;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  UserEntriesRecord? backendCreateUserEntry;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  AIResponsesRecord? backendCreateAIResponse;
  // Model for AutobiographyGeneratingNavBar component.
  late AutobiographyGeneratingNavBarModel autobiographyGeneratingNavBarModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  AudioRecorder? audioRecorder;
  String? recordedUserAudio;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // Stores action output result for [Backend Call - API (getAudioRecordingText)] action in Button widget.
  ApiCallResponse? backendAPIUploadedAudio;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserAudioFileRecord? backendCreateUploadedAudioFirebase;
  // Stores action output result for [Backend Call - API (getAudioRecordingText)] action in Button widget.
  ApiCallResponse? backendAPIRecordedAudio;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  UserAudioFileRecord? backendCreateRecordedAudioFirebase;

  @override
  void initState(BuildContext context) {
    chatBubbleComponentModel =
        createModel(context, () => ChatBubbleComponentModel());
    autobiographyGeneratingPageHeaderModel =
        createModel(context, () => AutobiographyGeneratingPageHeaderModel());
    autobiographyGeneratingNavBarModel =
        createModel(context, () => AutobiographyGeneratingNavBarModel());
  }

  @override
  void dispose() {
    chatBubbleComponentModel.dispose();
    autobiographyGeneratingPageHeaderModel.dispose();
    promptTextFieldFocusNode?.dispose();
    promptTextFieldTextController?.dispose();

    autobiographyGeneratingNavBarModel.dispose();
  }
}
