import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnalisisDeDatosRecord extends FirestoreRecord {
  AnalisisDeDatosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Accion" field.
  String? _accion;
  String get accion => _accion ?? '';
  bool hasAccion() => _accion != null;

  // "UsiarioQueRealizoLaAccion" field.
  DocumentReference? _usiarioQueRealizoLaAccion;
  DocumentReference? get usiarioQueRealizoLaAccion =>
      _usiarioQueRealizoLaAccion;
  bool hasUsiarioQueRealizoLaAccion() => _usiarioQueRealizoLaAccion != null;

  // "FechaRegistro" field.
  DateTime? _fechaRegistro;
  DateTime? get fechaRegistro => _fechaRegistro;
  bool hasFechaRegistro() => _fechaRegistro != null;

  void _initializeFields() {
    _accion = snapshotData['Accion'] as String?;
    _usiarioQueRealizoLaAccion =
        snapshotData['UsiarioQueRealizoLaAccion'] as DocumentReference?;
    _fechaRegistro = snapshotData['FechaRegistro'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AnalisisDeDatos');

  static Stream<AnalisisDeDatosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnalisisDeDatosRecord.fromSnapshot(s));

  static Future<AnalisisDeDatosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnalisisDeDatosRecord.fromSnapshot(s));

  static AnalisisDeDatosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnalisisDeDatosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnalisisDeDatosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnalisisDeDatosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnalisisDeDatosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnalisisDeDatosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnalisisDeDatosRecordData({
  String? accion,
  DocumentReference? usiarioQueRealizoLaAccion,
  DateTime? fechaRegistro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Accion': accion,
      'UsiarioQueRealizoLaAccion': usiarioQueRealizoLaAccion,
      'FechaRegistro': fechaRegistro,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnalisisDeDatosRecordDocumentEquality
    implements Equality<AnalisisDeDatosRecord> {
  const AnalisisDeDatosRecordDocumentEquality();

  @override
  bool equals(AnalisisDeDatosRecord? e1, AnalisisDeDatosRecord? e2) {
    return e1?.accion == e2?.accion &&
        e1?.usiarioQueRealizoLaAccion == e2?.usiarioQueRealizoLaAccion &&
        e1?.fechaRegistro == e2?.fechaRegistro;
  }

  @override
  int hash(AnalisisDeDatosRecord? e) => const ListEquality()
      .hash([e?.accion, e?.usiarioQueRealizoLaAccion, e?.fechaRegistro]);

  @override
  bool isValidKey(Object? o) => o is AnalisisDeDatosRecord;
}
