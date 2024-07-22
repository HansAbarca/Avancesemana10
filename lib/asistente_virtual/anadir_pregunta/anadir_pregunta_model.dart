import '/alertas/pregunta_frecuente_anadida/pregunta_frecuente_anadida_widget.dart';
import '/asistente_virtual/anadir_pregunta_general/anadir_pregunta_general_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'anadir_pregunta_widget.dart' show AnadirPreguntaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
