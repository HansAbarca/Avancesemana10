import '/alertas/compra_realizada_con_exito/compra_realizada_con_exito_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/inventario/cantidad_insuficientes_items/cantidad_insuficientes_items_widget.dart';
import '/inventario/carrito_item/carrito_item_widget.dart';
import '/inventario/seguro_de_comprar/seguro_de_comprar_widget.dart';
import '/inventario/seguro_de_eliminar_de_carrito/seguro_de_eliminar_de_carrito_widget.dart';
import 'dart:math';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'carrito_widget.dart' show CarritoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

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
