import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'carrito_widget.dart' show CarritoWidget;
import 'package:flutter/material.dart';

class CarritoModel extends FlutterFlowModel<CarritoWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? imagenBytes;

  bool noHaySufucienteBandera = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  int? cantidadDeItems;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<CarritoRecord>? carrito;
  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  InventarioRecord? itemDatos;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ContabilidadRecord? contabilidad;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
