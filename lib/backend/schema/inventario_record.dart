import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioRecord extends FirestoreRecord {
  InventarioRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "ItemComprado" field.
  int? _itemComprado;
  int get itemComprado => _itemComprado ?? 0;
  bool hasItemComprado() => _itemComprado != null;

  void _initializeFields() {
    _cantidad = castToType<int>(snapshotData['Cantidad']);
    _descripcion = snapshotData['Descripcion'] as String?;
    _categoria = snapshotData['Categoria'] as String?;
    _precio = castToType<double>(snapshotData['Precio']);
    _nombre = snapshotData['Nombre'] as String?;
    _imagen = snapshotData['Imagen'] as String?;
    _itemComprado = castToType<int>(snapshotData['ItemComprado']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inventario');

  static Stream<InventarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioRecord.fromSnapshot(s));

  static Future<InventarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventarioRecord.fromSnapshot(s));

  static InventarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioRecordData({
  int? cantidad,
  String? descripcion,
  String? categoria,
  double? precio,
  String? nombre,
  String? imagen,
  int? itemComprado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Cantidad': cantidad,
      'Descripcion': descripcion,
      'Categoria': categoria,
      'Precio': precio,
      'Nombre': nombre,
      'Imagen': imagen,
      'ItemComprado': itemComprado,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioRecordDocumentEquality implements Equality<InventarioRecord> {
  const InventarioRecordDocumentEquality();

  @override
  bool equals(InventarioRecord? e1, InventarioRecord? e2) {
    return e1?.cantidad == e2?.cantidad &&
        e1?.descripcion == e2?.descripcion &&
        e1?.categoria == e2?.categoria &&
        e1?.precio == e2?.precio &&
        e1?.nombre == e2?.nombre &&
        e1?.imagen == e2?.imagen &&
        e1?.itemComprado == e2?.itemComprado;
  }

  @override
  int hash(InventarioRecord? e) => const ListEquality().hash([
        e?.cantidad,
        e?.descripcion,
        e?.categoria,
        e?.precio,
        e?.nombre,
        e?.imagen,
        e?.itemComprado
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioRecord;
}
