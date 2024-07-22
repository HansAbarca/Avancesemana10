import '/flutter_flow/flutter_flow_util.dart';
import 'guarda_documento_widget.dart' show GuardaDocumentoWidget;
import 'package:flutter/material.dart';

class GuardaDocumentoModel extends FlutterFlowModel<GuardaDocumentoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
