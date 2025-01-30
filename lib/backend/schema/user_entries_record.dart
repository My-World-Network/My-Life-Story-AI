import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserEntriesRecord extends FirestoreRecord {
  UserEntriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

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

  // "audio_conversation" field.
  String? _audioConversation;
  String get audioConversation => _audioConversation ?? '';
  bool hasAudioConversation() => _audioConversation != null;

  // "image_upload" field.
  String? _imageUpload;
  String get imageUpload => _imageUpload ?? '';
  bool hasImageUpload() => _imageUpload != null;

  // "video_upload" field.
  String? _videoUpload;
  String get videoUpload => _videoUpload ?? '';
  bool hasVideoUpload() => _videoUpload != null;

  // "entry_created" field.
  DateTime? _entryCreated;
  DateTime? get entryCreated => _entryCreated;
  bool hasEntryCreated() => _entryCreated != null;

  // "entry_updated" field.
  DateTime? _entryUpdated;
  DateTime? get entryUpdated => _entryUpdated;
  bool hasEntryUpdated() => _entryUpdated != null;

  // "thread_id" field.
  String? _threadId;
  String get threadId => _threadId ?? '';
  bool hasThreadId() => _threadId != null;

  // "assistant_id" field.
  String? _assistantId;
  String get assistantId => _assistantId ?? '';
  bool hasAssistantId() => _assistantId != null;

  // "user_chapter_id" field.
  DocumentReference? _userChapterId;
  DocumentReference? get userChapterId => _userChapterId;
  bool hasUserChapterId() => _userChapterId != null;

  // "user_autobiography_id" field.
  DocumentReference? _userAutobiographyId;
  DocumentReference? get userAutobiographyId => _userAutobiographyId;
  bool hasUserAutobiographyId() => _userAutobiographyId != null;

  // "ai_response_id" field.
  DocumentReference? _aiResponseId;
  DocumentReference? get aiResponseId => _aiResponseId;
  bool hasAiResponseId() => _aiResponseId != null;

  // "entry_id" field.
  String? _entryId;
  String get entryId => _entryId ?? '';
  bool hasEntryId() => _entryId != null;

  // "User_Entry_Number" field.
  int? _userEntryNumber;
  int get userEntryNumber => _userEntryNumber ?? 0;
  bool hasUserEntryNumber() => _userEntryNumber != null;

  // "User_Entry_Title" field.
  String? _userEntryTitle;
  String get userEntryTitle => _userEntryTitle ?? '';
  bool hasUserEntryTitle() => _userEntryTitle != null;

  // "User_Entry_Content" field.
  String? _userEntryContent;
  String get userEntryContent => _userEntryContent ?? '';
  bool hasUserEntryContent() => _userEntryContent != null;

  // "User_Entry_Created" field.
  DateTime? _userEntryCreated;
  DateTime? get userEntryCreated => _userEntryCreated;
  bool hasUserEntryCreated() => _userEntryCreated != null;

  // "User_Entry_Updated" field.
  DateTime? _userEntryUpdated;
  DateTime? get userEntryUpdated => _userEntryUpdated;
  bool hasUserEntryUpdated() => _userEntryUpdated != null;

  // "User_Entry_Audio_Upload_Number" field.
  int? _userEntryAudioUploadNumber;
  int get userEntryAudioUploadNumber => _userEntryAudioUploadNumber ?? 0;
  bool hasUserEntryAudioUploadNumber() => _userEntryAudioUploadNumber != null;

  // "User_Entry_Audio_Upload_Name" field.
  String? _userEntryAudioUploadName;
  String get userEntryAudioUploadName => _userEntryAudioUploadName ?? '';
  bool hasUserEntryAudioUploadName() => _userEntryAudioUploadName != null;

  // "User_Entry_Audio_Upload_Path" field.
  String? _userEntryAudioUploadPath;
  String get userEntryAudioUploadPath => _userEntryAudioUploadPath ?? '';
  bool hasUserEntryAudioUploadPath() => _userEntryAudioUploadPath != null;

  // "User_Entry_Audio_Upload_Created" field.
  DateTime? _userEntryAudioUploadCreated;
  DateTime? get userEntryAudioUploadCreated => _userEntryAudioUploadCreated;
  bool hasUserEntryAudioUploadCreated() => _userEntryAudioUploadCreated != null;

  // "User_Entry_Audio_Upload_Uploaded" field.
  DateTime? _userEntryAudioUploadUploaded;
  DateTime? get userEntryAudioUploadUploaded => _userEntryAudioUploadUploaded;
  bool hasUserEntryAudioUploadUploaded() =>
      _userEntryAudioUploadUploaded != null;

  // "User_Entry_Audio_Upload_ID" field.
  String? _userEntryAudioUploadID;
  String get userEntryAudioUploadID => _userEntryAudioUploadID ?? '';
  bool hasUserEntryAudioUploadID() => _userEntryAudioUploadID != null;

  // "User_Entry_Image_Upload_Number" field.
  int? _userEntryImageUploadNumber;
  int get userEntryImageUploadNumber => _userEntryImageUploadNumber ?? 0;
  bool hasUserEntryImageUploadNumber() => _userEntryImageUploadNumber != null;

  // "User_Entry_Image_Upload_Name" field.
  String? _userEntryImageUploadName;
  String get userEntryImageUploadName => _userEntryImageUploadName ?? '';
  bool hasUserEntryImageUploadName() => _userEntryImageUploadName != null;

  // "User_Entry_Image_Upload_Path" field.
  String? _userEntryImageUploadPath;
  String get userEntryImageUploadPath => _userEntryImageUploadPath ?? '';
  bool hasUserEntryImageUploadPath() => _userEntryImageUploadPath != null;

  // "User_Entry_Image_Upload_Uploaded" field.
  DateTime? _userEntryImageUploadUploaded;
  DateTime? get userEntryImageUploadUploaded => _userEntryImageUploadUploaded;
  bool hasUserEntryImageUploadUploaded() =>
      _userEntryImageUploadUploaded != null;

  // "User_Entry_Image_Upload_ID" field.
  String? _userEntryImageUploadID;
  String get userEntryImageUploadID => _userEntryImageUploadID ?? '';
  bool hasUserEntryImageUploadID() => _userEntryImageUploadID != null;

  // "User_Entry_Video_Upload_Number" field.
  int? _userEntryVideoUploadNumber;
  int get userEntryVideoUploadNumber => _userEntryVideoUploadNumber ?? 0;
  bool hasUserEntryVideoUploadNumber() => _userEntryVideoUploadNumber != null;

  // "User_Entry_Video_Upload_Name" field.
  String? _userEntryVideoUploadName;
  String get userEntryVideoUploadName => _userEntryVideoUploadName ?? '';
  bool hasUserEntryVideoUploadName() => _userEntryVideoUploadName != null;

  // "User_Entry_Video_Upload_Path" field.
  String? _userEntryVideoUploadPath;
  String get userEntryVideoUploadPath => _userEntryVideoUploadPath ?? '';
  bool hasUserEntryVideoUploadPath() => _userEntryVideoUploadPath != null;

  // "User_Entry_Video_Upload_Uploaded" field.
  DateTime? _userEntryVideoUploadUploaded;
  DateTime? get userEntryVideoUploadUploaded => _userEntryVideoUploadUploaded;
  bool hasUserEntryVideoUploadUploaded() =>
      _userEntryVideoUploadUploaded != null;

  // "User_Entry_Video_Upload_ID" field.
  String? _userEntryVideoUploadID;
  String get userEntryVideoUploadID => _userEntryVideoUploadID ?? '';
  bool hasUserEntryVideoUploadID() => _userEntryVideoUploadID != null;

  // "Autobiography_Ref" field.
  DocumentReference? _autobiographyRef;
  DocumentReference? get autobiographyRef => _autobiographyRef;
  bool hasAutobiographyRef() => _autobiographyRef != null;

  // "User_Autobiography_Ref" field.
  DocumentReference? _userAutobiographyRef;
  DocumentReference? get userAutobiographyRef => _userAutobiographyRef;
  bool hasUserAutobiographyRef() => _userAutobiographyRef != null;

  // "User_Entry_ID" field.
  String? _userEntryID;
  String get userEntryID => _userEntryID ?? '';
  bool hasUserEntryID() => _userEntryID != null;

  // "User_Entry_UID" field.
  DocumentReference? _userEntryUID;
  DocumentReference? get userEntryUID => _userEntryUID;
  bool hasUserEntryUID() => _userEntryUID != null;

  // "User_Chapter_Ref" field.
  DocumentReference? _userChapterRef;
  DocumentReference? get userChapterRef => _userChapterRef;
  bool hasUserChapterRef() => _userChapterRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _entryNumber = castToType<int>(snapshotData['entry_number']);
    _entryTitle = snapshotData['entry_title'] as String?;
    _entryContent = snapshotData['entry_content'] as String?;
    _audioConversation = snapshotData['audio_conversation'] as String?;
    _imageUpload = snapshotData['image_upload'] as String?;
    _videoUpload = snapshotData['video_upload'] as String?;
    _entryCreated = snapshotData['entry_created'] as DateTime?;
    _entryUpdated = snapshotData['entry_updated'] as DateTime?;
    _threadId = snapshotData['thread_id'] as String?;
    _assistantId = snapshotData['assistant_id'] as String?;
    _userChapterId = snapshotData['user_chapter_id'] as DocumentReference?;
    _userAutobiographyId =
        snapshotData['user_autobiography_id'] as DocumentReference?;
    _aiResponseId = snapshotData['ai_response_id'] as DocumentReference?;
    _entryId = snapshotData['entry_id'] as String?;
    _userEntryNumber = castToType<int>(snapshotData['User_Entry_Number']);
    _userEntryTitle = snapshotData['User_Entry_Title'] as String?;
    _userEntryContent = snapshotData['User_Entry_Content'] as String?;
    _userEntryCreated = snapshotData['User_Entry_Created'] as DateTime?;
    _userEntryUpdated = snapshotData['User_Entry_Updated'] as DateTime?;
    _userEntryAudioUploadNumber =
        castToType<int>(snapshotData['User_Entry_Audio_Upload_Number']);
    _userEntryAudioUploadName =
        snapshotData['User_Entry_Audio_Upload_Name'] as String?;
    _userEntryAudioUploadPath =
        snapshotData['User_Entry_Audio_Upload_Path'] as String?;
    _userEntryAudioUploadCreated =
        snapshotData['User_Entry_Audio_Upload_Created'] as DateTime?;
    _userEntryAudioUploadUploaded =
        snapshotData['User_Entry_Audio_Upload_Uploaded'] as DateTime?;
    _userEntryAudioUploadID =
        snapshotData['User_Entry_Audio_Upload_ID'] as String?;
    _userEntryImageUploadNumber =
        castToType<int>(snapshotData['User_Entry_Image_Upload_Number']);
    _userEntryImageUploadName =
        snapshotData['User_Entry_Image_Upload_Name'] as String?;
    _userEntryImageUploadPath =
        snapshotData['User_Entry_Image_Upload_Path'] as String?;
    _userEntryImageUploadUploaded =
        snapshotData['User_Entry_Image_Upload_Uploaded'] as DateTime?;
    _userEntryImageUploadID =
        snapshotData['User_Entry_Image_Upload_ID'] as String?;
    _userEntryVideoUploadNumber =
        castToType<int>(snapshotData['User_Entry_Video_Upload_Number']);
    _userEntryVideoUploadName =
        snapshotData['User_Entry_Video_Upload_Name'] as String?;
    _userEntryVideoUploadPath =
        snapshotData['User_Entry_Video_Upload_Path'] as String?;
    _userEntryVideoUploadUploaded =
        snapshotData['User_Entry_Video_Upload_Uploaded'] as DateTime?;
    _userEntryVideoUploadID =
        snapshotData['User_Entry_Video_Upload_ID'] as String?;
    _autobiographyRef = snapshotData['Autobiography_Ref'] as DocumentReference?;
    _userAutobiographyRef =
        snapshotData['User_Autobiography_Ref'] as DocumentReference?;
    _userEntryID = snapshotData['User_Entry_ID'] as String?;
    _userEntryUID = snapshotData['User_Entry_UID'] as DocumentReference?;
    _userChapterRef = snapshotData['User_Chapter_Ref'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('User_Entries')
          : FirebaseFirestore.instance.collectionGroup('User_Entries');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('User_Entries').doc(id);

  static Stream<UserEntriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserEntriesRecord.fromSnapshot(s));

  static Future<UserEntriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserEntriesRecord.fromSnapshot(s));

  static UserEntriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserEntriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserEntriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserEntriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserEntriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserEntriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserEntriesRecordData({
  int? entryNumber,
  String? entryTitle,
  String? entryContent,
  String? audioConversation,
  String? imageUpload,
  String? videoUpload,
  DateTime? entryCreated,
  DateTime? entryUpdated,
  String? threadId,
  String? assistantId,
  DocumentReference? userChapterId,
  DocumentReference? userAutobiographyId,
  DocumentReference? aiResponseId,
  String? entryId,
  int? userEntryNumber,
  String? userEntryTitle,
  String? userEntryContent,
  DateTime? userEntryCreated,
  DateTime? userEntryUpdated,
  int? userEntryAudioUploadNumber,
  String? userEntryAudioUploadName,
  String? userEntryAudioUploadPath,
  DateTime? userEntryAudioUploadCreated,
  DateTime? userEntryAudioUploadUploaded,
  String? userEntryAudioUploadID,
  int? userEntryImageUploadNumber,
  String? userEntryImageUploadName,
  String? userEntryImageUploadPath,
  DateTime? userEntryImageUploadUploaded,
  String? userEntryImageUploadID,
  int? userEntryVideoUploadNumber,
  String? userEntryVideoUploadName,
  String? userEntryVideoUploadPath,
  DateTime? userEntryVideoUploadUploaded,
  String? userEntryVideoUploadID,
  DocumentReference? autobiographyRef,
  DocumentReference? userAutobiographyRef,
  String? userEntryID,
  DocumentReference? userEntryUID,
  DocumentReference? userChapterRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'entry_number': entryNumber,
      'entry_title': entryTitle,
      'entry_content': entryContent,
      'audio_conversation': audioConversation,
      'image_upload': imageUpload,
      'video_upload': videoUpload,
      'entry_created': entryCreated,
      'entry_updated': entryUpdated,
      'thread_id': threadId,
      'assistant_id': assistantId,
      'user_chapter_id': userChapterId,
      'user_autobiography_id': userAutobiographyId,
      'ai_response_id': aiResponseId,
      'entry_id': entryId,
      'User_Entry_Number': userEntryNumber,
      'User_Entry_Title': userEntryTitle,
      'User_Entry_Content': userEntryContent,
      'User_Entry_Created': userEntryCreated,
      'User_Entry_Updated': userEntryUpdated,
      'User_Entry_Audio_Upload_Number': userEntryAudioUploadNumber,
      'User_Entry_Audio_Upload_Name': userEntryAudioUploadName,
      'User_Entry_Audio_Upload_Path': userEntryAudioUploadPath,
      'User_Entry_Audio_Upload_Created': userEntryAudioUploadCreated,
      'User_Entry_Audio_Upload_Uploaded': userEntryAudioUploadUploaded,
      'User_Entry_Audio_Upload_ID': userEntryAudioUploadID,
      'User_Entry_Image_Upload_Number': userEntryImageUploadNumber,
      'User_Entry_Image_Upload_Name': userEntryImageUploadName,
      'User_Entry_Image_Upload_Path': userEntryImageUploadPath,
      'User_Entry_Image_Upload_Uploaded': userEntryImageUploadUploaded,
      'User_Entry_Image_Upload_ID': userEntryImageUploadID,
      'User_Entry_Video_Upload_Number': userEntryVideoUploadNumber,
      'User_Entry_Video_Upload_Name': userEntryVideoUploadName,
      'User_Entry_Video_Upload_Path': userEntryVideoUploadPath,
      'User_Entry_Video_Upload_Uploaded': userEntryVideoUploadUploaded,
      'User_Entry_Video_Upload_ID': userEntryVideoUploadID,
      'Autobiography_Ref': autobiographyRef,
      'User_Autobiography_Ref': userAutobiographyRef,
      'User_Entry_ID': userEntryID,
      'User_Entry_UID': userEntryUID,
      'User_Chapter_Ref': userChapterRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserEntriesRecordDocumentEquality implements Equality<UserEntriesRecord> {
  const UserEntriesRecordDocumentEquality();

  @override
  bool equals(UserEntriesRecord? e1, UserEntriesRecord? e2) {
    return e1?.entryNumber == e2?.entryNumber &&
        e1?.entryTitle == e2?.entryTitle &&
        e1?.entryContent == e2?.entryContent &&
        e1?.audioConversation == e2?.audioConversation &&
        e1?.imageUpload == e2?.imageUpload &&
        e1?.videoUpload == e2?.videoUpload &&
        e1?.entryCreated == e2?.entryCreated &&
        e1?.entryUpdated == e2?.entryUpdated &&
        e1?.threadId == e2?.threadId &&
        e1?.assistantId == e2?.assistantId &&
        e1?.userChapterId == e2?.userChapterId &&
        e1?.userAutobiographyId == e2?.userAutobiographyId &&
        e1?.aiResponseId == e2?.aiResponseId &&
        e1?.entryId == e2?.entryId &&
        e1?.userEntryNumber == e2?.userEntryNumber &&
        e1?.userEntryTitle == e2?.userEntryTitle &&
        e1?.userEntryContent == e2?.userEntryContent &&
        e1?.userEntryCreated == e2?.userEntryCreated &&
        e1?.userEntryUpdated == e2?.userEntryUpdated &&
        e1?.userEntryAudioUploadNumber == e2?.userEntryAudioUploadNumber &&
        e1?.userEntryAudioUploadName == e2?.userEntryAudioUploadName &&
        e1?.userEntryAudioUploadPath == e2?.userEntryAudioUploadPath &&
        e1?.userEntryAudioUploadCreated == e2?.userEntryAudioUploadCreated &&
        e1?.userEntryAudioUploadUploaded == e2?.userEntryAudioUploadUploaded &&
        e1?.userEntryAudioUploadID == e2?.userEntryAudioUploadID &&
        e1?.userEntryImageUploadNumber == e2?.userEntryImageUploadNumber &&
        e1?.userEntryImageUploadName == e2?.userEntryImageUploadName &&
        e1?.userEntryImageUploadPath == e2?.userEntryImageUploadPath &&
        e1?.userEntryImageUploadUploaded == e2?.userEntryImageUploadUploaded &&
        e1?.userEntryImageUploadID == e2?.userEntryImageUploadID &&
        e1?.userEntryVideoUploadNumber == e2?.userEntryVideoUploadNumber &&
        e1?.userEntryVideoUploadName == e2?.userEntryVideoUploadName &&
        e1?.userEntryVideoUploadPath == e2?.userEntryVideoUploadPath &&
        e1?.userEntryVideoUploadUploaded == e2?.userEntryVideoUploadUploaded &&
        e1?.userEntryVideoUploadID == e2?.userEntryVideoUploadID &&
        e1?.autobiographyRef == e2?.autobiographyRef &&
        e1?.userAutobiographyRef == e2?.userAutobiographyRef &&
        e1?.userEntryID == e2?.userEntryID &&
        e1?.userEntryUID == e2?.userEntryUID &&
        e1?.userChapterRef == e2?.userChapterRef;
  }

  @override
  int hash(UserEntriesRecord? e) => const ListEquality().hash([
        e?.entryNumber,
        e?.entryTitle,
        e?.entryContent,
        e?.audioConversation,
        e?.imageUpload,
        e?.videoUpload,
        e?.entryCreated,
        e?.entryUpdated,
        e?.threadId,
        e?.assistantId,
        e?.userChapterId,
        e?.userAutobiographyId,
        e?.aiResponseId,
        e?.entryId,
        e?.userEntryNumber,
        e?.userEntryTitle,
        e?.userEntryContent,
        e?.userEntryCreated,
        e?.userEntryUpdated,
        e?.userEntryAudioUploadNumber,
        e?.userEntryAudioUploadName,
        e?.userEntryAudioUploadPath,
        e?.userEntryAudioUploadCreated,
        e?.userEntryAudioUploadUploaded,
        e?.userEntryAudioUploadID,
        e?.userEntryImageUploadNumber,
        e?.userEntryImageUploadName,
        e?.userEntryImageUploadPath,
        e?.userEntryImageUploadUploaded,
        e?.userEntryImageUploadID,
        e?.userEntryVideoUploadNumber,
        e?.userEntryVideoUploadName,
        e?.userEntryVideoUploadPath,
        e?.userEntryVideoUploadUploaded,
        e?.userEntryVideoUploadID,
        e?.autobiographyRef,
        e?.userAutobiographyRef,
        e?.userEntryID,
        e?.userEntryUID,
        e?.userChapterRef
      ]);

  @override
  bool isValidKey(Object? o) => o is UserEntriesRecord;
}
