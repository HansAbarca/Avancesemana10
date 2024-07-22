import '/flutter_flow/flutter_flow_util.dart';
import 'entrance_widget.dart' show EntranceWidget;
import 'package:flutter/material.dart';

class EntranceModel extends FlutterFlowModel<EntranceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
