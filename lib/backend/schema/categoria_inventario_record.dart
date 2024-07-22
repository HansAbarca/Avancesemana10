import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaInventarioRecord extends FirestoreRecord {
  CategoriaInventarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  void _initializeFields() {
    _categoria = snapshotData['Categoria'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CategoriaInventario');

  static Stream<CategoriaInventarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategoriaInventarioRecord.fromSnapshot(s));

  static Future<CategoriaInventarioRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CategoriaInventarioRecord.fromSnapshot(s));

  static CategoriaInventarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategoriaInventarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategoriaInventarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategoriaInventarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategoriaInventarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategoriaInventarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategoriaInventarioRecordData({
  String? categoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Categoria': categoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategoriaInventarioRecordDocumentEquality
    implements Equality<CategoriaInventarioRecord> {
  const CategoriaInventarioRecordDocumentEquality();

  @override
  bool equals(CategoriaInventarioRecord? e1, CategoriaInventarioRecord? e2) {
    return e1?.categoria == e2?.categoria;
  }

  @override
  int hash(CategoriaInventarioRecord? e) =>
      const ListEquality().hash([e?.categoria]);

  @override
  bool isValidKey(Object? o) => o is CategoriaInventarioRecord;
}
