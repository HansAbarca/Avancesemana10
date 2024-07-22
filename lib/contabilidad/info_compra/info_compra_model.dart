import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'info_compra_widget.dart' show InfoCompraWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
