import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserAudioFileRecord extends FirestoreRecord {
  UserAudioFileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Audio_File_Number" field.
  int? _audioFileNumber;
  int get audioFileNumber => _audioFileNumber ?? 0;
  bool hasAudioFileNumber() => _audioFileNumber != null;

  // "Audio_File_Name" field.
  String? _audioFileName;
  String get audioFileName => _audioFileName ?? '';
  bool hasAudioFileName() => _audioFileName != null;

  // "Audio_File_UID" field.
  DocumentReference? _audioFileUID;
  DocumentReference? get audioFileUID => _audioFileUID;
  bool hasAudioFileUID() => _audioFileUID != null;

  // "Audio_File_Path" field.
  String? _audioFilePath;
  String get audioFilePath => _audioFilePath ?? '';
  bool hasAudioFilePath() => _audioFilePath != null;

  // "Audio_File_Created_At" field.
  DateTime? _audioFileCreatedAt;
  DateTime? get audioFileCreatedAt => _audioFileCreatedAt;
  bool hasAudioFileCreatedAt() => _audioFileCreatedAt != null;

  // "Autobiography_REF" field.
  DocumentReference? _autobiographyREF;
  DocumentReference? get autobiographyREF => _autobiographyREF;
  bool hasAutobiographyREF() => _autobiographyREF != null;

  // "Speech_To_Text_Content" field.
  String? _speechToTextContent;
  String get speechToTextContent => _speechToTextContent ?? '';
  bool hasSpeechToTextContent() => _speechToTextContent != null;

  // "Audio_Is_Recorded" field.
  bool? _audioIsRecorded;
  bool get audioIsRecorded => _audioIsRecorded ?? false;
  bool hasAudioIsRecorded() => _audioIsRecorded != null;

  // "Audio_Is_Uploaded" field.
  bool? _audioIsUploaded;
  bool get audioIsUploaded => _audioIsUploaded ?? false;
  bool hasAudioIsUploaded() => _audioIsUploaded != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _audioFileNumber = castToType<int>(snapshotData['Audio_File_Number']);
    _audioFileName = snapshotData['Audio_File_Name'] as String?;
    _audioFileUID = snapshotData['Audio_File_UID'] as DocumentReference?;
    _audioFilePath = snapshotData['Audio_File_Path'] as String?;
    _audioFileCreatedAt = snapshotData['Audio_File_Created_At'] as DateTime?;
    _autobiographyREF = snapshotData['Autobiography_REF'] as DocumentReference?;
    _speechToTextContent = snapshotData['Speech_To_Text_Content'] as String?;
    _audioIsRecorded = snapshotData['Audio_Is_Recorded'] as bool?;
    _audioIsUploaded = snapshotData['Audio_Is_Uploaded'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('User_Audio_File')
          : FirebaseFirestore.instance.collectionGroup('User_Audio_File');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('User_Audio_File').doc(id);

  static Stream<UserAudioFileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserAudioFileRecord.fromSnapshot(s));

  static Future<UserAudioFileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserAudioFileRecord.fromSnapshot(s));

  static UserAudioFileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserAudioFileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserAudioFileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserAudioFileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserAudioFileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserAudioFileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserAudioFileRecordData({
  int? audioFileNumber,
  String? audioFileName,
  DocumentReference? audioFileUID,
  String? audioFilePath,
  DateTime? audioFileCreatedAt,
  DocumentReference? autobiographyREF,
  String? speechToTextContent,
  bool? audioIsRecorded,
  bool? audioIsUploaded,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Audio_File_Number': audioFileNumber,
      'Audio_File_Name': audioFileName,
      'Audio_File_UID': audioFileUID,
      'Audio_File_Path': audioFilePath,
      'Audio_File_Created_At': audioFileCreatedAt,
      'Autobiography_REF': autobiographyREF,
      'Speech_To_Text_Content': speechToTextContent,
      'Audio_Is_Recorded': audioIsRecorded,
      'Audio_Is_Uploaded': audioIsUploaded,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserAudioFileRecordDocumentEquality
    implements Equality<UserAudioFileRecord> {
  const UserAudioFileRecordDocumentEquality();

  @override
  bool equals(UserAudioFileRecord? e1, UserAudioFileRecord? e2) {
    return e1?.audioFileNumber == e2?.audioFileNumber &&
        e1?.audioFileName == e2?.audioFileName &&
        e1?.audioFileUID == e2?.audioFileUID &&
        e1?.audioFilePath == e2?.audioFilePath &&
        e1?.audioFileCreatedAt == e2?.audioFileCreatedAt &&
        e1?.autobiographyREF == e2?.autobiographyREF &&
        e1?.speechToTextContent == e2?.speechToTextContent &&
        e1?.audioIsRecorded == e2?.audioIsRecorded &&
        e1?.audioIsUploaded == e2?.audioIsUploaded;
  }

  @override
  int hash(UserAudioFileRecord? e) => const ListEquality().hash([
        e?.audioFileNumber,
        e?.audioFileName,
        e?.audioFileUID,
        e?.audioFilePath,
        e?.audioFileCreatedAt,
        e?.autobiographyREF,
        e?.speechToTextContent,
        e?.audioIsRecorded,
        e?.audioIsUploaded
      ]);

  @override
  bool isValidKey(Object? o) => o is UserAudioFileRecord;
}
