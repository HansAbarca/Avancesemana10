import '/alertas/item_anadido/item_anadido_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/inventario/ajustes/ajustes_widget.dart';
import '/inventario/anadir_inventario/anadir_inventario_widget.dart';
import '/inventario/carrito/carrito_widget.dart';
import '/inventario/item/item_widget.dart';
import '/inventario/opciones/opciones_widget.dart';
import 'dart:math';
import 'inventario_widget.dart' show InventarioWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

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
