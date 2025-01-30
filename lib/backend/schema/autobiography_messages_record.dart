import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AutobiographyMessagesRecord extends FirestoreRecord {
  AutobiographyMessagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "autobiography_id" field.
  DocumentReference? _autobiographyId;
  DocumentReference? get autobiographyId => _autobiographyId;
  bool hasAutobiographyId() => _autobiographyId != null;

  // "thread_id" field.
  DocumentReference? _threadId;
  DocumentReference? get threadId => _threadId;
  bool hasThreadId() => _threadId != null;

  // "autobiography_ref" field.
  DocumentReference? _autobiographyRef;
  DocumentReference? get autobiographyRef => _autobiographyRef;
  bool hasAutobiographyRef() => _autobiographyRef != null;

  // "entry_number" field.
  int? _entryNumber;
  int get entryNumber => _entryNumber ?? 0;
  bool hasEntryNumber() => _entryNumber != null;

  // "entry_title" field.
  String? _entryTitle;
  String get entryTitle => _entryTitle ?? '';
  bool hasEntryTitle() => _entryTitle != null;

  // "entry_content" field.
  String? _entryContent;
  String get entryContent => _entryContent ?? '';
  bool hasEntryContent() => _entryContent != null;

  // "entry_id" field.
  String? _entryId;
  String get entryId => _entryId ?? '';
  bool hasEntryId() => _entryId != null;

  // "response_number" field.
  String? _responseNumber;
  String get responseNumber => _responseNumber ?? '';
  bool hasResponseNumber() => _responseNumber != null;

  // "response_title" field.
  String? _responseTitle;
  String get responseTitle => _responseTitle ?? '';
  bool hasResponseTitle() => _responseTitle != null;

  // "response_content" field.
  String? _responseContent;
  String get responseContent => _responseContent ?? '';
  bool hasResponseContent() => _responseContent != null;

  // "response_references" field.
  String? _responseReferences;
  String get responseReferences => _responseReferences ?? '';
  bool hasResponseReferences() => _responseReferences != null;

  // "response_id" field.
  String? _responseId;
  String get responseId => _responseId ?? '';
  bool hasResponseId() => _responseId != null;

  // "entry_chapter_number" field.
  int? _entryChapterNumber;
  int get entryChapterNumber => _entryChapterNumber ?? 0;
  bool hasEntryChapterNumber() => _entryChapterNumber != null;

  // "entry_chapter_title" field.
  String? _entryChapterTitle;
  String get entryChapterTitle => _entryChapterTitle ?? '';
  bool hasEntryChapterTitle() => _entryChapterTitle != null;

  // "entry_chapter_number_title" field.
  List<String>? _entryChapterNumberTitle;
  List<String> get entryChapterNumberTitle =>
      _entryChapterNumberTitle ?? const [];
  bool hasEntryChapterNumberTitle() => _entryChapterNumberTitle != null;

  // "entry_chapter_content_number" field.
  int? _entryChapterContentNumber;
  int get entryChapterContentNumber => _entryChapterContentNumber ?? 0;
  bool hasEntryChapterContentNumber() => _entryChapterContentNumber != null;

  // "entry_chapter_content_title" field.
  String? _entryChapterContentTitle;
  String get entryChapterContentTitle => _entryChapterContentTitle ?? '';
  bool hasEntryChapterContentTitle() => _entryChapterContentTitle != null;

  // "entry_chapter_content_number_title" field.
  List<String>? _entryChapterContentNumberTitle;
  List<String> get entryChapterContentNumberTitle =>
      _entryChapterContentNumberTitle ?? const [];
  bool hasEntryChapterContentNumberTitle() =>
      _entryChapterContentNumberTitle != null;

  // "entry_chapter_content" field.
  String? _entryChapterContent;
  String get entryChapterContent => _entryChapterContent ?? '';
  bool hasEntryChapterContent() => _entryChapterContent != null;

  // "entry_chapter_content_list" field.
  List<String>? _entryChapterContentList;
  List<String> get entryChapterContentList =>
      _entryChapterContentList ?? const [];
  bool hasEntryChapterContentList() => _entryChapterContentList != null;

  // "entry_chapter_id" field.
  String? _entryChapterId;
  String get entryChapterId => _entryChapterId ?? '';
  bool hasEntryChapterId() => _entryChapterId != null;

  // "response_chapter_number" field.
  int? _responseChapterNumber;
  int get responseChapterNumber => _responseChapterNumber ?? 0;
  bool hasResponseChapterNumber() => _responseChapterNumber != null;

  // "response_chapter_title" field.
  String? _responseChapterTitle;
  String get responseChapterTitle => _responseChapterTitle ?? '';
  bool hasResponseChapterTitle() => _responseChapterTitle != null;

  // "response_chapter_number_title" field.
  List<String>? _responseChapterNumberTitle;
  List<String> get responseChapterNumberTitle =>
      _responseChapterNumberTitle ?? const [];
  bool hasResponseChapterNumberTitle() => _responseChapterNumberTitle != null;

  // "response_chapter_content_number" field.
  int? _responseChapterContentNumber;
  int get responseChapterContentNumber => _responseChapterContentNumber ?? 0;
  bool hasResponseChapterContentNumber() =>
      _responseChapterContentNumber != null;

  // "response_chapter_content_title" field.
  String? _responseChapterContentTitle;
  String get responseChapterContentTitle => _responseChapterContentTitle ?? '';
  bool hasResponseChapterContentTitle() => _responseChapterContentTitle != null;

  // "response_chapter_content_number_title" field.
  List<String>? _responseChapterContentNumberTitle;
  List<String> get responseChapterContentNumberTitle =>
      _responseChapterContentNumberTitle ?? const [];
  bool hasResponseChapterContentNumberTitle() =>
      _responseChapterContentNumberTitle != null;

  // "response_chapter_content" field.
  String? _responseChapterContent;
  String get responseChapterContent => _responseChapterContent ?? '';
  bool hasResponseChapterContent() => _responseChapterContent != null;

  // "response_chapter_content_list" field.
  List<String>? _responseChapterContentList;
  List<String> get responseChapterContentList =>
      _responseChapterContentList ?? const [];
  bool hasResponseChapterContentList() => _responseChapterContentList != null;

  // "response_chapter_content_references" field.
  String? _responseChapterContentReferences;
  String get responseChapterContentReferences =>
      _responseChapterContentReferences ?? '';
  bool hasResponseChapterContentReferences() =>
      _responseChapterContentReferences != null;

  // "response_chapter_references" field.
  String? _responseChapterReferences;
  String get responseChapterReferences => _responseChapterReferences ?? '';
  bool hasResponseChapterReferences() => _responseChapterReferences != null;

  // "response_chapter_id" field.
  String? _responseChapterId;
  String get responseChapterId => _responseChapterId ?? '';
  bool hasResponseChapterId() => _responseChapterId != null;

  // "Audio_File" field.
  bool? _audioFile;
  bool get audioFile => _audioFile ?? false;
  bool hasAudioFile() => _audioFile != null;

  // "Audio_File_Number" field.
  int? _audioFileNumber;
  int get audioFileNumber => _audioFileNumber ?? 0;
  bool hasAudioFileNumber() => _audioFileNumber != null;

  // "Audio_File_Name" field.
  String? _audioFileName;
  String get audioFileName => _audioFileName ?? '';
  bool hasAudioFileName() => _audioFileName != null;

  // "Audio_File_Path" field.
  String? _audioFilePath;
  String get audioFilePath => _audioFilePath ?? '';
  bool hasAudioFilePath() => _audioFilePath != null;

  // "Audio_Created_At" field.
  DateTime? _audioCreatedAt;
  DateTime? get audioCreatedAt => _audioCreatedAt;
  bool hasAudioCreatedAt() => _audioCreatedAt != null;

  // "Audio_File_Content" field.
  String? _audioFileContent;
  String get audioFileContent => _audioFileContent ?? '';
  bool hasAudioFileContent() => _audioFileContent != null;

  // "Audio_File_REF" field.
  DocumentReference? _audioFileREF;
  DocumentReference? get audioFileREF => _audioFileREF;
  bool hasAudioFileREF() => _audioFileREF != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _role = snapshotData['role'] as String?;
    _content = snapshotData['content'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _autobiographyId = snapshotData['autobiography_id'] as DocumentReference?;
    _threadId = snapshotData['thread_id'] as DocumentReference?;
    _autobiographyRef = snapshotData['autobiography_ref'] as DocumentReference?;
    _entryNumber = castToType<int>(snapshotData['entry_number']);
    _entryTitle = snapshotData['entry_title'] as String?;
    _entryContent = snapshotData['entry_content'] as String?;
    _entryId = snapshotData['entry_id'] as String?;
    _responseNumber = snapshotData['response_number'] as String?;
    _responseTitle = snapshotData['response_title'] as String?;
    _responseContent = snapshotData['response_content'] as String?;
    _responseReferences = snapshotData['response_references'] as String?;
    _responseId = snapshotData['response_id'] as String?;
    _entryChapterNumber = castToType<int>(snapshotData['entry_chapter_number']);
    _entryChapterTitle = snapshotData['entry_chapter_title'] as String?;
    _entryChapterNumberTitle =
        getDataList(snapshotData['entry_chapter_number_title']);
    _entryChapterContentNumber =
        castToType<int>(snapshotData['entry_chapter_content_number']);
    _entryChapterContentTitle =
        snapshotData['entry_chapter_content_title'] as String?;
    _entryChapterContentNumberTitle =
        getDataList(snapshotData['entry_chapter_content_number_title']);
    _entryChapterContent = snapshotData['entry_chapter_content'] as String?;
    _entryChapterContentList =
        getDataList(snapshotData['entry_chapter_content_list']);
    _entryChapterId = snapshotData['entry_chapter_id'] as String?;
    _responseChapterNumber =
        castToType<int>(snapshotData['response_chapter_number']);
    _responseChapterTitle = snapshotData['response_chapter_title'] as String?;
    _responseChapterNumberTitle =
        getDataList(snapshotData['response_chapter_number_title']);
    _responseChapterContentNumber =
        castToType<int>(snapshotData['response_chapter_content_number']);
    _responseChapterContentTitle =
        snapshotData['response_chapter_content_title'] as String?;
    _responseChapterContentNumberTitle =
        getDataList(snapshotData['response_chapter_content_number_title']);
    _responseChapterContent =
        snapshotData['response_chapter_content'] as String?;
    _responseChapterContentList =
        getDataList(snapshotData['response_chapter_content_list']);
    _responseChapterContentReferences =
        snapshotData['response_chapter_content_references'] as String?;
    _responseChapterReferences =
        snapshotData['response_chapter_references'] as String?;
    _responseChapterId = snapshotData['response_chapter_id'] as String?;
    _audioFile = snapshotData['Audio_File'] as bool?;
    _audioFileNumber = castToType<int>(snapshotData['Audio_File_Number']);
    _audioFileName = snapshotData['Audio_File_Name'] as String?;
    _audioFilePath = snapshotData['Audio_File_Path'] as String?;
    _audioCreatedAt = snapshotData['Audio_Created_At'] as DateTime?;
    _audioFileContent = snapshotData['Audio_File_Content'] as String?;
    _audioFileREF = snapshotData['Audio_File_REF'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('AutobiographyMessages')
          : FirebaseFirestore.instance.collectionGroup('AutobiographyMessages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('AutobiographyMessages').doc(id);

  static Stream<AutobiographyMessagesRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => AutobiographyMessagesRecord.fromSnapshot(s));

  static Future<AutobiographyMessagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AutobiographyMessagesRecord.fromSnapshot(s));

  static AutobiographyMessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AutobiographyMessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AutobiographyMessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AutobiographyMessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AutobiographyMessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AutobiographyMessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAutobiographyMessagesRecordData({
  String? role,
  String? content,
  DateTime? timestamp,
  DocumentReference? autobiographyId,
  DocumentReference? threadId,
  DocumentReference? autobiographyRef,
  int? entryNumber,
  String? entryTitle,
  String? entryContent,
  String? entryId,
  String? responseNumber,
  String? responseTitle,
  String? responseContent,
  String? responseReferences,
  String? responseId,
  int? entryChapterNumber,
  String? entryChapterTitle,
  int? entryChapterContentNumber,
  String? entryChapterContentTitle,
  String? entryChapterContent,
  String? entryChapterId,
  int? responseChapterNumber,
  String? responseChapterTitle,
  int? responseChapterContentNumber,
  String? responseChapterContentTitle,
  String? responseChapterContent,
  String? responseChapterContentReferences,
  String? responseChapterReferences,
  String? responseChapterId,
  bool? audioFile,
  int? audioFileNumber,
  String? audioFileName,
  String? audioFilePath,
  DateTime? audioCreatedAt,
  String? audioFileContent,
  DocumentReference? audioFileREF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'role': role,
      'content': content,
      'timestamp': timestamp,
      'autobiography_id': autobiographyId,
      'thread_id': threadId,
      'autobiography_ref': autobiographyRef,
      'entry_number': entryNumber,
      'entry_title': entryTitle,
      'entry_content': entryContent,
      'entry_id': entryId,
      'response_number': responseNumber,
      'response_title': responseTitle,
      'response_content': responseContent,
      'response_references': responseReferences,
      'response_id': responseId,
      'entry_chapter_number': entryChapterNumber,
      'entry_chapter_title': entryChapterTitle,
      'entry_chapter_content_number': entryChapterContentNumber,
      'entry_chapter_content_title': entryChapterContentTitle,
      'entry_chapter_content': entryChapterContent,
      'entry_chapter_id': entryChapterId,
      'response_chapter_number': responseChapterNumber,
      'response_chapter_title': responseChapterTitle,
      'response_chapter_content_number': responseChapterContentNumber,
      'response_chapter_content_title': responseChapterContentTitle,
      'response_chapter_content': responseChapterContent,
      'response_chapter_content_references': responseChapterContentReferences,
      'response_chapter_references': responseChapterReferences,
      'response_chapter_id': responseChapterId,
      'Audio_File': audioFile,
      'Audio_File_Number': audioFileNumber,
      'Audio_File_Name': audioFileName,
      'Audio_File_Path': audioFilePath,
      'Audio_Created_At': audioCreatedAt,
      'Audio_File_Content': audioFileContent,
      'Audio_File_REF': audioFileREF,
    }.withoutNulls,
  );

  return firestoreData;
}

class AutobiographyMessagesRecordDocumentEquality
    implements Equality<AutobiographyMessagesRecord> {
  const AutobiographyMessagesRecordDocumentEquality();

  @override
  bool equals(
      AutobiographyMessagesRecord? e1, AutobiographyMessagesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.role == e2?.role &&
        e1?.content == e2?.content &&
        e1?.timestamp == e2?.timestamp &&
        e1?.autobiographyId == e2?.autobiographyId &&
        e1?.threadId == e2?.threadId &&
        e1?.autobiographyRef == e2?.autobiographyRef &&
        e1?.entryNumber == e2?.entryNumber &&
        e1?.entryTitle == e2?.entryTitle &&
        e1?.entryContent == e2?.entryContent &&
        e1?.entryId == e2?.entryId &&
        e1?.responseNumber == e2?.responseNumber &&
        e1?.responseTitle == e2?.responseTitle &&
        e1?.responseContent == e2?.responseContent &&
        e1?.responseReferences == e2?.responseReferences &&
        e1?.responseId == e2?.responseId &&
        e1?.entryChapterNumber == e2?.entryChapterNumber &&
        e1?.entryChapterTitle == e2?.entryChapterTitle &&
        listEquality.equals(
            e1?.entryChapterNumberTitle, e2?.entryChapterNumberTitle) &&
        e1?.entryChapterContentNumber == e2?.entryChapterContentNumber &&
        e1?.entryChapterContentTitle == e2?.entryChapterContentTitle &&
        listEquality.equals(e1?.entryChapterContentNumberTitle,
            e2?.entryChapterContentNumberTitle) &&
        e1?.entryChapterContent == e2?.entryChapterContent &&
        listEquality.equals(
            e1?.entryChapterContentList, e2?.entryChapterContentList) &&
        e1?.entryChapterId == e2?.entryChapterId &&
        e1?.responseChapterNumber == e2?.responseChapterNumber &&
        e1?.responseChapterTitle == e2?.responseChapterTitle &&
        listEquality.equals(
            e1?.responseChapterNumberTitle, e2?.responseChapterNumberTitle) &&
        e1?.responseChapterContentNumber == e2?.responseChapterContentNumber &&
        e1?.responseChapterContentTitle == e2?.responseChapterContentTitle &&
        listEquality.equals(e1?.responseChapterContentNumberTitle,
            e2?.responseChapterContentNumberTitle) &&
        e1?.responseChapterContent == e2?.responseChapterContent &&
        listEquality.equals(
            e1?.responseChapterContentList, e2?.responseChapterContentList) &&
        e1?.responseChapterContentReferences ==
            e2?.responseChapterContentReferences &&
        e1?.responseChapterReferences == e2?.responseChapterReferences &&
        e1?.responseChapterId == e2?.responseChapterId &&
        e1?.audioFile == e2?.audioFile &&
        e1?.audioFileNumber == e2?.audioFileNumber &&
        e1?.audioFileName == e2?.audioFileName &&
        e1?.audioFilePath == e2?.audioFilePath &&
        e1?.audioCreatedAt == e2?.audioCreatedAt &&
        e1?.audioFileContent == e2?.audioFileContent &&
        e1?.audioFileREF == e2?.audioFileREF;
  }

  @override
  int hash(AutobiographyMessagesRecord? e) => const ListEquality().hash([
        e?.role,
        e?.content,
        e?.timestamp,
        e?.autobiographyId,
        e?.threadId,
        e?.autobiographyRef,
        e?.entryNumber,
        e?.entryTitle,
        e?.entryContent,
        e?.entryId,
        e?.responseNumber,
        e?.responseTitle,
        e?.responseContent,
        e?.responseReferences,
        e?.responseId,
        e?.entryChapterNumber,
        e?.entryChapterTitle,
        e?.entryChapterNumberTitle,
        e?.entryChapterContentNumber,
        e?.entryChapterContentTitle,
        e?.entryChapterContentNumberTitle,
        e?.entryChapterContent,
        e?.entryChapterContentList,
        e?.entryChapterId,
        e?.responseChapterNumber,
        e?.responseChapterTitle,
        e?.responseChapterNumberTitle,
        e?.responseChapterContentNumber,
        e?.responseChapterContentTitle,
        e?.responseChapterContentNumberTitle,
        e?.responseChapterContent,
        e?.responseChapterContentList,
        e?.responseChapterContentReferences,
        e?.responseChapterReferences,
        e?.responseChapterId,
        e?.audioFile,
        e?.audioFileNumber,
        e?.audioFileName,
        e?.audioFilePath,
        e?.audioCreatedAt,
        e?.audioFileContent,
        e?.audioFileREF
      ]);

  @override
  bool isValidKey(Object? o) => o is AutobiographyMessagesRecord;
}
