// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIResponseStruct extends FFFirebaseStruct {
  AIResponseStruct({
    int? responseNumber,
    String? responsetitle,
    String? responseContent,
    List<String>? responseReferences,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _responseNumber = responseNumber,
        _responsetitle = responsetitle,
        _responseContent = responseContent,
        _responseReferences = responseReferences,
        super(firestoreUtilData);

  // "response_number" field.
  int? _responseNumber;
  int get responseNumber => _responseNumber ?? 0;
  set responseNumber(int? val) => _responseNumber = val;

  void incrementResponseNumber(int amount) =>
      responseNumber = responseNumber + amount;

  bool hasResponseNumber() => _responseNumber != null;

  // "responsetitle" field.
  String? _responsetitle;
  String get responsetitle => _responsetitle ?? '';
  set responsetitle(String? val) => _responsetitle = val;

  bool hasResponsetitle() => _responsetitle != null;

  // "response_content" field.
  String? _responseContent;
  String get responseContent => _responseContent ?? '';
  set responseContent(String? val) => _responseContent = val;

  bool hasResponseContent() => _responseContent != null;

  // "response_references" field.
  List<String>? _responseReferences;
  List<String> get responseReferences => _responseReferences ?? const [];
  set responseReferences(List<String>? val) => _responseReferences = val;

  void updateResponseReferences(Function(List<String>) updateFn) {
    updateFn(_responseReferences ??= []);
  }

  bool hasResponseReferences() => _responseReferences != null;

  static AIResponseStruct fromMap(Map<String, dynamic> data) =>
      AIResponseStruct(
        responseNumber: castToType<int>(data['response_number']),
        responsetitle: data['responsetitle'] as String?,
        responseContent: data['response_content'] as String?,
        responseReferences: getDataList(data['response_references']),
      );

  static AIResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? AIResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'response_number': _responseNumber,
        'responsetitle': _responsetitle,
        'response_content': _responseContent,
        'response_references': _responseReferences,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'response_number': serializeParam(
          _responseNumber,
          ParamType.int,
        ),
        'responsetitle': serializeParam(
          _responsetitle,
          ParamType.String,
        ),
        'response_content': serializeParam(
          _responseContent,
          ParamType.String,
        ),
        'response_references': serializeParam(
          _responseReferences,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AIResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      AIResponseStruct(
        responseNumber: deserializeParam(
          data['response_number'],
          ParamType.int,
          false,
        ),
        responsetitle: deserializeParam(
          data['responsetitle'],
          ParamType.String,
          false,
        ),
        responseContent: deserializeParam(
          data['response_content'],
          ParamType.String,
          false,
        ),
        responseReferences: deserializeParam<String>(
          data['response_references'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AIResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AIResponseStruct &&
        responseNumber == other.responseNumber &&
        responsetitle == other.responsetitle &&
        responseContent == other.responseContent &&
        listEquality.equals(responseReferences, other.responseReferences);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [responseNumber, responsetitle, responseContent, responseReferences]);
}

AIResponseStruct createAIResponseStruct({
  int? responseNumber,
  String? responsetitle,
  String? responseContent,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AIResponseStruct(
      responseNumber: responseNumber,
      responsetitle: responsetitle,
      responseContent: responseContent,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AIResponseStruct? updateAIResponseStruct(
  AIResponseStruct? aIResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    aIResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAIResponseStructData(
  Map<String, dynamic> firestoreData,
  AIResponseStruct? aIResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (aIResponse == null) {
    return;
  }
  if (aIResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && aIResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final aIResponseData = getAIResponseFirestoreData(aIResponse, forFieldValue);
  final nestedData = aIResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = aIResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAIResponseFirestoreData(
  AIResponseStruct? aIResponse, [
  bool forFieldValue = false,
]) {
  if (aIResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(aIResponse.toMap());

  // Add any Firestore field values
  aIResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAIResponseListFirestoreData(
  List<AIResponseStruct>? aIResponses,
) =>
    aIResponses?.map((e) => getAIResponseFirestoreData(e, true)).toList() ?? [];
