import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'inventario_widget.dart' show InventarioWidget;
import 'package:flutter/material.dart';

class InventarioModel extends FlutterFlowModel<InventarioWidget> {
  ///  Local state fields for this page.

  bool buscando = true;

  bool ordenPorPrecio = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<InventarioRecord> simpleSearchResults = [];
  // State field(s) for categorias widget.
  FormFieldController<List<String>>? categoriasValueController;
  String? get categoriasValue => categoriasValueController?.value?.firstOrNull;
  set categoriasValue(String? val) =>
      categoriasValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
