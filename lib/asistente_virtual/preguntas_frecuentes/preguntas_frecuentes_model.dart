import '/alertas/seguro_eliminar_pregunta/seguro_eliminar_pregunta_widget.dart';
import '/asistente_virtual/anadir_pregunta/anadir_pregunta_widget.dart';
import '/asistente_virtual/pregunta/pregunta_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'preguntas_frecuentes_widget.dart' show PreguntasFrecuentesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
