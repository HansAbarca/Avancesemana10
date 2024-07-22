import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_categoria_escrita_model.dart';
export 'no_categoria_escrita_model.dart';

class NoCategoriaEscritaWidget extends StatefulWidget {
  const NoCategoriaEscritaWidget({super.key});

  @override
  State<NoCategoriaEscritaWidget> createState() =>
      _NoCategoriaEscritaWidgetState();
}

class _NoCategoriaEscritaWidgetState extends State<NoCategoriaEscritaWidget> {
  late NoCategoriaEscritaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoCategoriaEscritaModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1500));
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          height: 69.0,
          decoration: BoxDecoration(
            color: Color(0xFFCC5555),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'No hay nada escrito en categorías...',
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
