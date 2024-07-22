import '/flutter_flow/flutter_flow_util.dart';
import 'anadir_empleado_widget.dart' show AnadirEmpleadoWidget;
import 'package:flutter/material.dart';

class AnadirEmpleadoModel extends FlutterFlowModel<AnadirEmpleadoWidget> {
  ///  Local state fields for this component.

  String? email;

  String? nombre;

  ///  State fields for stateful widgets in this component.

  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
