import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserAutobiographyRecord extends FirestoreRecord {
  UserAutobiographyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "User_Autobiography_Title" field.
  String? _userAutobiographyTitle;
  String get userAutobiographyTitle => _userAutobiographyTitle ?? '';
  bool hasUserAutobiographyTitle() => _userAutobiographyTitle != null;

  // "User_Autobiography_Author" field.
  String? _userAutobiographyAuthor;
  String get userAutobiographyAuthor => _userAutobiographyAuthor ?? '';
  bool hasUserAutobiographyAuthor() => _userAutobiographyAuthor != null;

  // "User_Autobiography_Content_String" field.
  String? _userAutobiographyContentString;
  String get userAutobiographyContentString =>
      _userAutobiographyContentString ?? '';
  bool hasUserAutobiographyContentString() =>
      _userAutobiographyContentString != null;

  // "User_Autobiography_Content_List" field.
  List<String>? _userAutobiographyContentList;
  List<String> get userAutobiographyContentList =>
      _userAutobiographyContentList ?? const [];
  bool hasUserAutobiographyContentList() =>
      _userAutobiographyContentList != null;

  // "User_Autobiography_Created_At" field.
  DateTime? _userAutobiographyCreatedAt;
  DateTime? get userAutobiographyCreatedAt => _userAutobiographyCreatedAt;
  bool hasUserAutobiographyCreatedAt() => _userAutobiographyCreatedAt != null;

  // "User_Autobiography_Updated_At" field.
  DateTime? _userAutobiographyUpdatedAt;
  DateTime? get userAutobiographyUpdatedAt => _userAutobiographyUpdatedAt;
  bool hasUserAutobiographyUpdatedAt() => _userAutobiographyUpdatedAt != null;

  // "User_Autobiography_UID" field.
  DocumentReference? _userAutobiographyUID;
  DocumentReference? get userAutobiographyUID => _userAutobiographyUID;
  bool hasUserAutobiographyUID() => _userAutobiographyUID != null;

  // "User_Autobiography_REF" field.
  DocumentReference? _userAutobiographyREF;
  DocumentReference? get userAutobiographyREF => _userAutobiographyREF;
  bool hasUserAutobiographyREF() => _userAutobiographyREF != null;

  // "User_Autobiography_ID" field.
  String? _userAutobiographyID;
  String get userAutobiographyID => _userAutobiographyID ?? '';
  bool hasUserAutobiographyID() => _userAutobiographyID != null;

  // "User_Autobiography_Export" field.
  String? _userAutobiographyExport;
  String get userAutobiographyExport => _userAutobiographyExport ?? '';
  bool hasUserAutobiographyExport() => _userAutobiographyExport != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userAutobiographyTitle =
        snapshotData['User_Autobiography_Title'] as String?;
    _userAutobiographyAuthor =
        snapshotData['User_Autobiography_Author'] as String?;
    _userAutobiographyContentString =
        snapshotData['User_Autobiography_Content_String'] as String?;
    _userAutobiographyContentList =
        getDataList(snapshotData['User_Autobiography_Content_List']);
    _userAutobiographyCreatedAt =
        snapshotData['User_Autobiography_Created_At'] as DateTime?;
    _userAutobiographyUpdatedAt =
        snapshotData['User_Autobiography_Updated_At'] as DateTime?;
    _userAutobiographyUID =
        snapshotData['User_Autobiography_UID'] as DocumentReference?;
    _userAutobiographyREF =
        snapshotData['User_Autobiography_REF'] as DocumentReference?;
    _userAutobiographyID = snapshotData['User_Autobiography_ID'] as String?;
    _userAutobiographyExport =
        snapshotData['User_Autobiography_Export'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('User_Autobiography')
          : FirebaseFirestore.instance.collectionGroup('User_Autobiography');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('User_Autobiography').doc(id);

  static Stream<UserAutobiographyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserAutobiographyRecord.fromSnapshot(s));

  static Future<UserAutobiographyRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserAutobiographyRecord.fromSnapshot(s));

  static UserAutobiographyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserAutobiographyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserAutobiographyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserAutobiographyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserAutobiographyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserAutobiographyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserAutobiographyRecordData({
  String? userAutobiographyTitle,
  String? userAutobiographyAuthor,
  String? userAutobiographyContentString,
  DateTime? userAutobiographyCreatedAt,
  DateTime? userAutobiographyUpdatedAt,
  DocumentReference? userAutobiographyUID,
  DocumentReference? userAutobiographyREF,
  String? userAutobiographyID,
  String? userAutobiographyExport,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'User_Autobiography_Title': userAutobiographyTitle,
      'User_Autobiography_Author': userAutobiographyAuthor,
      'User_Autobiography_Content_String': userAutobiographyContentString,
      'User_Autobiography_Created_At': userAutobiographyCreatedAt,
      'User_Autobiography_Updated_At': userAutobiographyUpdatedAt,
      'User_Autobiography_UID': userAutobiographyUID,
      'User_Autobiography_REF': userAutobiographyREF,
      'User_Autobiography_ID': userAutobiographyID,
      'User_Autobiography_Export': userAutobiographyExport,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserAutobiographyRecordDocumentEquality
    implements Equality<UserAutobiographyRecord> {
  const UserAutobiographyRecordDocumentEquality();

  @override
  bool equals(UserAutobiographyRecord? e1, UserAutobiographyRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userAutobiographyTitle == e2?.userAutobiographyTitle &&
        e1?.userAutobiographyAuthor == e2?.userAutobiographyAuthor &&
        e1?.userAutobiographyContentString ==
            e2?.userAutobiographyContentString &&
        listEquality.equals(e1?.userAutobiographyContentList,
            e2?.userAutobiographyContentList) &&
        e1?.userAutobiographyCreatedAt == e2?.userAutobiographyCreatedAt &&
        e1?.userAutobiographyUpdatedAt == e2?.userAutobiographyUpdatedAt &&
        e1?.userAutobiographyUID == e2?.userAutobiographyUID &&
        e1?.userAutobiographyREF == e2?.userAutobiographyREF &&
        e1?.userAutobiographyID == e2?.userAutobiographyID &&
        e1?.userAutobiographyExport == e2?.userAutobiographyExport;
  }

  @override
  int hash(UserAutobiographyRecord? e) => const ListEquality().hash([
        e?.userAutobiographyTitle,
        e?.userAutobiographyAuthor,
        e?.userAutobiographyContentString,
        e?.userAutobiographyContentList,
        e?.userAutobiographyCreatedAt,
        e?.userAutobiographyUpdatedAt,
        e?.userAutobiographyUID,
        e?.userAutobiographyREF,
        e?.userAutobiographyID,
        e?.userAutobiographyExport
      ]);

  @override
  bool isValidKey(Object? o) => o is UserAutobiographyRecord;
}
