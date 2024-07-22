// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NoHaySuficienteStruct extends FFFirebaseStruct {
  NoHaySuficienteStruct({
    String? foto,
    String? nombreItem,
    int? cantidadSolicitada,
    int? cantidadDisponible,
    DocumentReference? referenciaItem,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _foto = foto,
        _nombreItem = nombreItem,
        _cantidadSolicitada = cantidadSolicitada,
        _cantidadDisponible = cantidadDisponible,
        _referenciaItem = referenciaItem,
        super(firestoreUtilData);

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;

  bool hasFoto() => _foto != null;

  // "NombreItem" field.
  String? _nombreItem;
  String get nombreItem => _nombreItem ?? '';
  set nombreItem(String? val) => _nombreItem = val;

  bool hasNombreItem() => _nombreItem != null;

  // "CantidadSolicitada" field.
  int? _cantidadSolicitada;
  int get cantidadSolicitada => _cantidadSolicitada ?? 0;
  set cantidadSolicitada(int? val) => _cantidadSolicitada = val;

  void incrementCantidadSolicitada(int amount) =>
      cantidadSolicitada = cantidadSolicitada + amount;

  bool hasCantidadSolicitada() => _cantidadSolicitada != null;

  // "CantidadDisponible" field.
  int? _cantidadDisponible;
  int get cantidadDisponible => _cantidadDisponible ?? 0;
  set cantidadDisponible(int? val) => _cantidadDisponible = val;

  void incrementCantidadDisponible(int amount) =>
      cantidadDisponible = cantidadDisponible + amount;

  bool hasCantidadDisponible() => _cantidadDisponible != null;

  // "referenciaItem" field.
  DocumentReference? _referenciaItem;
  DocumentReference? get referenciaItem => _referenciaItem;
  set referenciaItem(DocumentReference? val) => _referenciaItem = val;

  bool hasReferenciaItem() => _referenciaItem != null;

  static NoHaySuficienteStruct fromMap(Map<String, dynamic> data) =>
      NoHaySuficienteStruct(
        foto: data['Foto'] as String?,
        nombreItem: data['NombreItem'] as String?,
        cantidadSolicitada: castToType<int>(data['CantidadSolicitada']),
        cantidadDisponible: castToType<int>(data['CantidadDisponible']),
        referenciaItem: data['referenciaItem'] as DocumentReference?,
      );

  static NoHaySuficienteStruct? maybeFromMap(dynamic data) => data is Map
      ? NoHaySuficienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Foto': _foto,
        'NombreItem': _nombreItem,
        'CantidadSolicitada': _cantidadSolicitada,
        'CantidadDisponible': _cantidadDisponible,
        'referenciaItem': _referenciaItem,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'NombreItem': serializeParam(
          _nombreItem,
          ParamType.String,
        ),
        'CantidadSolicitada': serializeParam(
          _cantidadSolicitada,
          ParamType.int,
        ),
        'CantidadDisponible': serializeParam(
          _cantidadDisponible,
          ParamType.int,
        ),
        'referenciaItem': serializeParam(
          _referenciaItem,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static NoHaySuficienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      NoHaySuficienteStruct(
        foto: deserializeParam(
          data['Foto'],
          ParamType.String,
          false,
        ),
        nombreItem: deserializeParam(
          data['NombreItem'],
          ParamType.String,
          false,
        ),
        cantidadSolicitada: deserializeParam(
          data['CantidadSolicitada'],
          ParamType.int,
          false,
        ),
        cantidadDisponible: deserializeParam(
          data['CantidadDisponible'],
          ParamType.int,
          false,
        ),
        referenciaItem: deserializeParam(
          data['referenciaItem'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Inventario'],
        ),
      );

  @override
  String toString() => 'NoHaySuficienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NoHaySuficienteStruct &&
        foto == other.foto &&
        nombreItem == other.nombreItem &&
        cantidadSolicitada == other.cantidadSolicitada &&
        cantidadDisponible == other.cantidadDisponible &&
        referenciaItem == other.referenciaItem;
  }

  @override
  int get hashCode => const ListEquality().hash([
        foto,
        nombreItem,
        cantidadSolicitada,
        cantidadDisponible,
        referenciaItem
      ]);
}

NoHaySuficienteStruct createNoHaySuficienteStruct({
  String? foto,
  String? nombreItem,
  int? cantidadSolicitada,
  int? cantidadDisponible,
  DocumentReference? referenciaItem,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NoHaySuficienteStruct(
      foto: foto,
      nombreItem: nombreItem,
      cantidadSolicitada: cantidadSolicitada,
      cantidadDisponible: cantidadDisponible,
      referenciaItem: referenciaItem,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NoHaySuficienteStruct? updateNoHaySuficienteStruct(
  NoHaySuficienteStruct? noHaySuficiente, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    noHaySuficiente
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNoHaySuficienteStructData(
  Map<String, dynamic> firestoreData,
  NoHaySuficienteStruct? noHaySuficiente,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (noHaySuficiente == null) {
    return;
  }
  if (noHaySuficiente.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && noHaySuficiente.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final noHaySuficienteData =
      getNoHaySuficienteFirestoreData(noHaySuficiente, forFieldValue);
  final nestedData =
      noHaySuficienteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = noHaySuficiente.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNoHaySuficienteFirestoreData(
  NoHaySuficienteStruct? noHaySuficiente, [
  bool forFieldValue = false,
]) {
  if (noHaySuficiente == null) {
    return {};
  }
  final firestoreData = mapToFirestore(noHaySuficiente.toMap());

  // Add any Firestore field values
  noHaySuficiente.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNoHaySuficienteListFirestoreData(
  List<NoHaySuficienteStruct>? noHaySuficientes,
) =>
    noHaySuficientes
        ?.map((e) => getNoHaySuficienteFirestoreData(e, true))
        .toList() ??
    [];
