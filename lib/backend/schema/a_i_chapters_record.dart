import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIChaptersRecord extends FirestoreRecord {
  AIChaptersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "AI_Chapter_Number" field.
  int? _aIChapterNumber;
  int get aIChapterNumber => _aIChapterNumber ?? 0;
  bool hasAIChapterNumber() => _aIChapterNumber != null;

  // "AI_Chapter_Title" field.
  String? _aIChapterTitle;
  String get aIChapterTitle => _aIChapterTitle ?? '';
  bool hasAIChapterTitle() => _aIChapterTitle != null;

  // "AI_Chapter_Content_String" field.
  String? _aIChapterContentString;
  String get aIChapterContentString => _aIChapterContentString ?? '';
  bool hasAIChapterContentString() => _aIChapterContentString != null;

  // "AI_Chapter_Content_List" field.
  List<String>? _aIChapterContentList;
  List<String> get aIChapterContentList => _aIChapterContentList ?? const [];
  bool hasAIChapterContentList() => _aIChapterContentList != null;

  // "AI_Chapter_Created_At" field.
  DateTime? _aIChapterCreatedAt;
  DateTime? get aIChapterCreatedAt => _aIChapterCreatedAt;
  bool hasAIChapterCreatedAt() => _aIChapterCreatedAt != null;

  // "AI_Chapter_Updated_At" field.
  DateTime? _aIChapterUpdatedAt;
  DateTime? get aIChapterUpdatedAt => _aIChapterUpdatedAt;
  bool hasAIChapterUpdatedAt() => _aIChapterUpdatedAt != null;

  // "AI_Chapter_ID" field.
  String? _aIChapterID;
  String get aIChapterID => _aIChapterID ?? '';
  bool hasAIChapterID() => _aIChapterID != null;

  // "AI_Chapter_UID" field.
  DocumentReference? _aIChapterUID;
  DocumentReference? get aIChapterUID => _aIChapterUID;
  bool hasAIChapterUID() => _aIChapterUID != null;

  // "Autobiography_Ref" field.
  DocumentReference? _autobiographyRef;
  DocumentReference? get autobiographyRef => _autobiographyRef;
  bool hasAutobiographyRef() => _autobiographyRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _aIChapterNumber = castToType<int>(snapshotData['AI_Chapter_Number']);
    _aIChapterTitle = snapshotData['AI_Chapter_Title'] as String?;
    _aIChapterContentString =
        snapshotData['AI_Chapter_Content_String'] as String?;
    _aIChapterContentList =
        getDataList(snapshotData['AI_Chapter_Content_List']);
    _aIChapterCreatedAt = snapshotData['AI_Chapter_Created_At'] as DateTime?;
    _aIChapterUpdatedAt = snapshotData['AI_Chapter_Updated_At'] as DateTime?;
    _aIChapterID = snapshotData['AI_Chapter_ID'] as String?;
    _aIChapterUID = snapshotData['AI_Chapter_UID'] as DocumentReference?;
    _autobiographyRef = snapshotData['Autobiography_Ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('AI_Chapters')
          : FirebaseFirestore.instance.collectionGroup('AI_Chapters');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('AI_Chapters').doc(id);

  static Stream<AIChaptersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AIChaptersRecord.fromSnapshot(s));

  static Future<AIChaptersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AIChaptersRecord.fromSnapshot(s));

  static AIChaptersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AIChaptersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AIChaptersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AIChaptersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AIChaptersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AIChaptersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAIChaptersRecordData({
  int? aIChapterNumber,
  String? aIChapterTitle,
  String? aIChapterContentString,
  DateTime? aIChapterCreatedAt,
  DateTime? aIChapterUpdatedAt,
  String? aIChapterID,
  DocumentReference? aIChapterUID,
  DocumentReference? autobiographyRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AI_Chapter_Number': aIChapterNumber,
      'AI_Chapter_Title': aIChapterTitle,
      'AI_Chapter_Content_String': aIChapterContentString,
      'AI_Chapter_Created_At': aIChapterCreatedAt,
      'AI_Chapter_Updated_At': aIChapterUpdatedAt,
      'AI_Chapter_ID': aIChapterID,
      'AI_Chapter_UID': aIChapterUID,
      'Autobiography_Ref': autobiographyRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AIChaptersRecordDocumentEquality implements Equality<AIChaptersRecord> {
  const AIChaptersRecordDocumentEquality();

  @override
  bool equals(AIChaptersRecord? e1, AIChaptersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.aIChapterNumber == e2?.aIChapterNumber &&
        e1?.aIChapterTitle == e2?.aIChapterTitle &&
        e1?.aIChapterContentString == e2?.aIChapterContentString &&
        listEquality.equals(
            e1?.aIChapterContentList, e2?.aIChapterContentList) &&
        e1?.aIChapterCreatedAt == e2?.aIChapterCreatedAt &&
        e1?.aIChapterUpdatedAt == e2?.aIChapterUpdatedAt &&
        e1?.aIChapterID == e2?.aIChapterID &&
        e1?.aIChapterUID == e2?.aIChapterUID &&
        e1?.autobiographyRef == e2?.autobiographyRef;
  }

  @override
  int hash(AIChaptersRecord? e) => const ListEquality().hash([
        e?.aIChapterNumber,
        e?.aIChapterTitle,
        e?.aIChapterContentString,
        e?.aIChapterContentList,
        e?.aIChapterCreatedAt,
        e?.aIChapterUpdatedAt,
        e?.aIChapterID,
        e?.aIChapterUID,
        e?.autobiographyRef
      ]);

  @override
  bool isValidKey(Object? o) => o is AIChaptersRecord;
}
