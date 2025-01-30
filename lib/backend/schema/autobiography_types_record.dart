import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AutobiographyTypesRecord extends FirestoreRecord {
  AutobiographyTypesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Autobiography_Type" field.
  String? _autobiographyType;
  String get autobiographyType => _autobiographyType ?? '';
  bool hasAutobiographyType() => _autobiographyType != null;

  // "Autobiography_Type_Ref" field.
  String? _autobiographyTypeRef;
  String get autobiographyTypeRef => _autobiographyTypeRef ?? '';
  bool hasAutobiographyTypeRef() => _autobiographyTypeRef != null;

  void _initializeFields() {
    _autobiographyType = snapshotData['Autobiography_Type'] as String?;
    _autobiographyTypeRef = snapshotData['Autobiography_Type_Ref'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Autobiography_Types');

  static Stream<AutobiographyTypesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AutobiographyTypesRecord.fromSnapshot(s));

  static Future<AutobiographyTypesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AutobiographyTypesRecord.fromSnapshot(s));

  static AutobiographyTypesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AutobiographyTypesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AutobiographyTypesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AutobiographyTypesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AutobiographyTypesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AutobiographyTypesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAutobiographyTypesRecordData({
  String? autobiographyType,
  String? autobiographyTypeRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Autobiography_Type': autobiographyType,
      'Autobiography_Type_Ref': autobiographyTypeRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AutobiographyTypesRecordDocumentEquality
    implements Equality<AutobiographyTypesRecord> {
  const AutobiographyTypesRecordDocumentEquality();

  @override
  bool equals(AutobiographyTypesRecord? e1, AutobiographyTypesRecord? e2) {
    return e1?.autobiographyType == e2?.autobiographyType &&
        e1?.autobiographyTypeRef == e2?.autobiographyTypeRef;
  }

  @override
  int hash(AutobiographyTypesRecord? e) => const ListEquality()
      .hash([e?.autobiographyType, e?.autobiographyTypeRef]);

  @override
  bool isValidKey(Object? o) => o is AutobiographyTypesRecord;
}
