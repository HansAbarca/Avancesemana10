import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'item_widget.dart' show ItemWidget;
import 'package:flutter/material.dart';

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
