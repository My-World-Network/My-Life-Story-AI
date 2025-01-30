// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AIChapterDataStruct extends FFFirebaseStruct {
  AIChapterDataStruct({
    String? aIChapterTitleData,
    DocumentReference? aIChapterRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _aIChapterTitleData = aIChapterTitleData,
        _aIChapterRef = aIChapterRef,
        super(firestoreUtilData);

  // "AIChapterTitleData" field.
  String? _aIChapterTitleData;
  String get aIChapterTitleData => _aIChapterTitleData ?? '';
  set aIChapterTitleData(String? val) => _aIChapterTitleData = val;

  bool hasAIChapterTitleData() => _aIChapterTitleData != null;

  // "AIChapterRef" field.
  DocumentReference? _aIChapterRef;
  DocumentReference? get aIChapterRef => _aIChapterRef;
  set aIChapterRef(DocumentReference? val) => _aIChapterRef = val;

  bool hasAIChapterRef() => _aIChapterRef != null;

  static AIChapterDataStruct fromMap(Map<String, dynamic> data) =>
      AIChapterDataStruct(
        aIChapterTitleData: data['AIChapterTitleData'] as String?,
        aIChapterRef: data['AIChapterRef'] as DocumentReference?,
      );

  static AIChapterDataStruct? maybeFromMap(dynamic data) => data is Map
      ? AIChapterDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'AIChapterTitleData': _aIChapterTitleData,
        'AIChapterRef': _aIChapterRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'AIChapterTitleData': serializeParam(
          _aIChapterTitleData,
          ParamType.String,
        ),
        'AIChapterRef': serializeParam(
          _aIChapterRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static AIChapterDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      AIChapterDataStruct(
        aIChapterTitleData: deserializeParam(
          data['AIChapterTitleData'],
          ParamType.String,
          false,
        ),
        aIChapterRef: deserializeParam(
          data['AIChapterRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Autobiographies', 'AI_Chapters'],
        ),
      );

  @override
  String toString() => 'AIChapterDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AIChapterDataStruct &&
        aIChapterTitleData == other.aIChapterTitleData &&
        aIChapterRef == other.aIChapterRef;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([aIChapterTitleData, aIChapterRef]);
}

AIChapterDataStruct createAIChapterDataStruct({
  String? aIChapterTitleData,
  DocumentReference? aIChapterRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AIChapterDataStruct(
      aIChapterTitleData: aIChapterTitleData,
      aIChapterRef: aIChapterRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AIChapterDataStruct? updateAIChapterDataStruct(
  AIChapterDataStruct? aIChapterData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aIChapterData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAIChapterDataStructData(
  Map<String, dynamic> firestoreData,
  AIChapterDataStruct? aIChapterData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aIChapterData == null) {
    return;
  }
  if (aIChapterData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && aIChapterData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aIChapterDataData =
      getAIChapterDataFirestoreData(aIChapterData, forFieldValue);
  final nestedData =
      aIChapterDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = aIChapterData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAIChapterDataFirestoreData(
  AIChapterDataStruct? aIChapterData, [
  bool forFieldValue = false,
]) {
  if (aIChapterData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aIChapterData.toMap());

  // Add any Firestore field values
  aIChapterData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAIChapterDataListFirestoreData(
  List<AIChapterDataStruct>? aIChapterDatas,
) =>
    aIChapterDatas
        ?.map((e) => getAIChapterDataFirestoreData(e, true))
        .toList() ??
    [];
