import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AutobiographiesRecord extends FirestoreRecord {
  AutobiographiesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "ai_assistant_type" field.
  String? _aiAssistantType;
  String get aiAssistantType => _aiAssistantType ?? '';
  bool hasAiAssistantType() => _aiAssistantType != null;

  // "accompanying_person" field.
  String? _accompanyingPerson;
  String get accompanyingPerson => _accompanyingPerson ?? '';
  bool hasAccompanyingPerson() => _accompanyingPerson != null;

  // "author_background" field.
  String? _authorBackground;
  String get authorBackground => _authorBackground ?? '';
  bool hasAuthorBackground() => _authorBackground != null;

  // "thread_id" field.
  String? _threadId;
  String get threadId => _threadId ?? '';
  bool hasThreadId() => _threadId != null;

  // "assistant_id" field.
  String? _assistantId;
  String get assistantId => _assistantId ?? '';
  bool hasAssistantId() => _assistantId != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "audio_conversation" field.
  bool? _audioConversation;
  bool get audioConversation => _audioConversation ?? false;
  bool hasAudioConversation() => _audioConversation != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "autobiography_id" field.
  String? _autobiographyId;
  String get autobiographyId => _autobiographyId ?? '';
  bool hasAutobiographyId() => _autobiographyId != null;

  // "user_openai_api_toggle" field.
  bool? _userOpenaiApiToggle;
  bool get userOpenaiApiToggle => _userOpenaiApiToggle ?? false;
  bool hasUserOpenaiApiToggle() => _userOpenaiApiToggle != null;

  // "user_openai_api_key" field.
  String? _userOpenaiApiKey;
  String get userOpenaiApiKey => _userOpenaiApiKey ?? '';
  bool hasUserOpenaiApiKey() => _userOpenaiApiKey != null;

  // "ai_model" field.
  String? _aiModel;
  String get aiModel => _aiModel ?? '';
  bool hasAiModel() => _aiModel != null;

  // "current_entry_number" field.
  int? _currentEntryNumber;
  int get currentEntryNumber => _currentEntryNumber ?? 0;
  bool hasCurrentEntryNumber() => _currentEntryNumber != null;

  // "current_response_number" field.
  int? _currentResponseNumber;
  int get currentResponseNumber => _currentResponseNumber ?? 0;
  bool hasCurrentResponseNumber() => _currentResponseNumber != null;

  // "current_user_chapter" field.
  int? _currentUserChapter;
  int get currentUserChapter => _currentUserChapter ?? 0;
  bool hasCurrentUserChapter() => _currentUserChapter != null;

  // "current_ai_chapter" field.
  int? _currentAiChapter;
  int get currentAiChapter => _currentAiChapter ?? 0;
  bool hasCurrentAiChapter() => _currentAiChapter != null;

  // "Autobiography_Title" field.
  String? _autobiographyTitle;
  String get autobiographyTitle => _autobiographyTitle ?? '';
  bool hasAutobiographyTitle() => _autobiographyTitle != null;

  // "Author_Name" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "Author_Date_Of_Birth" field.
  DateTime? _authorDateOfBirth;
  DateTime? get authorDateOfBirth => _authorDateOfBirth;
  bool hasAuthorDateOfBirth() => _authorDateOfBirth != null;

  // "Author_Background_Information" field.
  String? _authorBackgroundInformation;
  String get authorBackgroundInformation => _authorBackgroundInformation ?? '';
  bool hasAuthorBackgroundInformation() => _authorBackgroundInformation != null;

  // "Autobiography_Cover_Colour" field.
  String? _autobiographyCoverColour;
  String get autobiographyCoverColour => _autobiographyCoverColour ?? '';
  bool hasAutobiographyCoverColour() => _autobiographyCoverColour != null;

  // "Autobiography_Cover_Image" field.
  String? _autobiographyCoverImage;
  String get autobiographyCoverImage => _autobiographyCoverImage ?? '';
  bool hasAutobiographyCoverImage() => _autobiographyCoverImage != null;

  // "AI_Chapter_Title_List" field.
  List<String>? _aIChapterTitleList;
  List<String> get aIChapterTitleList => _aIChapterTitleList ?? const [];
  bool hasAIChapterTitleList() => _aIChapterTitleList != null;

  // "AI_Chapter_ID_List" field.
  List<DocumentReference>? _aIChapterIDList;
  List<DocumentReference> get aIChapterIDList => _aIChapterIDList ?? const [];
  bool hasAIChapterIDList() => _aIChapterIDList != null;

  // "AI_Chapter_Current_Number" field.
  int? _aIChapterCurrentNumber;
  int get aIChapterCurrentNumber => _aIChapterCurrentNumber ?? 0;
  bool hasAIChapterCurrentNumber() => _aIChapterCurrentNumber != null;

  // "User_Chapter_Title_List" field.
  List<String>? _userChapterTitleList;
  List<String> get userChapterTitleList => _userChapterTitleList ?? const [];
  bool hasUserChapterTitleList() => _userChapterTitleList != null;

  // "User_Chapter_ID_List" field.
  List<DocumentReference>? _userChapterIDList;
  List<DocumentReference> get userChapterIDList =>
      _userChapterIDList ?? const [];
  bool hasUserChapterIDList() => _userChapterIDList != null;

  // "User_Chapter_Current_Number" field.
  int? _userChapterCurrentNumber;
  int get userChapterCurrentNumber => _userChapterCurrentNumber ?? 0;
  bool hasUserChapterCurrentNumber() => _userChapterCurrentNumber != null;

  // "Autobiography_Created_At" field.
  DateTime? _autobiographyCreatedAt;
  DateTime? get autobiographyCreatedAt => _autobiographyCreatedAt;
  bool hasAutobiographyCreatedAt() => _autobiographyCreatedAt != null;

  // "Autobiography_Updated_At" field.
  DateTime? _autobiographyUpdatedAt;
  DateTime? get autobiographyUpdatedAt => _autobiographyUpdatedAt;
  bool hasAutobiographyUpdatedAt() => _autobiographyUpdatedAt != null;

  // "Autobiography_ID" field.
  String? _autobiographyID;
  String get autobiographyID => _autobiographyID ?? '';
  bool hasAutobiographyID() => _autobiographyID != null;

  // "Autobiography_UID" field.
  DocumentReference? _autobiographyUID;
  DocumentReference? get autobiographyUID => _autobiographyUID;
  bool hasAutobiographyUID() => _autobiographyUID != null;

  // "Audio_Conversation_Set" field.
  bool? _audioConversationSet;
  bool get audioConversationSet => _audioConversationSet ?? false;
  bool hasAudioConversationSet() => _audioConversationSet != null;

  // "Accompaniment_Name" field.
  String? _accompanimentName;
  String get accompanimentName => _accompanimentName ?? '';
  bool hasAccompanimentName() => _accompanimentName != null;

  // "User_OpenAI_API_Key_Set" field.
  bool? _userOpenAIAPIKeySet;
  bool get userOpenAIAPIKeySet => _userOpenAIAPIKeySet ?? false;
  bool hasUserOpenAIAPIKeySet() => _userOpenAIAPIKeySet != null;

  // "User_OpenAI_API_Key" field.
  String? _userOpenAIAPIKey;
  String get userOpenAIAPIKey => _userOpenAIAPIKey ?? '';
  bool hasUserOpenAIAPIKey() => _userOpenAIAPIKey != null;

  // "Autobiography_Assistant_Type" field.
  String? _autobiographyAssistantType;
  String get autobiographyAssistantType => _autobiographyAssistantType ?? '';
  bool hasAutobiographyAssistantType() => _autobiographyAssistantType != null;

  // "Autobiography_AI_Model" field.
  String? _autobiographyAIModel;
  String get autobiographyAIModel => _autobiographyAIModel ?? '';
  bool hasAutobiographyAIModel() => _autobiographyAIModel != null;

  // "Autobiography_Thread_ID" field.
  String? _autobiographyThreadID;
  String get autobiographyThreadID => _autobiographyThreadID ?? '';
  bool hasAutobiographyThreadID() => _autobiographyThreadID != null;

  // "Autobiography_Assistant_ID" field.
  String? _autobiographyAssistantID;
  String get autobiographyAssistantID => _autobiographyAssistantID ?? '';
  bool hasAutobiographyAssistantID() => _autobiographyAssistantID != null;

  // "Autobiography_Created" field.
  bool? _autobiographyCreated;
  bool get autobiographyCreated => _autobiographyCreated ?? false;
  bool hasAutobiographyCreated() => _autobiographyCreated != null;

  // "User_Autobiography_Ref" field.
  DocumentReference? _userAutobiographyRef;
  DocumentReference? get userAutobiographyRef => _userAutobiographyRef;
  bool hasUserAutobiographyRef() => _userAutobiographyRef != null;

  // "AI_Autobiography_Ref" field.
  DocumentReference? _aIAutobiographyRef;
  DocumentReference? get aIAutobiographyRef => _aIAutobiographyRef;
  bool hasAIAutobiographyRef() => _aIAutobiographyRef != null;

  // "Autobiography_Messages_Ref" field.
  List<DocumentReference>? _autobiographyMessagesRef;
  List<DocumentReference> get autobiographyMessagesRef =>
      _autobiographyMessagesRef ?? const [];
  bool hasAutobiographyMessagesRef() => _autobiographyMessagesRef != null;

  // "User_Entries_Ref" field.
  List<DocumentReference>? _userEntriesRef;
  List<DocumentReference> get userEntriesRef => _userEntriesRef ?? const [];
  bool hasUserEntriesRef() => _userEntriesRef != null;

  // "AI_Responses_Ref" field.
  List<DocumentReference>? _aIResponsesRef;
  List<DocumentReference> get aIResponsesRef => _aIResponsesRef ?? const [];
  bool hasAIResponsesRef() => _aIResponsesRef != null;

  // "Autobiographies_Ref" field.
  DocumentReference? _autobiographiesRef;
  DocumentReference? get autobiographiesRef => _autobiographiesRef;
  bool hasAutobiographiesRef() => _autobiographiesRef != null;

  // "Current_User_Entry_Number" field.
  int? _currentUserEntryNumber;
  int get currentUserEntryNumber => _currentUserEntryNumber ?? 0;
  bool hasCurrentUserEntryNumber() => _currentUserEntryNumber != null;

  // "Current_AI_Response_Number" field.
  int? _currentAIResponseNumber;
  int get currentAIResponseNumber => _currentAIResponseNumber ?? 0;
  bool hasCurrentAIResponseNumber() => _currentAIResponseNumber != null;

  // "AI_Instructions_REF" field.
  DocumentReference? _aIInstructionsREF;
  DocumentReference? get aIInstructionsREF => _aIInstructionsREF;
  bool hasAIInstructionsREF() => _aIInstructionsREF != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _author = snapshotData['author'] as String?;
    _aiAssistantType = snapshotData['ai_assistant_type'] as String?;
    _accompanyingPerson = snapshotData['accompanying_person'] as String?;
    _authorBackground = snapshotData['author_background'] as String?;
    _threadId = snapshotData['thread_id'] as String?;
    _assistantId = snapshotData['assistant_id'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _audioConversation = snapshotData['audio_conversation'] as bool?;
    _uid = snapshotData['uid'] as DocumentReference?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _autobiographyId = snapshotData['autobiography_id'] as String?;
    _userOpenaiApiToggle = snapshotData['user_openai_api_toggle'] as bool?;
    _userOpenaiApiKey = snapshotData['user_openai_api_key'] as String?;
    _aiModel = snapshotData['ai_model'] as String?;
    _currentEntryNumber = castToType<int>(snapshotData['current_entry_number']);
    _currentResponseNumber =
        castToType<int>(snapshotData['current_response_number']);
    _currentUserChapter = castToType<int>(snapshotData['current_user_chapter']);
    _currentAiChapter = castToType<int>(snapshotData['current_ai_chapter']);
    _autobiographyTitle = snapshotData['Autobiography_Title'] as String?;
    _authorName = snapshotData['Author_Name'] as String?;
    _authorDateOfBirth = snapshotData['Author_Date_Of_Birth'] as DateTime?;
    _authorBackgroundInformation =
        snapshotData['Author_Background_Information'] as String?;
    _autobiographyCoverColour =
        snapshotData['Autobiography_Cover_Colour'] as String?;
    _autobiographyCoverImage =
        snapshotData['Autobiography_Cover_Image'] as String?;
    _aIChapterTitleList = getDataList(snapshotData['AI_Chapter_Title_List']);
    _aIChapterIDList = getDataList(snapshotData['AI_Chapter_ID_List']);
    _aIChapterCurrentNumber =
        castToType<int>(snapshotData['AI_Chapter_Current_Number']);
    _userChapterTitleList =
        getDataList(snapshotData['User_Chapter_Title_List']);
    _userChapterIDList = getDataList(snapshotData['User_Chapter_ID_List']);
    _userChapterCurrentNumber =
        castToType<int>(snapshotData['User_Chapter_Current_Number']);
    _autobiographyCreatedAt =
        snapshotData['Autobiography_Created_At'] as DateTime?;
    _autobiographyUpdatedAt =
        snapshotData['Autobiography_Updated_At'] as DateTime?;
    _autobiographyID = snapshotData['Autobiography_ID'] as String?;
    _autobiographyUID = snapshotData['Autobiography_UID'] as DocumentReference?;
    _audioConversationSet = snapshotData['Audio_Conversation_Set'] as bool?;
    _accompanimentName = snapshotData['Accompaniment_Name'] as String?;
    _userOpenAIAPIKeySet = snapshotData['User_OpenAI_API_Key_Set'] as bool?;
    _userOpenAIAPIKey = snapshotData['User_OpenAI_API_Key'] as String?;
    _autobiographyAssistantType =
        snapshotData['Autobiography_Assistant_Type'] as String?;
    _autobiographyAIModel = snapshotData['Autobiography_AI_Model'] as String?;
    _autobiographyThreadID = snapshotData['Autobiography_Thread_ID'] as String?;
    _autobiographyAssistantID =
        snapshotData['Autobiography_Assistant_ID'] as String?;
    _autobiographyCreated = snapshotData['Autobiography_Created'] as bool?;
    _userAutobiographyRef =
        snapshotData['User_Autobiography_Ref'] as DocumentReference?;
    _aIAutobiographyRef =
        snapshotData['AI_Autobiography_Ref'] as DocumentReference?;
    _autobiographyMessagesRef =
        getDataList(snapshotData['Autobiography_Messages_Ref']);
    _userEntriesRef = getDataList(snapshotData['User_Entries_Ref']);
    _aIResponsesRef = getDataList(snapshotData['AI_Responses_Ref']);
    _autobiographiesRef =
        snapshotData['Autobiographies_Ref'] as DocumentReference?;
    _currentUserEntryNumber =
        castToType<int>(snapshotData['Current_User_Entry_Number']);
    _currentAIResponseNumber =
        castToType<int>(snapshotData['Current_AI_Response_Number']);
    _aIInstructionsREF =
        snapshotData['AI_Instructions_REF'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Autobiographies');

  static Stream<AutobiographiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AutobiographiesRecord.fromSnapshot(s));

  static Future<AutobiographiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AutobiographiesRecord.fromSnapshot(s));

  static AutobiographiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AutobiographiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AutobiographiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AutobiographiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AutobiographiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AutobiographiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAutobiographiesRecordData({
  String? title,
  String? author,
  String? aiAssistantType,
  String? accompanyingPerson,
  String? authorBackground,
  String? threadId,
  String? assistantId,
  DateTime? createdAt,
  bool? audioConversation,
  DocumentReference? uid,
  DateTime? updatedAt,
  String? autobiographyId,
  bool? userOpenaiApiToggle,
  String? userOpenaiApiKey,
  String? aiModel,
  int? currentEntryNumber,
  int? currentResponseNumber,
  int? currentUserChapter,
  int? currentAiChapter,
  String? autobiographyTitle,
  String? authorName,
  DateTime? authorDateOfBirth,
  String? authorBackgroundInformation,
  String? autobiographyCoverColour,
  String? autobiographyCoverImage,
  int? aIChapterCurrentNumber,
  int? userChapterCurrentNumber,
  DateTime? autobiographyCreatedAt,
  DateTime? autobiographyUpdatedAt,
  String? autobiographyID,
  DocumentReference? autobiographyUID,
  bool? audioConversationSet,
  String? accompanimentName,
  bool? userOpenAIAPIKeySet,
  String? userOpenAIAPIKey,
  String? autobiographyAssistantType,
  String? autobiographyAIModel,
  String? autobiographyThreadID,
  String? autobiographyAssistantID,
  bool? autobiographyCreated,
  DocumentReference? userAutobiographyRef,
  DocumentReference? aIAutobiographyRef,
  DocumentReference? autobiographiesRef,
  int? currentUserEntryNumber,
  int? currentAIResponseNumber,
  DocumentReference? aIInstructionsREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'author': author,
      'ai_assistant_type': aiAssistantType,
      'accompanying_person': accompanyingPerson,
      'author_background': authorBackground,
      'thread_id': threadId,
      'assistant_id': assistantId,
      'created_at': createdAt,
      'audio_conversation': audioConversation,
      'uid': uid,
      'updated_at': updatedAt,
      'autobiography_id': autobiographyId,
      'user_openai_api_toggle': userOpenaiApiToggle,
      'user_openai_api_key': userOpenaiApiKey,
      'ai_model': aiModel,
      'current_entry_number': currentEntryNumber,
      'current_response_number': currentResponseNumber,
      'current_user_chapter': currentUserChapter,
      'current_ai_chapter': currentAiChapter,
      'Autobiography_Title': autobiographyTitle,
      'Author_Name': authorName,
      'Author_Date_Of_Birth': authorDateOfBirth,
      'Author_Background_Information': authorBackgroundInformation,
      'Autobiography_Cover_Colour': autobiographyCoverColour,
      'Autobiography_Cover_Image': autobiographyCoverImage,
      'AI_Chapter_Current_Number': aIChapterCurrentNumber,
      'User_Chapter_Current_Number': userChapterCurrentNumber,
      'Autobiography_Created_At': autobiographyCreatedAt,
      'Autobiography_Updated_At': autobiographyUpdatedAt,
      'Autobiography_ID': autobiographyID,
      'Autobiography_UID': autobiographyUID,
      'Audio_Conversation_Set': audioConversationSet,
      'Accompaniment_Name': accompanimentName,
      'User_OpenAI_API_Key_Set': userOpenAIAPIKeySet,
      'User_OpenAI_API_Key': userOpenAIAPIKey,
      'Autobiography_Assistant_Type': autobiographyAssistantType,
      'Autobiography_AI_Model': autobiographyAIModel,
      'Autobiography_Thread_ID': autobiographyThreadID,
      'Autobiography_Assistant_ID': autobiographyAssistantID,
      'Autobiography_Created': autobiographyCreated,
      'User_Autobiography_Ref': userAutobiographyRef,
      'AI_Autobiography_Ref': aIAutobiographyRef,
      'Autobiographies_Ref': autobiographiesRef,
      'Current_User_Entry_Number': currentUserEntryNumber,
      'Current_AI_Response_Number': currentAIResponseNumber,
      'AI_Instructions_REF': aIInstructionsREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class AutobiographiesRecordDocumentEquality
    implements Equality<AutobiographiesRecord> {
  const AutobiographiesRecordDocumentEquality();

  @override
  bool equals(AutobiographiesRecord? e1, AutobiographiesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.author == e2?.author &&
        e1?.aiAssistantType == e2?.aiAssistantType &&
        e1?.accompanyingPerson == e2?.accompanyingPerson &&
        e1?.authorBackground == e2?.authorBackground &&
        e1?.threadId == e2?.threadId &&
        e1?.assistantId == e2?.assistantId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.audioConversation == e2?.audioConversation &&
        e1?.uid == e2?.uid &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.autobiographyId == e2?.autobiographyId &&
        e1?.userOpenaiApiToggle == e2?.userOpenaiApiToggle &&
        e1?.userOpenaiApiKey == e2?.userOpenaiApiKey &&
        e1?.aiModel == e2?.aiModel &&
        e1?.currentEntryNumber == e2?.currentEntryNumber &&
        e1?.currentResponseNumber == e2?.currentResponseNumber &&
        e1?.currentUserChapter == e2?.currentUserChapter &&
        e1?.currentAiChapter == e2?.currentAiChapter &&
        e1?.autobiographyTitle == e2?.autobiographyTitle &&
        e1?.authorName == e2?.authorName &&
        e1?.authorDateOfBirth == e2?.authorDateOfBirth &&
        e1?.authorBackgroundInformation == e2?.authorBackgroundInformation &&
        e1?.autobiographyCoverColour == e2?.autobiographyCoverColour &&
        e1?.autobiographyCoverImage == e2?.autobiographyCoverImage &&
        listEquality.equals(e1?.aIChapterTitleList, e2?.aIChapterTitleList) &&
        listEquality.equals(e1?.aIChapterIDList, e2?.aIChapterIDList) &&
        e1?.aIChapterCurrentNumber == e2?.aIChapterCurrentNumber &&
        listEquality.equals(
            e1?.userChapterTitleList, e2?.userChapterTitleList) &&
        listEquality.equals(e1?.userChapterIDList, e2?.userChapterIDList) &&
        e1?.userChapterCurrentNumber == e2?.userChapterCurrentNumber &&
        e1?.autobiographyCreatedAt == e2?.autobiographyCreatedAt &&
        e1?.autobiographyUpdatedAt == e2?.autobiographyUpdatedAt &&
        e1?.autobiographyID == e2?.autobiographyID &&
        e1?.autobiographyUID == e2?.autobiographyUID &&
        e1?.audioConversationSet == e2?.audioConversationSet &&
        e1?.accompanimentName == e2?.accompanimentName &&
        e1?.userOpenAIAPIKeySet == e2?.userOpenAIAPIKeySet &&
        e1?.userOpenAIAPIKey == e2?.userOpenAIAPIKey &&
        e1?.autobiographyAssistantType == e2?.autobiographyAssistantType &&
        e1?.autobiographyAIModel == e2?.autobiographyAIModel &&
        e1?.autobiographyThreadID == e2?.autobiographyThreadID &&
        e1?.autobiographyAssistantID == e2?.autobiographyAssistantID &&
        e1?.autobiographyCreated == e2?.autobiographyCreated &&
        e1?.userAutobiographyRef == e2?.userAutobiographyRef &&
        e1?.aIAutobiographyRef == e2?.aIAutobiographyRef &&
        listEquality.equals(
            e1?.autobiographyMessagesRef, e2?.autobiographyMessagesRef) &&
        listEquality.equals(e1?.userEntriesRef, e2?.userEntriesRef) &&
        listEquality.equals(e1?.aIResponsesRef, e2?.aIResponsesRef) &&
        e1?.autobiographiesRef == e2?.autobiographiesRef &&
        e1?.currentUserEntryNumber == e2?.currentUserEntryNumber &&
        e1?.currentAIResponseNumber == e2?.currentAIResponseNumber &&
        e1?.aIInstructionsREF == e2?.aIInstructionsREF;
  }

  @override
  int hash(AutobiographiesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.author,
        e?.aiAssistantType,
        e?.accompanyingPerson,
        e?.authorBackground,
        e?.threadId,
        e?.assistantId,
        e?.createdAt,
        e?.audioConversation,
        e?.uid,
        e?.updatedAt,
        e?.autobiographyId,
        e?.userOpenaiApiToggle,
        e?.userOpenaiApiKey,
        e?.aiModel,
        e?.currentEntryNumber,
        e?.currentResponseNumber,
        e?.currentUserChapter,
        e?.currentAiChapter,
        e?.autobiographyTitle,
        e?.authorName,
        e?.authorDateOfBirth,
        e?.authorBackgroundInformation,
        e?.autobiographyCoverColour,
        e?.autobiographyCoverImage,
        e?.aIChapterTitleList,
        e?.aIChapterIDList,
        e?.aIChapterCurrentNumber,
        e?.userChapterTitleList,
        e?.userChapterIDList,
        e?.userChapterCurrentNumber,
        e?.autobiographyCreatedAt,
        e?.autobiographyUpdatedAt,
        e?.autobiographyID,
        e?.autobiographyUID,
        e?.audioConversationSet,
        e?.accompanimentName,
        e?.userOpenAIAPIKeySet,
        e?.userOpenAIAPIKey,
        e?.autobiographyAssistantType,
        e?.autobiographyAIModel,
        e?.autobiographyThreadID,
        e?.autobiographyAssistantID,
        e?.autobiographyCreated,
        e?.userAutobiographyRef,
        e?.aIAutobiographyRef,
        e?.autobiographyMessagesRef,
        e?.userEntriesRef,
        e?.aIResponsesRef,
        e?.autobiographiesRef,
        e?.currentUserEntryNumber,
        e?.currentAIResponseNumber,
        e?.aIInstructionsREF
      ]);

  @override
  bool isValidKey(Object? o) => o is AutobiographiesRecord;
}
