// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AutobiographyFrontCoverDataStruct extends FFFirebaseStruct {
  AutobiographyFrontCoverDataStruct({
    String? yellowFrontCover,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _yellowFrontCover = yellowFrontCover,
        super(firestoreUtilData);

  // "YellowFrontCover" field.
  String? _yellowFrontCover;
  String get yellowFrontCover =>
      _yellowFrontCover ??
      'Image.asset(\'images/Yellow_Front_Cover_Design.png\')';
  set yellowFrontCover(String? val) => _yellowFrontCover = val;

  bool hasYellowFrontCover() => _yellowFrontCover != null;

  static AutobiographyFrontCoverDataStruct fromMap(Map<String, dynamic> data) =>
      AutobiographyFrontCoverDataStruct(
        yellowFrontCover: data['YellowFrontCover'] as String?,
      );

  static AutobiographyFrontCoverDataStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AutobiographyFrontCoverDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'YellowFrontCover': _yellowFrontCover,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'YellowFrontCover': serializeParam(
          _yellowFrontCover,
          ParamType.String,
        ),
      }.withoutNulls;

  static AutobiographyFrontCoverDataStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AutobiographyFrontCoverDataStruct(
        yellowFrontCover: deserializeParam(
          data['YellowFrontCover'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AutobiographyFrontCoverDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AutobiographyFrontCoverDataStruct &&
        yellowFrontCover == other.yellowFrontCover;
  }

  @override
  int get hashCode => const ListEquality().hash([yellowFrontCover]);
}

AutobiographyFrontCoverDataStruct createAutobiographyFrontCoverDataStruct({
  String? yellowFrontCover,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AutobiographyFrontCoverDataStruct(
      yellowFrontCover: yellowFrontCover,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AutobiographyFrontCoverDataStruct? updateAutobiographyFrontCoverDataStruct(
  AutobiographyFrontCoverDataStruct? autobiographyFrontCoverData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    autobiographyFrontCoverData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAutobiographyFrontCoverDataStructData(
  Map<String, dynamic> firestoreData,
  AutobiographyFrontCoverDataStruct? autobiographyFrontCoverData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (autobiographyFrontCoverData == null) {
    return;
  }
  if (autobiographyFrontCoverData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      autobiographyFrontCoverData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final autobiographyFrontCoverDataData =
      getAutobiographyFrontCoverDataFirestoreData(
          autobiographyFrontCoverData, forFieldValue);
  final nestedData = autobiographyFrontCoverDataData
      .map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      autobiographyFrontCoverData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAutobiographyFrontCoverDataFirestoreData(
  AutobiographyFrontCoverDataStruct? autobiographyFrontCoverData, [
  bool forFieldValue = false,
]) {
  if (autobiographyFrontCoverData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(autobiographyFrontCoverData.toMap());

  // Add any Firestore field values
  autobiographyFrontCoverData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAutobiographyFrontCoverDataListFirestoreData(
  List<AutobiographyFrontCoverDataStruct>? autobiographyFrontCoverDatas,
) =>
    autobiographyFrontCoverDatas
        ?.map((e) => getAutobiographyFrontCoverDataFirestoreData(e, true))
        .toList() ??
    [];
