import '/flutter_flow/flutter_flow_util.dart';
import 'anadir_pregunta_widget.dart' show AnadirPreguntaWidget;
import 'package:flutter/material.dart';

class AnadirPreguntaModel extends FlutterFlowModel<AnadirPreguntaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Pregunta widget.
  FocusNode? preguntaFocusNode;
  TextEditingController? preguntaTextController;
  String? Function(BuildContext, String?)? preguntaTextControllerValidator;
  // State field(s) for Prepuesta widget.
  FocusNode? prepuestaFocusNode;
  TextEditingController? prepuestaTextController;
  String? Function(BuildContext, String?)? prepuestaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    preguntaFocusNode?.dispose();
    preguntaTextController?.dispose();

    prepuestaFocusNode?.dispose();
    prepuestaTextController?.dispose();
  }
}
