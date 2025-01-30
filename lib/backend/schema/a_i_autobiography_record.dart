import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIAutobiographyRecord extends FirestoreRecord {
  AIAutobiographyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "AI_Autobiography_Title" field.
  String? _aIAutobiographyTitle;
  String get aIAutobiographyTitle => _aIAutobiographyTitle ?? '';
  bool hasAIAutobiographyTitle() => _aIAutobiographyTitle != null;

  // "AI_Autobiography_Author" field.
  String? _aIAutobiographyAuthor;
  String get aIAutobiographyAuthor => _aIAutobiographyAuthor ?? '';
  bool hasAIAutobiographyAuthor() => _aIAutobiographyAuthor != null;

  // "AI_Autobiography_Content_String" field.
  String? _aIAutobiographyContentString;
  String get aIAutobiographyContentString =>
      _aIAutobiographyContentString ?? '';
  bool hasAIAutobiographyContentString() =>
      _aIAutobiographyContentString != null;

  // "AI_Autobiography_Content_List" field.
  List<String>? _aIAutobiographyContentList;
  List<String> get aIAutobiographyContentList =>
      _aIAutobiographyContentList ?? const [];
  bool hasAIAutobiographyContentList() => _aIAutobiographyContentList != null;

  // "AI_Autobiography_Created_At" field.
  DateTime? _aIAutobiographyCreatedAt;
  DateTime? get aIAutobiographyCreatedAt => _aIAutobiographyCreatedAt;
  bool hasAIAutobiographyCreatedAt() => _aIAutobiographyCreatedAt != null;

  // "AI_Autobiography_Updated_At" field.
  DateTime? _aIAutobiographyUpdatedAt;
  DateTime? get aIAutobiographyUpdatedAt => _aIAutobiographyUpdatedAt;
  bool hasAIAutobiographyUpdatedAt() => _aIAutobiographyUpdatedAt != null;

  // "AI_Autobiography_UID" field.
  DocumentReference? _aIAutobiographyUID;
  DocumentReference? get aIAutobiographyUID => _aIAutobiographyUID;
  bool hasAIAutobiographyUID() => _aIAutobiographyUID != null;

  // "AI_Autobiography_REF" field.
  DocumentReference? _aIAutobiographyREF;
  DocumentReference? get aIAutobiographyREF => _aIAutobiographyREF;
  bool hasAIAutobiographyREF() => _aIAutobiographyREF != null;

  // "AI_Autobiography_ID" field.
  String? _aIAutobiographyID;
  String get aIAutobiographyID => _aIAutobiographyID ?? '';
  bool hasAIAutobiographyID() => _aIAutobiographyID != null;

  // "AI_Autobiography_Export" field.
  String? _aIAutobiographyExport;
  String get aIAutobiographyExport => _aIAutobiographyExport ?? '';
  bool hasAIAutobiographyExport() => _aIAutobiographyExport != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _aIAutobiographyTitle = snapshotData['AI_Autobiography_Title'] as String?;
    _aIAutobiographyAuthor = snapshotData['AI_Autobiography_Author'] as String?;
    _aIAutobiographyContentString =
        snapshotData['AI_Autobiography_Content_String'] as String?;
    _aIAutobiographyContentList =
        getDataList(snapshotData['AI_Autobiography_Content_List']);
    _aIAutobiographyCreatedAt =
        snapshotData['AI_Autobiography_Created_At'] as DateTime?;
    _aIAutobiographyUpdatedAt =
        snapshotData['AI_Autobiography_Updated_At'] as DateTime?;
    _aIAutobiographyUID =
        snapshotData['AI_Autobiography_UID'] as DocumentReference?;
    _aIAutobiographyREF =
        snapshotData['AI_Autobiography_REF'] as DocumentReference?;
    _aIAutobiographyID = snapshotData['AI_Autobiography_ID'] as String?;
    _aIAutobiographyExport = snapshotData['AI_Autobiography_Export'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('AI_Autobiography')
          : FirebaseFirestore.instance.collectionGroup('AI_Autobiography');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('AI_Autobiography').doc(id);

  static Stream<AIAutobiographyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AIAutobiographyRecord.fromSnapshot(s));

  static Future<AIAutobiographyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AIAutobiographyRecord.fromSnapshot(s));

  static AIAutobiographyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AIAutobiographyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AIAutobiographyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AIAutobiographyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AIAutobiographyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AIAutobiographyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAIAutobiographyRecordData({
  String? aIAutobiographyTitle,
  String? aIAutobiographyAuthor,
  String? aIAutobiographyContentString,
  DateTime? aIAutobiographyCreatedAt,
  DateTime? aIAutobiographyUpdatedAt,
  DocumentReference? aIAutobiographyUID,
  DocumentReference? aIAutobiographyREF,
  String? aIAutobiographyID,
  String? aIAutobiographyExport,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AI_Autobiography_Title': aIAutobiographyTitle,
      'AI_Autobiography_Author': aIAutobiographyAuthor,
      'AI_Autobiography_Content_String': aIAutobiographyContentString,
      'AI_Autobiography_Created_At': aIAutobiographyCreatedAt,
      'AI_Autobiography_Updated_At': aIAutobiographyUpdatedAt,
      'AI_Autobiography_UID': aIAutobiographyUID,
      'AI_Autobiography_REF': aIAutobiographyREF,
      'AI_Autobiography_ID': aIAutobiographyID,
      'AI_Autobiography_Export': aIAutobiographyExport,
    }.withoutNulls,
  );

  return firestoreData;
}

class AIAutobiographyRecordDocumentEquality
    implements Equality<AIAutobiographyRecord> {
  const AIAutobiographyRecordDocumentEquality();

  @override
  bool equals(AIAutobiographyRecord? e1, AIAutobiographyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.aIAutobiographyTitle == e2?.aIAutobiographyTitle &&
        e1?.aIAutobiographyAuthor == e2?.aIAutobiographyAuthor &&
        e1?.aIAutobiographyContentString == e2?.aIAutobiographyContentString &&
        listEquality.equals(
            e1?.aIAutobiographyContentList, e2?.aIAutobiographyContentList) &&
        e1?.aIAutobiographyCreatedAt == e2?.aIAutobiographyCreatedAt &&
        e1?.aIAutobiographyUpdatedAt == e2?.aIAutobiographyUpdatedAt &&
        e1?.aIAutobiographyUID == e2?.aIAutobiographyUID &&
        e1?.aIAutobiographyREF == e2?.aIAutobiographyREF &&
        e1?.aIAutobiographyID == e2?.aIAutobiographyID &&
        e1?.aIAutobiographyExport == e2?.aIAutobiographyExport;
  }

  @override
  int hash(AIAutobiographyRecord? e) => const ListEquality().hash([
        e?.aIAutobiographyTitle,
        e?.aIAutobiographyAuthor,
        e?.aIAutobiographyContentString,
        e?.aIAutobiographyContentList,
        e?.aIAutobiographyCreatedAt,
        e?.aIAutobiographyUpdatedAt,
        e?.aIAutobiographyUID,
        e?.aIAutobiographyREF,
        e?.aIAutobiographyID,
        e?.aIAutobiographyExport
      ]);

  @override
  bool isValidKey(Object? o) => o is AIAutobiographyRecord;
}
