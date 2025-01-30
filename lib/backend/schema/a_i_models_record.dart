import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIModelsRecord extends FirestoreRecord {
  AIModelsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "AI_Model" field.
  String? _aIModel;
  String get aIModel => _aIModel ?? '';
  bool hasAIModel() => _aIModel != null;

  // "AI_Model_Ref" field.
  String? _aIModelRef;
  String get aIModelRef => _aIModelRef ?? '';
  bool hasAIModelRef() => _aIModelRef != null;

  void _initializeFields() {
    _aIModel = snapshotData['AI_Model'] as String?;
    _aIModelRef = snapshotData['AI_Model_Ref'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AI_Models');

  static Stream<AIModelsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AIModelsRecord.fromSnapshot(s));

  static Future<AIModelsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AIModelsRecord.fromSnapshot(s));

  static AIModelsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AIModelsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AIModelsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AIModelsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AIModelsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AIModelsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAIModelsRecordData({
  String? aIModel,
  String? aIModelRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AI_Model': aIModel,
      'AI_Model_Ref': aIModelRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AIModelsRecordDocumentEquality implements Equality<AIModelsRecord> {
  const AIModelsRecordDocumentEquality();

  @override
  bool equals(AIModelsRecord? e1, AIModelsRecord? e2) {
    return e1?.aIModel == e2?.aIModel && e1?.aIModelRef == e2?.aIModelRef;
  }

  @override
  int hash(AIModelsRecord? e) =>
      const ListEquality().hash([e?.aIModel, e?.aIModelRef]);

  @override
  bool isValidKey(Object? o) => o is AIModelsRecord;
}
