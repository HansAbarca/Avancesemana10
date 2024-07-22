// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemInventarioStruct extends FFFirebaseStruct {
  ItemInventarioStruct({
    int? cantidadDeseada,
    String? descripcion,
    String? categoria,
    String? nombreItem,
    String? imagen,
    DocumentReference? referenciaItem,
    double? precio,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cantidadDeseada = cantidadDeseada,
        _descripcion = descripcion,
        _categoria = categoria,
        _nombreItem = nombreItem,
        _imagen = imagen,
        _referenciaItem = referenciaItem,
        _precio = precio,
        super(firestoreUtilData);

  // "CantidadDeseada" field.
  int? _cantidadDeseada;
  int get cantidadDeseada => _cantidadDeseada ?? 0;
  set cantidadDeseada(int? val) => _cantidadDeseada = val;

  void incrementCantidadDeseada(int amount) =>
      cantidadDeseada = cantidadDeseada + amount;

  bool hasCantidadDeseada() => _cantidadDeseada != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  set categoria(String? val) => _categoria = val;

  bool hasCategoria() => _categoria != null;

  // "NombreItem" field.
  String? _nombreItem;
  String get nombreItem => _nombreItem ?? '';
  set nombreItem(String? val) => _nombreItem = val;

  bool hasNombreItem() => _nombreItem != null;

  // "Imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;

  bool hasImagen() => _imagen != null;

  // "ReferenciaItem" field.
  DocumentReference? _referenciaItem;
  DocumentReference? get referenciaItem => _referenciaItem;
  set referenciaItem(DocumentReference? val) => _referenciaItem = val;

  bool hasReferenciaItem() => _referenciaItem != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  set precio(double? val) => _precio = val;

  void incrementPrecio(double amount) => precio = precio + amount;

  bool hasPrecio() => _precio != null;

  static ItemInventarioStruct fromMap(Map<String, dynamic> data) =>
      ItemInventarioStruct(
        cantidadDeseada: castToType<int>(data['CantidadDeseada']),
        descripcion: data['Descripcion'] as String?,
        categoria: data['Categoria'] as String?,
        nombreItem: data['NombreItem'] as String?,
        imagen: data['Imagen'] as String?,
        referenciaItem: data['ReferenciaItem'] as DocumentReference?,
        precio: castToType<double>(data['Precio']),
      );

  static ItemInventarioStruct? maybeFromMap(dynamic data) => data is Map
      ? ItemInventarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CantidadDeseada': _cantidadDeseada,
        'Descripcion': _descripcion,
        'Categoria': _categoria,
        'NombreItem': _nombreItem,
        'Imagen': _imagen,
        'ReferenciaItem': _referenciaItem,
        'Precio': _precio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CantidadDeseada': serializeParam(
          _cantidadDeseada,
          ParamType.int,
        ),
        'Descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'Categoria': serializeParam(
          _categoria,
          ParamType.String,
        ),
        'NombreItem': serializeParam(
          _nombreItem,
          ParamType.String,
        ),
        'Imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
        'ReferenciaItem': serializeParam(
          _referenciaItem,
          ParamType.DocumentReference,
        ),
        'Precio': serializeParam(
          _precio,
          ParamType.double,
        ),
      }.withoutNulls;

  static ItemInventarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemInventarioStruct(
        cantidadDeseada: deserializeParam(
          data['CantidadDeseada'],
          ParamType.int,
          false,
        ),
        descripcion: deserializeParam(
          data['Descripcion'],
          ParamType.String,
          false,
        ),
        categoria: deserializeParam(
          data['Categoria'],
          ParamType.String,
          false,
        ),
        nombreItem: deserializeParam(
          data['NombreItem'],
          ParamType.String,
          false,
        ),
        imagen: deserializeParam(
          data['Imagen'],
          ParamType.String,
          false,
        ),
        referenciaItem: deserializeParam(
          data['ReferenciaItem'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Inventario'],
        ),
        precio: deserializeParam(
          data['Precio'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ItemInventarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ItemInventarioStruct &&
        cantidadDeseada == other.cantidadDeseada &&
        descripcion == other.descripcion &&
        categoria == other.categoria &&
        nombreItem == other.nombreItem &&
        imagen == other.imagen &&
        referenciaItem == other.referenciaItem &&
        precio == other.precio;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cantidadDeseada,
        descripcion,
        categoria,
        nombreItem,
        imagen,
        referenciaItem,
        precio
      ]);
}

ItemInventarioStruct createItemInventarioStruct({
  int? cantidadDeseada,
  String? descripcion,
  String? categoria,
  String? nombreItem,
  String? imagen,
  DocumentReference? referenciaItem,
  double? precio,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItemInventarioStruct(
      cantidadDeseada: cantidadDeseada,
      descripcion: descripcion,
      categoria: categoria,
      nombreItem: nombreItem,
      imagen: imagen,
      referenciaItem: referenciaItem,
      precio: precio,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ItemInventarioStruct? updateItemInventarioStruct(
  ItemInventarioStruct? itemInventario, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    itemInventario
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addItemInventarioStructData(
  Map<String, dynamic> firestoreData,
  ItemInventarioStruct? itemInventario,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (itemInventario == null) {
    return;
  }
  if (itemInventario.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && itemInventario.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itemInventarioData =
      getItemInventarioFirestoreData(itemInventario, forFieldValue);
  final nestedData =
      itemInventarioData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = itemInventario.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getItemInventarioFirestoreData(
  ItemInventarioStruct? itemInventario, [
  bool forFieldValue = false,
]) {
  if (itemInventario == null) {
    return {};
  }
  final firestoreData = mapToFirestore(itemInventario.toMap());

  // Add any Firestore field values
  itemInventario.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItemInventarioListFirestoreData(
  List<ItemInventarioStruct>? itemInventarios,
) =>
    itemInventarios
        ?.map((e) => getItemInventarioFirestoreData(e, true))
        .toList() ??
    [];
