import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/usuarios/editar_rol/editar_rol_widget.dart';
import 'lista_de_personal_widget.dart' show ListaDePersonalWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ListaDePersonalModel extends FlutterFlowModel<ListaDePersonalWidget> {
  ///  Local state fields for this page.

  bool buscar = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Buscar widget.
  FocusNode? buscarFocusNode;
  TextEditingController? buscarTextController;
  String? Function(BuildContext, String?)? buscarTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    buscarFocusNode?.dispose();
    buscarTextController?.dispose();
  }
}
