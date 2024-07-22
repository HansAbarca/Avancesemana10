import '/flutter_flow/flutter_flow_util.dart';
import 'analisis_widget.dart' show AnalisisWidget;
import 'package:flutter/material.dart';

class AnalisisModel extends FlutterFlowModel<AnalisisWidget> {
  ///  Local state fields for this page.

  String compra = 'Compra';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
