import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PreguntasFrecuentesRecord extends FirestoreRecord {
  PreguntasFrecuentesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Pregunta" field.
  String? _pregunta;
  String get pregunta => _pregunta ?? '';
  bool hasPregunta() => _pregunta != null;

  // "Respuesta" field.
  String? _respuesta;
  String get respuesta => _respuesta ?? '';
  bool hasRespuesta() => _respuesta != null;

  void _initializeFields() {
    _pregunta = snapshotData['Pregunta'] as String?;
    _respuesta = snapshotData['Respuesta'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PreguntasFrecuentes');

  static Stream<PreguntasFrecuentesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreguntasFrecuentesRecord.fromSnapshot(s));

  static Future<PreguntasFrecuentesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PreguntasFrecuentesRecord.fromSnapshot(s));

  static PreguntasFrecuentesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreguntasFrecuentesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreguntasFrecuentesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreguntasFrecuentesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreguntasFrecuentesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreguntasFrecuentesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreguntasFrecuentesRecordData({
  String? pregunta,
  String? respuesta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Pregunta': pregunta,
      'Respuesta': respuesta,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreguntasFrecuentesRecordDocumentEquality
    implements Equality<PreguntasFrecuentesRecord> {
  const PreguntasFrecuentesRecordDocumentEquality();

  @override
  bool equals(PreguntasFrecuentesRecord? e1, PreguntasFrecuentesRecord? e2) {
    return e1?.pregunta == e2?.pregunta && e1?.respuesta == e2?.respuesta;
  }

  @override
  int hash(PreguntasFrecuentesRecord? e) =>
      const ListEquality().hash([e?.pregunta, e?.respuesta]);

  @override
  bool isValidKey(Object? o) => o is PreguntasFrecuentesRecord;
}
