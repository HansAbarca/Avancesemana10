import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'info_compra_widget.dart' show InfoCompraWidget;
import 'package:flutter/material.dart';

class InfoCompraModel extends FlutterFlowModel<InfoCompraWidget> {
  ///  Local state fields for this component.

  int cantidadDeItems = 0;

  double costoTotal = 0.0;

  int contador = 0;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Read Document] action in InfoCompra widget.
  ContabilidadRecord? registro;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
