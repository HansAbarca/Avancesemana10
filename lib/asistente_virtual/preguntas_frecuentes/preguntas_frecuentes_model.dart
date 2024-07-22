import '/flutter_flow/flutter_flow_util.dart';
import 'preguntas_frecuentes_widget.dart' show PreguntasFrecuentesWidget;
import 'package:flutter/material.dart';

class PreguntasFrecuentesModel
    extends FlutterFlowModel<PreguntasFrecuentesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
