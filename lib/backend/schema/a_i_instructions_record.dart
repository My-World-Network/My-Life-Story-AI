import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIInstructionsRecord extends FirestoreRecord {
  AIInstructionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "AI_Type" field.
  String? _aIType;
  String get aIType => _aIType ?? '';
  bool hasAIType() => _aIType != null;

  // "AI_Model" field.
  String? _aIModel;
  String get aIModel => _aIModel ?? '';
  bool hasAIModel() => _aIModel != null;

  // "AI_Instructions" field.
  String? _aIInstructions;
  String get aIInstructions => _aIInstructions ?? '';
  bool hasAIInstructions() => _aIInstructions != null;

  // "AI_Instructions_Created_At" field.
  DateTime? _aIInstructionsCreatedAt;
  DateTime? get aIInstructionsCreatedAt => _aIInstructionsCreatedAt;
  bool hasAIInstructionsCreatedAt() => _aIInstructionsCreatedAt != null;

  // "AI_Instructions_Updated_At" field.
  DateTime? _aIInstructionsUpdatedAt;
  DateTime? get aIInstructionsUpdatedAt => _aIInstructionsUpdatedAt;
  bool hasAIInstructionsUpdatedAt() => _aIInstructionsUpdatedAt != null;

  // "AI_Instructions_UID" field.
  DocumentReference? _aIInstructionsUID;
  DocumentReference? get aIInstructionsUID => _aIInstructionsUID;
  bool hasAIInstructionsUID() => _aIInstructionsUID != null;

  // "AI_Instructions_Autobiography_REF" field.
  DocumentReference? _aIInstructionsAutobiographyREF;
  DocumentReference? get aIInstructionsAutobiographyREF =>
      _aIInstructionsAutobiographyREF;
  bool hasAIInstructionsAutobiographyREF() =>
      _aIInstructionsAutobiographyREF != null;

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

  // "Author_Background" field.
  String? _authorBackground;
  String get authorBackground => _authorBackground ?? '';
  bool hasAuthorBackground() => _authorBackground != null;

  // "Audio_Conversation" field.
  bool? _audioConversation;
  bool get audioConversation => _audioConversation ?? false;
  bool hasAudioConversation() => _audioConversation != null;

  // "Accompanying_Person" field.
  String? _accompanyingPerson;
  String get accompanyingPerson => _accompanyingPerson ?? '';
  bool hasAccompanyingPerson() => _accompanyingPerson != null;

  // "AI_Audio_Conversation_Instructions" field.
  String? _aIAudioConversationInstructions;
  String get aIAudioConversationInstructions =>
      _aIAudioConversationInstructions ?? '';
  bool hasAIAudioConversationInstructions() =>
      _aIAudioConversationInstructions != null;

  // "AI_Minimalist_Editor_Instructions" field.
  String? _aIMinimalistEditorInstructions;
  String get aIMinimalistEditorInstructions =>
      _aIMinimalistEditorInstructions ?? '';
  bool hasAIMinimalistEditorInstructions() =>
      _aIMinimalistEditorInstructions != null;

  // "AI_Modest_Editor_Instructions" field.
  String? _aIModestEditorInstructions;
  String get aIModestEditorInstructions => _aIModestEditorInstructions ?? '';
  bool hasAIModestEditorInstructions() => _aIModestEditorInstructions != null;

  // "AI_Enhanced_Editor_Instructions" field.
  String? _aIEnhancedEditorInstructions;
  String get aIEnhancedEditorInstructions =>
      _aIEnhancedEditorInstructions ?? '';
  bool hasAIEnhancedEditorInstructions() =>
      _aIEnhancedEditorInstructions != null;

  // "AI_User_Own_OpenAI_API_Key" field.
  bool? _aIUserOwnOpenAIAPIKey;
  bool get aIUserOwnOpenAIAPIKey => _aIUserOwnOpenAIAPIKey ?? false;
  bool hasAIUserOwnOpenAIAPIKey() => _aIUserOwnOpenAIAPIKey != null;

  // "AI_User_OpenAI_Key" field.
  String? _aIUserOpenAIKey;
  String get aIUserOpenAIKey => _aIUserOpenAIKey ?? '';
  bool hasAIUserOpenAIKey() => _aIUserOpenAIKey != null;

  // "AI_Thread_ID" field.
  String? _aIThreadID;
  String get aIThreadID => _aIThreadID ?? '';
  bool hasAIThreadID() => _aIThreadID != null;

  // "AI_Assistant_ID" field.
  String? _aIAssistantID;
  String get aIAssistantID => _aIAssistantID ?? '';
  bool hasAIAssistantID() => _aIAssistantID != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _aIType = snapshotData['AI_Type'] as String?;
    _aIModel = snapshotData['AI_Model'] as String?;
    _aIInstructions = snapshotData['AI_Instructions'] as String?;
    _aIInstructionsCreatedAt =
        snapshotData['AI_Instructions_Created_At'] as DateTime?;
    _aIInstructionsUpdatedAt =
        snapshotData['AI_Instructions_Updated_At'] as DateTime?;
    _aIInstructionsUID =
        snapshotData['AI_Instructions_UID'] as DocumentReference?;
    _aIInstructionsAutobiographyREF =
        snapshotData['AI_Instructions_Autobiography_REF'] as DocumentReference?;
    _autobiographyTitle = snapshotData['Autobiography_Title'] as String?;
    _authorName = snapshotData['Author_Name'] as String?;
    _authorDateOfBirth = snapshotData['Author_Date_Of_Birth'] as DateTime?;
    _authorBackground = snapshotData['Author_Background'] as String?;
    _audioConversation = snapshotData['Audio_Conversation'] as bool?;
    _accompanyingPerson = snapshotData['Accompanying_Person'] as String?;
    _aIAudioConversationInstructions =
        snapshotData['AI_Audio_Conversation_Instructions'] as String?;
    _aIMinimalistEditorInstructions =
        snapshotData['AI_Minimalist_Editor_Instructions'] as String?;
    _aIModestEditorInstructions =
        snapshotData['AI_Modest_Editor_Instructions'] as String?;
    _aIEnhancedEditorInstructions =
        snapshotData['AI_Enhanced_Editor_Instructions'] as String?;
    _aIUserOwnOpenAIAPIKey =
        snapshotData['AI_User_Own_OpenAI_API_Key'] as bool?;
    _aIUserOpenAIKey = snapshotData['AI_User_OpenAI_Key'] as String?;
    _aIThreadID = snapshotData['AI_Thread_ID'] as String?;
    _aIAssistantID = snapshotData['AI_Assistant_ID'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('AI_Instructions')
          : FirebaseFirestore.instance.collectionGroup('AI_Instructions');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('AI_Instructions').doc(id);

  static Stream<AIInstructionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AIInstructionsRecord.fromSnapshot(s));

  static Future<AIInstructionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AIInstructionsRecord.fromSnapshot(s));

  static AIInstructionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AIInstructionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AIInstructionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AIInstructionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AIInstructionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AIInstructionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAIInstructionsRecordData({
  String? aIType,
  String? aIModel,
  String? aIInstructions,
  DateTime? aIInstructionsCreatedAt,
  DateTime? aIInstructionsUpdatedAt,
  DocumentReference? aIInstructionsUID,
  DocumentReference? aIInstructionsAutobiographyREF,
  String? autobiographyTitle,
  String? authorName,
  DateTime? authorDateOfBirth,
  String? authorBackground,
  bool? audioConversation,
  String? accompanyingPerson,
  String? aIAudioConversationInstructions,
  String? aIMinimalistEditorInstructions,
  String? aIModestEditorInstructions,
  String? aIEnhancedEditorInstructions,
  bool? aIUserOwnOpenAIAPIKey,
  String? aIUserOpenAIKey,
  String? aIThreadID,
  String? aIAssistantID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AI_Type': aIType,
      'AI_Model': aIModel,
      'AI_Instructions': aIInstructions,
      'AI_Instructions_Created_At': aIInstructionsCreatedAt,
      'AI_Instructions_Updated_At': aIInstructionsUpdatedAt,
      'AI_Instructions_UID': aIInstructionsUID,
      'AI_Instructions_Autobiography_REF': aIInstructionsAutobiographyREF,
      'Autobiography_Title': autobiographyTitle,
      'Author_Name': authorName,
      'Author_Date_Of_Birth': authorDateOfBirth,
      'Author_Background': authorBackground,
      'Audio_Conversation': audioConversation,
      'Accompanying_Person': accompanyingPerson,
      'AI_Audio_Conversation_Instructions': aIAudioConversationInstructions,
      'AI_Minimalist_Editor_Instructions': aIMinimalistEditorInstructions,
      'AI_Modest_Editor_Instructions': aIModestEditorInstructions,
      'AI_Enhanced_Editor_Instructions': aIEnhancedEditorInstructions,
      'AI_User_Own_OpenAI_API_Key': aIUserOwnOpenAIAPIKey,
      'AI_User_OpenAI_Key': aIUserOpenAIKey,
      'AI_Thread_ID': aIThreadID,
      'AI_Assistant_ID': aIAssistantID,
    }.withoutNulls,
  );

  return firestoreData;
}

class AIInstructionsRecordDocumentEquality
    implements Equality<AIInstructionsRecord> {
  const AIInstructionsRecordDocumentEquality();

  @override
  bool equals(AIInstructionsRecord? e1, AIInstructionsRecord? e2) {
    return e1?.aIType == e2?.aIType &&
        e1?.aIModel == e2?.aIModel &&
        e1?.aIInstructions == e2?.aIInstructions &&
        e1?.aIInstructionsCreatedAt == e2?.aIInstructionsCreatedAt &&
        e1?.aIInstructionsUpdatedAt == e2?.aIInstructionsUpdatedAt &&
        e1?.aIInstructionsUID == e2?.aIInstructionsUID &&
        e1?.aIInstructionsAutobiographyREF ==
            e2?.aIInstructionsAutobiographyREF &&
        e1?.autobiographyTitle == e2?.autobiographyTitle &&
        e1?.authorName == e2?.authorName &&
        e1?.authorDateOfBirth == e2?.authorDateOfBirth &&
        e1?.authorBackground == e2?.authorBackground &&
        e1?.audioConversation == e2?.audioConversation &&
        e1?.accompanyingPerson == e2?.accompanyingPerson &&
        e1?.aIAudioConversationInstructions ==
            e2?.aIAudioConversationInstructions &&
        e1?.aIMinimalistEditorInstructions ==
            e2?.aIMinimalistEditorInstructions &&
        e1?.aIModestEditorInstructions == e2?.aIModestEditorInstructions &&
        e1?.aIEnhancedEditorInstructions == e2?.aIEnhancedEditorInstructions &&
        e1?.aIUserOwnOpenAIAPIKey == e2?.aIUserOwnOpenAIAPIKey &&
        e1?.aIUserOpenAIKey == e2?.aIUserOpenAIKey &&
        e1?.aIThreadID == e2?.aIThreadID &&
        e1?.aIAssistantID == e2?.aIAssistantID;
  }

  @override
  int hash(AIInstructionsRecord? e) => const ListEquality().hash([
        e?.aIType,
        e?.aIModel,
        e?.aIInstructions,
        e?.aIInstructionsCreatedAt,
        e?.aIInstructionsUpdatedAt,
        e?.aIInstructionsUID,
        e?.aIInstructionsAutobiographyREF,
        e?.autobiographyTitle,
        e?.authorName,
        e?.authorDateOfBirth,
        e?.authorBackground,
        e?.audioConversation,
        e?.accompanyingPerson,
        e?.aIAudioConversationInstructions,
        e?.aIMinimalistEditorInstructions,
        e?.aIModestEditorInstructions,
        e?.aIEnhancedEditorInstructions,
        e?.aIUserOwnOpenAIAPIKey,
        e?.aIUserOpenAIKey,
        e?.aIThreadID,
        e?.aIAssistantID
      ]);

  @override
  bool isValidKey(Object? o) => o is AIInstructionsRecord;
}
