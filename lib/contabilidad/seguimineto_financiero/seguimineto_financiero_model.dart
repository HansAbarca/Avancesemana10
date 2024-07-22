import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'seguimineto_financiero_widget.dart' show SeguiminetoFinancieroWidget;
import 'package:flutter/material.dart';

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
