import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContabilidadRecord extends FirestoreRecord {
  ContabilidadRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "ClienteQueCompra" field.
  String? _clienteQueCompra;
  String get clienteQueCompra => _clienteQueCompra ?? '';
  bool hasClienteQueCompra() => _clienteQueCompra != null;

  // "ItemsComprados" field.
  List<String>? _itemsComprados;
  List<String> get itemsComprados => _itemsComprados ?? const [];
  bool hasItemsComprados() => _itemsComprados != null;

  // "CatidadesCompradas" field.
  List<int>? _catidadesCompradas;
  List<int> get catidadesCompradas => _catidadesCompradas ?? const [];
  bool hasCatidadesCompradas() => _catidadesCompradas != null;

  // "Precios" field.
  List<double>? _precios;
  List<double> get precios => _precios ?? const [];
  bool hasPrecios() => _precios != null;

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _fecha = snapshotData['Fecha'] as DateTime?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _clienteQueCompra = snapshotData['ClienteQueCompra'] as String?;
    _itemsComprados = getDataList(snapshotData['ItemsComprados']);
    _catidadesCompradas = getDataList(snapshotData['CatidadesCompradas']);
    _precios = getDataList(snapshotData['Precios']);
    _id = snapshotData['ID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Contabilidad');

  static Stream<ContabilidadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContabilidadRecord.fromSnapshot(s));

  static Future<ContabilidadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContabilidadRecord.fromSnapshot(s));

  static ContabilidadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContabilidadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContabilidadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContabilidadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContabilidadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContabilidadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContabilidadRecordData({
  DateTime? fecha,
  String? descripcion,
  String? clienteQueCompra,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Fecha': fecha,
      'Descripcion': descripcion,
      'ClienteQueCompra': clienteQueCompra,
      'ID': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContabilidadRecordDocumentEquality
    implements Equality<ContabilidadRecord> {
  const ContabilidadRecordDocumentEquality();

  @override
  bool equals(ContabilidadRecord? e1, ContabilidadRecord? e2) {
    const listEquality = ListEquality();
    return e1?.fecha == e2?.fecha &&
        e1?.descripcion == e2?.descripcion &&
        e1?.clienteQueCompra == e2?.clienteQueCompra &&
        listEquality.equals(e1?.itemsComprados, e2?.itemsComprados) &&
        listEquality.equals(e1?.catidadesCompradas, e2?.catidadesCompradas) &&
        listEquality.equals(e1?.precios, e2?.precios) &&
        e1?.id == e2?.id;
  }

  @override
  int hash(ContabilidadRecord? e) => const ListEquality().hash([
        e?.fecha,
        e?.descripcion,
        e?.clienteQueCompra,
        e?.itemsComprados,
        e?.catidadesCompradas,
        e?.precios,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is ContabilidadRecord;
}
