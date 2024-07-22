import '/flutter_flow/flutter_flow_util.dart';
import 'datos_widget.dart' show DatosWidget;
import 'package:flutter/material.dart';

class DatosModel extends FlutterFlowModel<DatosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
