import '/backend/backend.dart';
import '/contabilidad/info_compra/info_compra_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'seguimineto_financiero_widget.dart' show SeguiminetoFinancieroWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class SeguiminetoFinancieroModel
    extends FlutterFlowModel<SeguiminetoFinancieroWidget> {
  ///  Local state fields for this page.

  bool buscar = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Buscar widget.
  FocusNode? buscarFocusNode;
  TextEditingController? buscarTextController;
  String? Function(BuildContext, String?)? buscarTextControllerValidator;
  List<ContabilidadRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    buscarFocusNode?.dispose();
    buscarTextController?.dispose();
  }
}
