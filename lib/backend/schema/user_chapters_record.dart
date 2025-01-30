import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserChaptersRecord extends FirestoreRecord {
  UserChaptersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "User_Chapter_Number" field.
  int? _userChapterNumber;
  int get userChapterNumber => _userChapterNumber ?? 0;
  bool hasUserChapterNumber() => _userChapterNumber != null;

  // "User_Chapter_Title" field.
  String? _userChapterTitle;
  String get userChapterTitle => _userChapterTitle ?? '';
  bool hasUserChapterTitle() => _userChapterTitle != null;

  // "User_Chapter_Content_String" field.
  String? _userChapterContentString;
  String get userChapterContentString => _userChapterContentString ?? '';
  bool hasUserChapterContentString() => _userChapterContentString != null;

  // "User_Chapter_Content_List" field.
  List<String>? _userChapterContentList;
  List<String> get userChapterContentList =>
      _userChapterContentList ?? const [];
  bool hasUserChapterContentList() => _userChapterContentList != null;

  // "User_Chapter_Created_At" field.
  DateTime? _userChapterCreatedAt;
  DateTime? get userChapterCreatedAt => _userChapterCreatedAt;
  bool hasUserChapterCreatedAt() => _userChapterCreatedAt != null;

  // "User_Chapter_Updated_At" field.
  DateTime? _userChapterUpdatedAt;
  DateTime? get userChapterUpdatedAt => _userChapterUpdatedAt;
  bool hasUserChapterUpdatedAt() => _userChapterUpdatedAt != null;

  // "User_Chapter_ID" field.
  String? _userChapterID;
  String get userChapterID => _userChapterID ?? '';
  bool hasUserChapterID() => _userChapterID != null;

  // "User_Chapter_UID" field.
  DocumentReference? _userChapterUID;
  DocumentReference? get userChapterUID => _userChapterUID;
  bool hasUserChapterUID() => _userChapterUID != null;

  // "Autobiography_Ref" field.
  DocumentReference? _autobiographyRef;
  DocumentReference? get autobiographyRef => _autobiographyRef;
  bool hasAutobiographyRef() => _autobiographyRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userChapterNumber = castToType<int>(snapshotData['User_Chapter_Number']);
    _userChapterTitle = snapshotData['User_Chapter_Title'] as String?;
    _userChapterContentString =
        snapshotData['User_Chapter_Content_String'] as String?;
    _userChapterContentList =
        getDataList(snapshotData['User_Chapter_Content_List']);
    _userChapterCreatedAt =
        snapshotData['User_Chapter_Created_At'] as DateTime?;
    _userChapterUpdatedAt =
        snapshotData['User_Chapter_Updated_At'] as DateTime?;
    _userChapterID = snapshotData['User_Chapter_ID'] as String?;
    _userChapterUID = snapshotData['User_Chapter_UID'] as DocumentReference?;
    _autobiographyRef = snapshotData['Autobiography_Ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('User_Chapters')
          : FirebaseFirestore.instance.collectionGroup('User_Chapters');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('User_Chapters').doc(id);

  static Stream<UserChaptersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserChaptersRecord.fromSnapshot(s));

  static Future<UserChaptersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserChaptersRecord.fromSnapshot(s));

  static UserChaptersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserChaptersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserChaptersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserChaptersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserChaptersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserChaptersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserChaptersRecordData({
  int? userChapterNumber,
  String? userChapterTitle,
  String? userChapterContentString,
  DateTime? userChapterCreatedAt,
  DateTime? userChapterUpdatedAt,
  String? userChapterID,
  DocumentReference? userChapterUID,
  DocumentReference? autobiographyRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'User_Chapter_Number': userChapterNumber,
      'User_Chapter_Title': userChapterTitle,
      'User_Chapter_Content_String': userChapterContentString,
      'User_Chapter_Created_At': userChapterCreatedAt,
      'User_Chapter_Updated_At': userChapterUpdatedAt,
      'User_Chapter_ID': userChapterID,
      'User_Chapter_UID': userChapterUID,
      'Autobiography_Ref': autobiographyRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserChaptersRecordDocumentEquality
    implements Equality<UserChaptersRecord> {
  const UserChaptersRecordDocumentEquality();

  @override
  bool equals(UserChaptersRecord? e1, UserChaptersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userChapterNumber == e2?.userChapterNumber &&
        e1?.userChapterTitle == e2?.userChapterTitle &&
        e1?.userChapterContentString == e2?.userChapterContentString &&
        listEquality.equals(
            e1?.userChapterContentList, e2?.userChapterContentList) &&
        e1?.userChapterCreatedAt == e2?.userChapterCreatedAt &&
        e1?.userChapterUpdatedAt == e2?.userChapterUpdatedAt &&
        e1?.userChapterID == e2?.userChapterID &&
        e1?.userChapterUID == e2?.userChapterUID &&
        e1?.autobiographyRef == e2?.autobiographyRef;
  }

  @override
  int hash(UserChaptersRecord? e) => const ListEquality().hash([
        e?.userChapterNumber,
        e?.userChapterTitle,
        e?.userChapterContentString,
        e?.userChapterContentList,
        e?.userChapterCreatedAt,
        e?.userChapterUpdatedAt,
        e?.userChapterID,
        e?.userChapterUID,
        e?.autobiographyRef
      ]);

  @override
  bool isValidKey(Object? o) => o is UserChaptersRecord;
}
