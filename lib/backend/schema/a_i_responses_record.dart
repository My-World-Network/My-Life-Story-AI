import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIResponsesRecord extends FirestoreRecord {
  AIResponsesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ai_response_number" field.
  int? _aiResponseNumber;
  int get aiResponseNumber => _aiResponseNumber ?? 0;
  bool hasAiResponseNumber() => _aiResponseNumber != null;

  // "ai_response_title" field.
  String? _aiResponseTitle;
  String get aiResponseTitle => _aiResponseTitle ?? '';
  bool hasAiResponseTitle() => _aiResponseTitle != null;

  // "ai_response_content" field.
  String? _aiResponseContent;
  String get aiResponseContent => _aiResponseContent ?? '';
  bool hasAiResponseContent() => _aiResponseContent != null;

  // "ai_response_references" field.
  List<String>? _aiResponseReferences;
  List<String> get aiResponseReferences => _aiResponseReferences ?? const [];
  bool hasAiResponseReferences() => _aiResponseReferences != null;

  // "ai_response_created" field.
  DateTime? _aiResponseCreated;
  DateTime? get aiResponseCreated => _aiResponseCreated;
  bool hasAiResponseCreated() => _aiResponseCreated != null;

  // "ai_response_updated" field.
  DateTime? _aiResponseUpdated;
  DateTime? get aiResponseUpdated => _aiResponseUpdated;
  bool hasAiResponseUpdated() => _aiResponseUpdated != null;

  // "thread_id" field.
  String? _threadId;
  String get threadId => _threadId ?? '';
  bool hasThreadId() => _threadId != null;

  // "assistant_id" field.
  String? _assistantId;
  String get assistantId => _assistantId ?? '';
  bool hasAssistantId() => _assistantId != null;

  // "ai_response_chapter_id" field.
  DocumentReference? _aiResponseChapterId;
  DocumentReference? get aiResponseChapterId => _aiResponseChapterId;
  bool hasAiResponseChapterId() => _aiResponseChapterId != null;

  // "ai_autobiography_id" field.
  DocumentReference? _aiAutobiographyId;
  DocumentReference? get aiAutobiographyId => _aiAutobiographyId;
  bool hasAiAutobiographyId() => _aiAutobiographyId != null;

  // "user_entry_id" field.
  DocumentReference? _userEntryId;
  DocumentReference? get userEntryId => _userEntryId;
  bool hasUserEntryId() => _userEntryId != null;

  // "ai_chapter_title" field.
  String? _aiChapterTitle;
  String get aiChapterTitle => _aiChapterTitle ?? '';
  bool hasAiChapterTitle() => _aiChapterTitle != null;

  // "ai_response_id" field.
  String? _aiResponseId;
  String get aiResponseId => _aiResponseId ?? '';
  bool hasAiResponseId() => _aiResponseId != null;

  // "AI_Response_Number" field.
  int? _aIResponseNumber;
  int get aIResponseNumber => _aIResponseNumber ?? 0;
  bool hasAIResponseNumber() => _aIResponseNumber != null;

  // "AI_Response_Title" field.
  String? _aIResponseTitle;
  String get aIResponseTitle => _aIResponseTitle ?? '';
  bool hasAIResponseTitle() => _aIResponseTitle != null;

  // "AI_Response_Content" field.
  String? _aIResponseContent;
  String get aIResponseContent => _aIResponseContent ?? '';
  bool hasAIResponseContent() => _aIResponseContent != null;

  // "AI_Response_Hashtags" field.
  List<String>? _aIResponseHashtags;
  List<String> get aIResponseHashtags => _aIResponseHashtags ?? const [];
  bool hasAIResponseHashtags() => _aIResponseHashtags != null;

  // "AI_Response_Created_At" field.
  DateTime? _aIResponseCreatedAt;
  DateTime? get aIResponseCreatedAt => _aIResponseCreatedAt;
  bool hasAIResponseCreatedAt() => _aIResponseCreatedAt != null;

  // "AI_Response_Updated_At" field.
  DateTime? _aIResponseUpdatedAt;
  DateTime? get aIResponseUpdatedAt => _aIResponseUpdatedAt;
  bool hasAIResponseUpdatedAt() => _aIResponseUpdatedAt != null;

  // "AI_Chapter_Ref" field.
  DocumentReference? _aIChapterRef;
  DocumentReference? get aIChapterRef => _aIChapterRef;
  bool hasAIChapterRef() => _aIChapterRef != null;

  // "AI_Autobiography_Ref" field.
  DocumentReference? _aIAutobiographyRef;
  DocumentReference? get aIAutobiographyRef => _aIAutobiographyRef;
  bool hasAIAutobiographyRef() => _aIAutobiographyRef != null;

  // "Autobiography_Ref" field.
  DocumentReference? _autobiographyRef;
  DocumentReference? get autobiographyRef => _autobiographyRef;
  bool hasAutobiographyRef() => _autobiographyRef != null;

  // "AI_Response_ID" field.
  String? _aIResponseID;
  String get aIResponseID => _aIResponseID ?? '';
  bool hasAIResponseID() => _aIResponseID != null;

  // "AI_Response_UID" field.
  DocumentReference? _aIResponseUID;
  DocumentReference? get aIResponseUID => _aIResponseUID;
  bool hasAIResponseUID() => _aIResponseUID != null;

  // "AI_Response_Add_Chapter_Toggle" field.
  bool? _aIResponseAddChapterToggle;
  bool get aIResponseAddChapterToggle => _aIResponseAddChapterToggle ?? false;
  bool hasAIResponseAddChapterToggle() => _aIResponseAddChapterToggle != null;

  // "AI_Response_Chapter_Title" field.
  String? _aIResponseChapterTitle;
  String get aIResponseChapterTitle => _aIResponseChapterTitle ?? '';
  bool hasAIResponseChapterTitle() => _aIResponseChapterTitle != null;

  // "AI_Response_Chapter_Ref" field.
  DocumentReference? _aIResponseChapterRef;
  DocumentReference? get aIResponseChapterRef => _aIResponseChapterRef;
  bool hasAIResponseChapterRef() => _aIResponseChapterRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _aiResponseNumber = castToType<int>(snapshotData['ai_response_number']);
    _aiResponseTitle = snapshotData['ai_response_title'] as String?;
    _aiResponseContent = snapshotData['ai_response_content'] as String?;
    _aiResponseReferences = getDataList(snapshotData['ai_response_references']);
    _aiResponseCreated = snapshotData['ai_response_created'] as DateTime?;
    _aiResponseUpdated = snapshotData['ai_response_updated'] as DateTime?;
    _threadId = snapshotData['thread_id'] as String?;
    _assistantId = snapshotData['assistant_id'] as String?;
    _aiResponseChapterId =
        snapshotData['ai_response_chapter_id'] as DocumentReference?;
    _aiAutobiographyId =
        snapshotData['ai_autobiography_id'] as DocumentReference?;
    _userEntryId = snapshotData['user_entry_id'] as DocumentReference?;
    _aiChapterTitle = snapshotData['ai_chapter_title'] as String?;
    _aiResponseId = snapshotData['ai_response_id'] as String?;
    _aIResponseNumber = castToType<int>(snapshotData['AI_Response_Number']);
    _aIResponseTitle = snapshotData['AI_Response_Title'] as String?;
    _aIResponseContent = snapshotData['AI_Response_Content'] as String?;
    _aIResponseHashtags = getDataList(snapshotData['AI_Response_Hashtags']);
    _aIResponseCreatedAt = snapshotData['AI_Response_Created_At'] as DateTime?;
    _aIResponseUpdatedAt = snapshotData['AI_Response_Updated_At'] as DateTime?;
    _aIChapterRef = snapshotData['AI_Chapter_Ref'] as DocumentReference?;
    _aIAutobiographyRef =
        snapshotData['AI_Autobiography_Ref'] as DocumentReference?;
    _autobiographyRef = snapshotData['Autobiography_Ref'] as DocumentReference?;
    _aIResponseID = snapshotData['AI_Response_ID'] as String?;
    _aIResponseUID = snapshotData['AI_Response_UID'] as DocumentReference?;
    _aIResponseAddChapterToggle =
        snapshotData['AI_Response_Add_Chapter_Toggle'] as bool?;
    _aIResponseChapterTitle =
        snapshotData['AI_Response_Chapter_Title'] as String?;
    _aIResponseChapterRef =
        snapshotData['AI_Response_Chapter_Ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('AI_Responses')
          : FirebaseFirestore.instance.collectionGroup('AI_Responses');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('AI_Responses').doc(id);

  static Stream<AIResponsesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AIResponsesRecord.fromSnapshot(s));

  static Future<AIResponsesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AIResponsesRecord.fromSnapshot(s));

  static AIResponsesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AIResponsesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AIResponsesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AIResponsesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AIResponsesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AIResponsesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAIResponsesRecordData({
  int? aiResponseNumber,
  String? aiResponseTitle,
  String? aiResponseContent,
  DateTime? aiResponseCreated,
  DateTime? aiResponseUpdated,
  String? threadId,
  String? assistantId,
  DocumentReference? aiResponseChapterId,
  DocumentReference? aiAutobiographyId,
  DocumentReference? userEntryId,
  String? aiChapterTitle,
  String? aiResponseId,
  int? aIResponseNumber,
  String? aIResponseTitle,
  String? aIResponseContent,
  DateTime? aIResponseCreatedAt,
  DateTime? aIResponseUpdatedAt,
  DocumentReference? aIChapterRef,
  DocumentReference? aIAutobiographyRef,
  DocumentReference? autobiographyRef,
  String? aIResponseID,
  DocumentReference? aIResponseUID,
  bool? aIResponseAddChapterToggle,
  String? aIResponseChapterTitle,
  DocumentReference? aIResponseChapterRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ai_response_number': aiResponseNumber,
      'ai_response_title': aiResponseTitle,
      'ai_response_content': aiResponseContent,
      'ai_response_created': aiResponseCreated,
      'ai_response_updated': aiResponseUpdated,
      'thread_id': threadId,
      'assistant_id': assistantId,
      'ai_response_chapter_id': aiResponseChapterId,
      'ai_autobiography_id': aiAutobiographyId,
      'user_entry_id': userEntryId,
      'ai_chapter_title': aiChapterTitle,
      'ai_response_id': aiResponseId,
      'AI_Response_Number': aIResponseNumber,
      'AI_Response_Title': aIResponseTitle,
      'AI_Response_Content': aIResponseContent,
      'AI_Response_Created_At': aIResponseCreatedAt,
      'AI_Response_Updated_At': aIResponseUpdatedAt,
      'AI_Chapter_Ref': aIChapterRef,
      'AI_Autobiography_Ref': aIAutobiographyRef,
      'Autobiography_Ref': autobiographyRef,
      'AI_Response_ID': aIResponseID,
      'AI_Response_UID': aIResponseUID,
      'AI_Response_Add_Chapter_Toggle': aIResponseAddChapterToggle,
      'AI_Response_Chapter_Title': aIResponseChapterTitle,
      'AI_Response_Chapter_Ref': aIResponseChapterRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AIResponsesRecordDocumentEquality implements Equality<AIResponsesRecord> {
  const AIResponsesRecordDocumentEquality();

  @override
  bool equals(AIResponsesRecord? e1, AIResponsesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.aiResponseNumber == e2?.aiResponseNumber &&
        e1?.aiResponseTitle == e2?.aiResponseTitle &&
        e1?.aiResponseContent == e2?.aiResponseContent &&
        listEquality.equals(
            e1?.aiResponseReferences, e2?.aiResponseReferences) &&
        e1?.aiResponseCreated == e2?.aiResponseCreated &&
        e1?.aiResponseUpdated == e2?.aiResponseUpdated &&
        e1?.threadId == e2?.threadId &&
        e1?.assistantId == e2?.assistantId &&
        e1?.aiResponseChapterId == e2?.aiResponseChapterId &&
        e1?.aiAutobiographyId == e2?.aiAutobiographyId &&
        e1?.userEntryId == e2?.userEntryId &&
        e1?.aiChapterTitle == e2?.aiChapterTitle &&
        e1?.aiResponseId == e2?.aiResponseId &&
        e1?.aIResponseNumber == e2?.aIResponseNumber &&
        e1?.aIResponseTitle == e2?.aIResponseTitle &&
        e1?.aIResponseContent == e2?.aIResponseContent &&
        listEquality.equals(e1?.aIResponseHashtags, e2?.aIResponseHashtags) &&
        e1?.aIResponseCreatedAt == e2?.aIResponseCreatedAt &&
        e1?.aIResponseUpdatedAt == e2?.aIResponseUpdatedAt &&
        e1?.aIChapterRef == e2?.aIChapterRef &&
        e1?.aIAutobiographyRef == e2?.aIAutobiographyRef &&
        e1?.autobiographyRef == e2?.autobiographyRef &&
        e1?.aIResponseID == e2?.aIResponseID &&
        e1?.aIResponseUID == e2?.aIResponseUID &&
        e1?.aIResponseAddChapterToggle == e2?.aIResponseAddChapterToggle &&
        e1?.aIResponseChapterTitle == e2?.aIResponseChapterTitle &&
        e1?.aIResponseChapterRef == e2?.aIResponseChapterRef;
  }

  @override
  int hash(AIResponsesRecord? e) => const ListEquality().hash([
        e?.aiResponseNumber,
        e?.aiResponseTitle,
        e?.aiResponseContent,
        e?.aiResponseReferences,
        e?.aiResponseCreated,
        e?.aiResponseUpdated,
        e?.threadId,
        e?.assistantId,
        e?.aiResponseChapterId,
        e?.aiAutobiographyId,
        e?.userEntryId,
        e?.aiChapterTitle,
        e?.aiResponseId,
        e?.aIResponseNumber,
        e?.aIResponseTitle,
        e?.aIResponseContent,
        e?.aIResponseHashtags,
        e?.aIResponseCreatedAt,
        e?.aIResponseUpdatedAt,
        e?.aIChapterRef,
        e?.aIAutobiographyRef,
        e?.autobiographyRef,
        e?.aIResponseID,
        e?.aIResponseUID,
        e?.aIResponseAddChapterToggle,
        e?.aIResponseChapterTitle,
        e?.aIResponseChapterRef
      ]);

  @override
  bool isValidKey(Object? o) => o is AIResponsesRecord;
}
