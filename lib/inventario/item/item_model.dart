import '/alertas/cambio_exitozo/cambio_exitozo_widget.dart';
import '/alertas/item_anadido_carrito/item_anadido_carrito_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/inventario/carrito/carrito_widget.dart';
import '/inventario/cuanto_deseas_solicitar/cuanto_deseas_solicitar_widget.dart';
import '/inventario/guardar_cambios/guardar_cambios_widget.dart';
import '/inventario/seguro_eliminar_item/seguro_eliminar_item_widget.dart';
import 'dart:math';
import 'item_widget.dart' show ItemWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ItemModel extends FlutterFlowModel<ItemWidget> {
  ///  Local state fields for this component.

  int? catidadAsolicitar;

  bool? solicitando;

  bool siEstaEnCarrito = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Firestore Query - Query a collection] action in Item widget.
  int? carritoCantidad;
  // Stores action output result for [Firestore Query - Query a collection] action in Item widget.
  List<CarritoRecord>? carroDatos;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for cantidadPC widget.
  FocusNode? cantidadPCFocusNode;
  TextEditingController? cantidadPCTextController;
  String? Function(BuildContext, String?)? cantidadPCTextControllerValidator;
  // State field(s) for PrecioPC widget.
  FocusNode? precioPCFocusNode;
  TextEditingController? precioPCTextController;
  String? Function(BuildContext, String?)? precioPCTextControllerValidator;
  // State field(s) for cantidadMovil widget.
  FocusNode? cantidadMovilFocusNode;
  TextEditingController? cantidadMovilTextController;
  String? Function(BuildContext, String?)? cantidadMovilTextControllerValidator;
  // State field(s) for PrecioMovil widget.
  FocusNode? precioMovilFocusNode;
  TextEditingController? precioMovilTextController;
  String? Function(BuildContext, String?)? precioMovilTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    cantidadPCFocusNode?.dispose();
    cantidadPCTextController?.dispose();

    precioPCFocusNode?.dispose();
    precioPCTextController?.dispose();

    cantidadMovilFocusNode?.dispose();
    cantidadMovilTextController?.dispose();

    precioMovilFocusNode?.dispose();
    precioMovilTextController?.dispose();
  }
}
