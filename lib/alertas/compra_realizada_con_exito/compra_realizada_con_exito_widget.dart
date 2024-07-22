import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'compra_realizada_con_exito_model.dart';
export 'compra_realizada_con_exito_model.dart';

class CompraRealizadaConExitoWidget extends StatefulWidget {
  const CompraRealizadaConExitoWidget({super.key});

  @override
  State<CompraRealizadaConExitoWidget> createState() =>
      _CompraRealizadaConExitoWidgetState();
}

class _CompraRealizadaConExitoWidgetState
    extends State<CompraRealizadaConExitoWidget> {
  late CompraRealizadaConExitoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompraRealizadaConExitoModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1500));
      FFAppState().ItemAnadido = false;
      setState(() {});
      Navigator.pop(context);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          height: 69.0,
          decoration: BoxDecoration(
            color: Color(0xFF00B821),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '¡Compra realizada con éxito!',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 15.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return 32.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 32.0;
                          } else {
                            return 32.0;
                          }
                        }(),
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
