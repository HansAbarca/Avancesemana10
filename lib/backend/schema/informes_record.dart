import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InformesRecord extends FirestoreRecord {
  InformesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "PersonaQueHizoInforme" field.
  DocumentReference? _personaQueHizoInforme;
  DocumentReference? get personaQueHizoInforme => _personaQueHizoInforme;
  bool hasPersonaQueHizoInforme() => _personaQueHizoInforme != null;

  // "PersonaDeLaQueSeInforma" field.
  DocumentReference? _personaDeLaQueSeInforma;
  DocumentReference? get personaDeLaQueSeInforma => _personaDeLaQueSeInforma;
  bool hasPersonaDeLaQueSeInforma() => _personaDeLaQueSeInforma != null;

  // "TipoDeInforme" field.
  String? _tipoDeInforme;
  String get tipoDeInforme => _tipoDeInforme ?? '';
  bool hasTipoDeInforme() => _tipoDeInforme != null;

  // "DetalleDeInforme" field.
  String? _detalleDeInforme;
  String get detalleDeInforme => _detalleDeInforme ?? '';
  bool hasDetalleDeInforme() => _detalleDeInforme != null;

  // "ItemInventario" field.
  DocumentReference? _itemInventario;
  DocumentReference? get itemInventario => _itemInventario;
  bool hasItemInventario() => _itemInventario != null;

  void _initializeFields() {
    _personaQueHizoInforme =
        snapshotData['PersonaQueHizoInforme'] as DocumentReference?;
    _personaDeLaQueSeInforma =
        snapshotData['PersonaDeLaQueSeInforma'] as DocumentReference?;
    _tipoDeInforme = snapshotData['TipoDeInforme'] as String?;
    _detalleDeInforme = snapshotData['DetalleDeInforme'] as String?;
    _itemInventario = snapshotData['ItemInventario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Informes');

  static Stream<InformesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InformesRecord.fromSnapshot(s));

  static Future<InformesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InformesRecord.fromSnapshot(s));

  static InformesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InformesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InformesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InformesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InformesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InformesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInformesRecordData({
  DocumentReference? personaQueHizoInforme,
  DocumentReference? personaDeLaQueSeInforma,
  String? tipoDeInforme,
  String? detalleDeInforme,
  DocumentReference? itemInventario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'PersonaQueHizoInforme': personaQueHizoInforme,
      'PersonaDeLaQueSeInforma': personaDeLaQueSeInforma,
      'TipoDeInforme': tipoDeInforme,
      'DetalleDeInforme': detalleDeInforme,
      'ItemInventario': itemInventario,
    }.withoutNulls,
  );

  return firestoreData;
}

class InformesRecordDocumentEquality implements Equality<InformesRecord> {
  const InformesRecordDocumentEquality();

  @override
  bool equals(InformesRecord? e1, InformesRecord? e2) {
    return e1?.personaQueHizoInforme == e2?.personaQueHizoInforme &&
        e1?.personaDeLaQueSeInforma == e2?.personaDeLaQueSeInforma &&
        e1?.tipoDeInforme == e2?.tipoDeInforme &&
        e1?.detalleDeInforme == e2?.detalleDeInforme &&
        e1?.itemInventario == e2?.itemInventario;
  }

  @override
  int hash(InformesRecord? e) => const ListEquality().hash([
        e?.personaQueHizoInforme,
        e?.personaDeLaQueSeInforma,
        e?.tipoDeInforme,
        e?.detalleDeInforme,
        e?.itemInventario
      ]);

  @override
  bool isValidKey(Object? o) => o is InformesRecord;
}
