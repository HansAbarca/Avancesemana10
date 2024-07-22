import '/flutter_flow/flutter_flow_util.dart';
import 'contabilidad_widget.dart' show ContabilidadWidget;
import 'package:flutter/material.dart';

class ContabilidadModel extends FlutterFlowModel<ContabilidadWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
