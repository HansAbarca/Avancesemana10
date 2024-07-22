import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "itemInventario" field.
  ItemInventarioStruct? _itemInventario;
  ItemInventarioStruct get itemInventario =>
      _itemInventario ?? ItemInventarioStruct();
  bool hasItemInventario() => _itemInventario != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _itemInventario =
        ItemInventarioStruct.maybeFromMap(snapshotData['itemInventario']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Carrito')
          : FirebaseFirestore.instance.collectionGroup('Carrito');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Carrito').doc(id);

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  ItemInventarioStruct? itemInventario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemInventario': ItemInventarioStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "itemInventario" field.
  addItemInventarioStructData(firestoreData, itemInventario, 'itemInventario');

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    return e1?.itemInventario == e2?.itemInventario;
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality().hash([e?.itemInventario]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
