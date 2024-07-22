import '/alertas/item_anadido/item_anadido_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/inventario/ajustes/ajustes_widget.dart';
import '/inventario/anadir_inventario/anadir_inventario_widget.dart';
import '/inventario/carrito/carrito_widget.dart';
import '/inventario/item/item_widget.dart';
import '/inventario/opciones/opciones_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'inventario_model.dart';
export 'inventario_model.dart';

class InventarioWidget extends StatefulWidget {
  const InventarioWidget({super.key});

  @override
  State<InventarioWidget> createState() => _InventarioWidgetState();
}

class _InventarioWidgetState extends State<InventarioWidget>
    with TickerProviderStateMixin {
  late InventarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InventarioModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.buscando = false;
      setState(() {});
      _model.ordenPorPrecio = false;
      setState(() {});
      if (FFAppState().ItemAnadido) {
        await showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          enableDrag: false,
          context: context,
          builder: (context) {
            return GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: const ItemAnadidoWidget(),
              ),
            );
          },
        ).then((value) => safeSetState(() {}));
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primary,
          ),
          child: Stack(
            children: [
              Opacity(
                opacity: 0.2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0x00FFFFFF),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/inventario.png',
                      ).image,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Inventario',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Summer Vibes',
                                        color: Colors.white,
                                        fontSize: 50.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w900,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (() {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return false;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return true;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return true;
                          } else {
                            return true;
                          }
                        }())
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().CambiarOrden =
                                      !FFAppState().CambiarOrden;
                                  setState(() {});
                                },
                                child: Container(
                                  width: 84.0,
                                  height: 80.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          if (FFAppState().CambiarOrden == true)
                                            const Icon(
                                              Icons.trending_up,
                                              color: Colors.white,
                                              size: 60.0,
                                            ),
                                          if (FFAppState().CambiarOrden ==
                                              false)
                                            const Icon(
                                              Icons.trending_down,
                                              color: Colors.white,
                                              size: 60.0,
                                            ),
                                        ],
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (FFAppState().CambiarOrden ==
                                                true)
                                              Expanded(
                                                child: Text(
                                                  'Ascendente',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            if (FFAppState().CambiarOrden ==
                                                false)
                                              Expanded(
                                                child: Text(
                                                  'Descendente',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if ((valueOrDefault(
                                          currentUserDocument?.rol, '') ==
                                      'Jefe') ||
                                  (valueOrDefault(
                                          currentUserDocument?.rol, '') ==
                                      'Admin'))
                                AuthUserStreamWidget(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().AjustesInventario = 'MENU';
                                      setState(() {});
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => _model
                                                    .unfocusNode.canRequestFocus
                                                ? FocusScope.of(context)
                                                    .requestFocus(
                                                        _model.unfocusNode)
                                                : FocusScope.of(context)
                                                    .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: const AjustesWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Container(
                                      width: 84.0,
                                      height: 80.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          const Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.settings_sharp,
                                                color: Colors.white,
                                                size: 60.0,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Ajustes',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              if ((valueOrDefault(
                                          currentUserDocument?.rol, '') ==
                                      'Jefe') ||
                                  (valueOrDefault(
                                          currentUserDocument?.rol, '') ==
                                      'Admin'))
                                AuthUserStreamWidget(
                                  builder: (context) => InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => _model
                                                    .unfocusNode.canRequestFocus
                                                ? FocusScope.of(context)
                                                    .requestFocus(
                                                        _model.unfocusNode)
                                                : FocusScope.of(context)
                                                    .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: const AnadirInventarioWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Container(
                                      width: 84.0,
                                      height: 80.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0x00FFFFFF),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          const Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.add_circle_sharp,
                                                color: Colors.white,
                                                size: 60.0,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Añadir',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => _model
                                                  .unfocusNode.canRequestFocus
                                              ? FocusScope.of(context)
                                                  .requestFocus(
                                                      _model.unfocusNode)
                                              : FocusScope.of(context)
                                                  .unfocus(),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const CarritoWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: Container(
                                    width: 84.0,
                                    height: 80.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.shopping_cart,
                                              color: Colors.white,
                                              size: 60.0,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Carrito',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 30.0)),
                          ),
                        if (() {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return true;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return false;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return false;
                          } else {
                            return false;
                          }
                        }())
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (FFAppState().botonOpcionesVisivilidad)
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 25.0, 5.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().botonOpcionesVisivilidad =
                                          false;
                                      setState(() {});
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => _model
                                                    .unfocusNode.canRequestFocus
                                                ? FocusScope.of(context)
                                                    .requestFocus(
                                                        _model.unfocusNode)
                                                : FocusScope.of(context)
                                                    .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: const OpcionesWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: const Icon(
                                      Icons.keyboard_double_arrow_left_outlined,
                                      color: Colors.white,
                                      size: 40.0,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'iconOnPageLoadAnimation']!),
                                ),
                            ],
                          ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 25.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('Home');
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios_rounded,
                                    color: Colors.white,
                                    size: 40.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      valueOrDefault<double>(
                                        () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 15.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 80.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 80.0;
                                          } else {
                                            return 80.0;
                                          }
                                        }(),
                                        0.0,
                                      ),
                                      0.0,
                                      valueOrDefault<double>(
                                        () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 15.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 80.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 80.0;
                                          } else {
                                            return 80.0;
                                          }
                                        }(),
                                        0.0,
                                      ),
                                      0.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 49.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.search,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 30.0,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 8.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.textController,
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.textController',
                                                  const Duration(milliseconds: 50),
                                                  () async {
                                                    if (_model.textController
                                                            .text ==
                                                        '') {
                                                      _model.buscando = false;
                                                      setState(() {});
                                                    } else {
                                                      await queryInventarioRecordOnce()
                                                          .then(
                                                            (records) => _model
                                                                    .simpleSearchResults =
                                                                TextSearch(
                                                              records
                                                                  .map(
                                                                    (record) =>
                                                                        TextSearchItem.fromTerms(
                                                                            record,
                                                                            [
                                                                          record
                                                                              .nombre
                                                                        ]),
                                                                  )
                                                                  .toList(),
                                                            )
                                                                    .search(_model
                                                                        .textController
                                                                        .text)
                                                                    .map((r) =>
                                                                        r.object)
                                                                    .toList(),
                                                          )
                                                          .onError((_, __) =>
                                                              _model.simpleSearchResults =
                                                                  [])
                                                          .whenComplete(() =>
                                                              setState(() {}));

                                                      _model.buscando = true;
                                                      setState(() {});
                                                    }
                                                  },
                                                ),
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Buscar   ',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            letterSpacing: 0.0,
                                                          ),
                                                  enabledBorder:
                                                      InputBorder.none,
                                                  focusedBorder:
                                                      InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  focusedErrorBorder:
                                                      InputBorder.none,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                40.0, 10.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      _model.categoriasValueController?.reset();
                                    });
                                  },
                                  child: Text(
                                    'Filtrar:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Expanded(
                                  child: StreamBuilder<
                                      List<CategoriaInventarioRecord>>(
                                    stream: queryCategoriaInventarioRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<CategoriaInventarioRecord>
                                          containerCategoriaInventarioRecordList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: FlutterFlowChoiceChips(
                                                  options:
                                                      containerCategoriaInventarioRecordList
                                                          .map((e) =>
                                                              e.categoria)
                                                          .toList()
                                                          .map((label) =>
                                                              ChipData(label))
                                                          .toList(),
                                                  onChanged: (val) => setState(
                                                      () => _model
                                                              .categoriasValue =
                                                          val?.firstOrNull),
                                                  selectedChipStyle: ChipStyle(
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondary,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    iconColor: Colors.white,
                                                    iconSize: 18.0,
                                                    elevation: 4.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  unselectedChipStyle:
                                                      ChipStyle(
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    iconColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    iconSize: 18.0,
                                                    elevation: 0.0,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16.0),
                                                  ),
                                                  chipSpacing: 12.0,
                                                  rowSpacing: 12.0,
                                                  multiselect: false,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  controller: _model
                                                          .categoriasValueController ??=
                                                      FormFieldController<
                                                          List<String>>(
                                                    [],
                                                  ),
                                                  wrapped: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                if (FFAppState().CambiarOrden == false)
                                  StreamBuilder<List<InventarioRecord>>(
                                    stream: queryInventarioRecord(
                                      queryBuilder: (inventarioRecord) =>
                                          inventarioRecord.orderBy('Precio',
                                              descending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<InventarioRecord>
                                          mayorAMenorInventarioRecordList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Stack(
                                                children: [
                                                  if (_model.categoriasValue ==
                                                          null ||
                                                      _model.categoriasValue ==
                                                          '')
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Stack(
                                                            children: [
                                                              if (_model
                                                                      .buscando ==
                                                                  false)
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final todo = mayorAMenorInventarioRecordList
                                                                          .map((e) =>
                                                                              e)
                                                                          .toList();

                                                                      return SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: List.generate(
                                                                              todo.length,
                                                                              (todoIndex) {
                                                                            final todoItem =
                                                                                todo[todoIndex];
                                                                            return Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                                          valueOrDefault<double>(
                                                                                            () {
                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                return 15.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                return 120.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                return 120.0;
                                                                                              } else {
                                                                                                return 120.0;
                                                                                              }
                                                                                            }(),
                                                                                            0.0,
                                                                                          ),
                                                                                          0.0,
                                                                                          valueOrDefault<double>(
                                                                                            () {
                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                return 15.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                return 120.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                return 120.0;
                                                                                              } else {
                                                                                                return 120.0;
                                                                                              }
                                                                                            }(),
                                                                                            0.0,
                                                                                          ),
                                                                                          0.0),
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return GestureDetector(
                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                child: Padding(
                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                  child: ItemWidget(
                                                                                                    cantidad: todoItem.cantidad,
                                                                                                    descripcion: todoItem.descripcion,
                                                                                                    categoria: todoItem.categoria,
                                                                                                    precio: todoItem.precio,
                                                                                                    nombre: todoItem.nombre,
                                                                                                    imagen: todoItem.imagen,
                                                                                                    referenciaItem: todoItem.reference,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        },
                                                                                        child: Container(
                                                                                          width: 329.0,
                                                                                          height: 153.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                            borderRadius: BorderRadius.circular(100.0),
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                  child: Container(
                                                                                                    decoration: const BoxDecoration(
                                                                                                      borderRadius: BorderRadius.only(
                                                                                                        bottomLeft: Radius.circular(0.0),
                                                                                                        bottomRight: Radius.circular(50.0),
                                                                                                        topLeft: Radius.circular(50.0),
                                                                                                        topRight: Radius.circular(50.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await Navigator.push(
                                                                                                              context,
                                                                                                              PageTransition(
                                                                                                                type: PageTransitionType.fade,
                                                                                                                child: FlutterFlowExpandedImageView(
                                                                                                                  image: Image.network(
                                                                                                                    todoItem.imagen,
                                                                                                                    fit: BoxFit.contain,
                                                                                                                  ),
                                                                                                                  allowRotation: false,
                                                                                                                  tag: todoItem.imagen,
                                                                                                                  useHeroAnimation: true,
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                          child: Hero(
                                                                                                            tag: todoItem.imagen,
                                                                                                            transitionOnUserGestures: true,
                                                                                                            child: Container(
                                                                                                              width: 120.0,
                                                                                                              height: 120.0,
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              decoration: const BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                              ),
                                                                                                              child: Image.network(
                                                                                                                todoItem.imagen,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 20.0),
                                                                                                            child: SingleChildScrollView(
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                children: [
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Text(
                                                                                                                          todoItem.nombre,
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                color: Colors.white,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Text(
                                                                                                                          todoItem.categoria,
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                color: Colors.white,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Text(
                                                                                                                          '₡ ${todoItem.precio.toString()}',
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                color: Colors.white,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ].divide(SizedBox(height: () {
                                                                                                                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                                    return 10.0;
                                                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                                    return 20.0;
                                                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                                    return 20.0;
                                                                                                                  } else {
                                                                                                                    return 20.0;
                                                                                                                  }
                                                                                                                }())),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          }).divide(const SizedBox(height: 20.0)).addToStart(const SizedBox(height: 10.0)).addToEnd(
                                                                              const SizedBox(height: 20.0)),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              if (_model
                                                                      .buscando ==
                                                                  true)
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final todo = _model
                                                                          .simpleSearchResults
                                                                          .map((e) =>
                                                                              e)
                                                                          .toList();

                                                                      return SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: List.generate(
                                                                              todo.length,
                                                                              (todoIndex) {
                                                                            final todoItem =
                                                                                todo[todoIndex];
                                                                            return Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                                          valueOrDefault<double>(
                                                                                            () {
                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                return 15.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                return 120.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                return 120.0;
                                                                                              } else {
                                                                                                return 120.0;
                                                                                              }
                                                                                            }(),
                                                                                            0.0,
                                                                                          ),
                                                                                          0.0,
                                                                                          valueOrDefault<double>(
                                                                                            () {
                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                return 15.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                return 120.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                return 120.0;
                                                                                              } else {
                                                                                                return 120.0;
                                                                                              }
                                                                                            }(),
                                                                                            0.0,
                                                                                          ),
                                                                                          0.0),
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return GestureDetector(
                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                child: Padding(
                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                  child: ItemWidget(
                                                                                                    cantidad: todoItem.cantidad,
                                                                                                    descripcion: todoItem.descripcion,
                                                                                                    categoria: todoItem.categoria,
                                                                                                    precio: todoItem.precio,
                                                                                                    nombre: todoItem.nombre,
                                                                                                    imagen: todoItem.imagen,
                                                                                                    referenciaItem: todoItem.reference,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        },
                                                                                        child: Container(
                                                                                          width: 329.0,
                                                                                          height: 153.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                            borderRadius: BorderRadius.circular(100.0),
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                  child: Container(
                                                                                                    decoration: const BoxDecoration(
                                                                                                      borderRadius: BorderRadius.only(
                                                                                                        bottomLeft: Radius.circular(0.0),
                                                                                                        bottomRight: Radius.circular(50.0),
                                                                                                        topLeft: Radius.circular(50.0),
                                                                                                        topRight: Radius.circular(50.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await Navigator.push(
                                                                                                              context,
                                                                                                              PageTransition(
                                                                                                                type: PageTransitionType.fade,
                                                                                                                child: FlutterFlowExpandedImageView(
                                                                                                                  image: Image.network(
                                                                                                                    todoItem.imagen,
                                                                                                                    fit: BoxFit.contain,
                                                                                                                  ),
                                                                                                                  allowRotation: false,
                                                                                                                  tag: todoItem.imagen,
                                                                                                                  useHeroAnimation: true,
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                          child: Hero(
                                                                                                            tag: todoItem.imagen,
                                                                                                            transitionOnUserGestures: true,
                                                                                                            child: Container(
                                                                                                              width: 120.0,
                                                                                                              height: 120.0,
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              decoration: const BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                              ),
                                                                                                              child: Image.network(
                                                                                                                todoItem.imagen,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 20.0),
                                                                                                            child: SingleChildScrollView(
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                children: [
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Text(
                                                                                                                          todoItem.nombre,
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                color: Colors.white,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Text(
                                                                                                                          todoItem.categoria,
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                color: Colors.white,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Text(
                                                                                                                          '₡ ${todoItem.precio.toString()}',
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                color: Colors.white,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ].divide(SizedBox(height: () {
                                                                                                                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                                    return 10.0;
                                                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                                    return 20.0;
                                                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                                    return 20.0;
                                                                                                                  } else {
                                                                                                                    return 20.0;
                                                                                                                  }
                                                                                                                }())),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          }).divide(const SizedBox(height: 20.0)).addToStart(const SizedBox(height: 10.0)).addToEnd(
                                                                              const SizedBox(height: 20.0)),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  if (_model.categoriasValue !=
                                                          null &&
                                                      _model.categoriasValue !=
                                                          '')
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Stack(
                                                            children: [
                                                              if (_model
                                                                      .buscando ==
                                                                  false)
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final todo = mayorAMenorInventarioRecordList
                                                                          .map((e) =>
                                                                              e)
                                                                          .toList();

                                                                      return SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: List.generate(todo.length, (todoIndex) {
                                                                            final todoItem =
                                                                                todo[todoIndex];
                                                                            return Visibility(
                                                                              visible: todoItem.categoria == _model.categoriasValue,
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                                            valueOrDefault<double>(
                                                                                              () {
                                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                  return 15.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                  return 120.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                  return 120.0;
                                                                                                } else {
                                                                                                  return 120.0;
                                                                                                }
                                                                                              }(),
                                                                                              0.0,
                                                                                            ),
                                                                                            0.0,
                                                                                            valueOrDefault<double>(
                                                                                              () {
                                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                  return 15.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                  return 120.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                  return 120.0;
                                                                                                } else {
                                                                                                  return 120.0;
                                                                                                }
                                                                                              }(),
                                                                                              0.0,
                                                                                            ),
                                                                                            0.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return GestureDetector(
                                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: ItemWidget(
                                                                                                      cantidad: todoItem.cantidad,
                                                                                                      descripcion: todoItem.descripcion,
                                                                                                      categoria: todoItem.categoria,
                                                                                                      precio: todoItem.precio,
                                                                                                      nombre: todoItem.nombre,
                                                                                                      imagen: todoItem.imagen,
                                                                                                      referenciaItem: todoItem.reference,
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() {}));
                                                                                          },
                                                                                          child: Container(
                                                                                            width: 329.0,
                                                                                            height: 153.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                              borderRadius: BorderRadius.circular(100.0),
                                                                                            ),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: const BoxDecoration(
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(0.0),
                                                                                                          bottomRight: Radius.circular(50.0),
                                                                                                          topLeft: Radius.circular(50.0),
                                                                                                          topRight: Radius.circular(50.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          InkWell(
                                                                                                            splashColor: Colors.transparent,
                                                                                                            focusColor: Colors.transparent,
                                                                                                            hoverColor: Colors.transparent,
                                                                                                            highlightColor: Colors.transparent,
                                                                                                            onTap: () async {
                                                                                                              await Navigator.push(
                                                                                                                context,
                                                                                                                PageTransition(
                                                                                                                  type: PageTransitionType.fade,
                                                                                                                  child: FlutterFlowExpandedImageView(
                                                                                                                    image: Image.network(
                                                                                                                      todoItem.imagen,
                                                                                                                      fit: BoxFit.contain,
                                                                                                                    ),
                                                                                                                    allowRotation: false,
                                                                                                                    tag: todoItem.imagen,
                                                                                                                    useHeroAnimation: true,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                            child: Hero(
                                                                                                              tag: todoItem.imagen,
                                                                                                              transitionOnUserGestures: true,
                                                                                                              child: Container(
                                                                                                                width: 120.0,
                                                                                                                height: 120.0,
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                decoration: const BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Image.network(
                                                                                                                  todoItem.imagen,
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Expanded(
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 20.0),
                                                                                                              child: SingleChildScrollView(
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  children: [
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Text(
                                                                                                                            todoItem.nombre,
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  color: Colors.white,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Text(
                                                                                                                            todoItem.categoria,
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  color: Colors.white,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Text(
                                                                                                                            '₡ ${todoItem.precio.toString()}',
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  color: Colors.white,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ].divide(SizedBox(height: () {
                                                                                                                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                                      return 10.0;
                                                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                                      return 20.0;
                                                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                                      return 20.0;
                                                                                                                    } else {
                                                                                                                      return 20.0;
                                                                                                                    }
                                                                                                                  }())),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            );
                                                                          })
                                                                              .divide(
                                                                                const SizedBox(height: 20.0),
                                                                                filterFn: (todoIndex) {
                                                                                  final todoItem = todo[todoIndex];
                                                                                  return todoItem.categoria == _model.categoriasValue;
                                                                                },
                                                                              )
                                                                              .addToStart(const SizedBox(height: 10.0))
                                                                              .addToEnd(const SizedBox(height: 20.0)),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              if (_model
                                                                      .buscando ==
                                                                  true)
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final todo = _model
                                                                          .simpleSearchResults
                                                                          .map((e) =>
                                                                              e)
                                                                          .toList();

                                                                      return SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: List.generate(todo.length, (todoIndex) {
                                                                            final todoItem =
                                                                                todo[todoIndex];
                                                                            return Visibility(
                                                                              visible: todoItem.categoria == _model.categoriasValue,
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                                            valueOrDefault<double>(
                                                                                              () {
                                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                  return 15.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                  return 120.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                  return 120.0;
                                                                                                } else {
                                                                                                  return 120.0;
                                                                                                }
                                                                                              }(),
                                                                                              0.0,
                                                                                            ),
                                                                                            0.0,
                                                                                            valueOrDefault<double>(
                                                                                              () {
                                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                  return 15.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                  return 120.0;
                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                  return 120.0;
                                                                                                } else {
                                                                                                  return 120.0;
                                                                                                }
                                                                                              }(),
                                                                                              0.0,
                                                                                            ),
                                                                                            0.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return GestureDetector(
                                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: ItemWidget(
                                                                                                      cantidad: todoItem.cantidad,
                                                                                                      descripcion: todoItem.descripcion,
                                                                                                      categoria: todoItem.categoria,
                                                                                                      precio: todoItem.precio,
                                                                                                      nombre: todoItem.nombre,
                                                                                                      imagen: todoItem.imagen,
                                                                                                      referenciaItem: todoItem.reference,
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() {}));
                                                                                          },
                                                                                          child: Container(
                                                                                            width: 329.0,
                                                                                            height: 153.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                              borderRadius: BorderRadius.circular(100.0),
                                                                                            ),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Padding(
                                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: const BoxDecoration(
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(0.0),
                                                                                                          bottomRight: Radius.circular(50.0),
                                                                                                          topLeft: Radius.circular(50.0),
                                                                                                          topRight: Radius.circular(50.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          InkWell(
                                                                                                            splashColor: Colors.transparent,
                                                                                                            focusColor: Colors.transparent,
                                                                                                            hoverColor: Colors.transparent,
                                                                                                            highlightColor: Colors.transparent,
                                                                                                            onTap: () async {
                                                                                                              await Navigator.push(
                                                                                                                context,
                                                                                                                PageTransition(
                                                                                                                  type: PageTransitionType.fade,
                                                                                                                  child: FlutterFlowExpandedImageView(
                                                                                                                    image: Image.network(
                                                                                                                      todoItem.imagen,
                                                                                                                      fit: BoxFit.contain,
                                                                                                                    ),
                                                                                                                    allowRotation: false,
                                                                                                                    tag: todoItem.imagen,
                                                                                                                    useHeroAnimation: true,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );
                                                                                                            },
                                                                                                            child: Hero(
                                                                                                              tag: todoItem.imagen,
                                                                                                              transitionOnUserGestures: true,
                                                                                                              child: Container(
                                                                                                                width: 120.0,
                                                                                                                height: 120.0,
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                decoration: const BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Image.network(
                                                                                                                  todoItem.imagen,
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Expanded(
                                                                                                            child: Padding(
                                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 20.0),
                                                                                                              child: SingleChildScrollView(
                                                                                                                child: Column(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                  children: [
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Text(
                                                                                                                            todoItem.nombre,
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  color: Colors.white,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Text(
                                                                                                                            todoItem.categoria,
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  color: Colors.white,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    Row(
                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Text(
                                                                                                                            '₡ ${todoItem.precio.toString()}',
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                  fontFamily: 'Readex Pro',
                                                                                                                                  color: Colors.white,
                                                                                                                                  letterSpacing: 0.0,
                                                                                                                                  fontWeight: FontWeight.w500,
                                                                                                                                ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ].divide(SizedBox(height: () {
                                                                                                                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                                      return 10.0;
                                                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                                      return 20.0;
                                                                                                                    } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                                      return 20.0;
                                                                                                                    } else {
                                                                                                                      return 20.0;
                                                                                                                    }
                                                                                                                  }())),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            );
                                                                          })
                                                                              .divide(
                                                                                const SizedBox(height: 20.0),
                                                                                filterFn: (todoIndex) {
                                                                                  final todoItem = todo[todoIndex];
                                                                                  return todoItem.categoria == _model.categoriasValue;
                                                                                },
                                                                              )
                                                                              .addToStart(const SizedBox(height: 10.0))
                                                                              .addToEnd(const SizedBox(height: 20.0)),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                if (FFAppState().CambiarOrden == true)
                                  StreamBuilder<List<InventarioRecord>>(
                                    stream: queryInventarioRecord(
                                      queryBuilder: (inventarioRecord) =>
                                          inventarioRecord.orderBy('Precio'),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<InventarioRecord>
                                          menorAMayorInventarioRecordList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Stack(
                                                children: [
                                                  if (_model.categoriasValue ==
                                                          null ||
                                                      _model.categoriasValue ==
                                                          '')
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (_model.buscando ==
                                                            false)
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final todo = menorAMayorInventarioRecordList
                                                                      .map(
                                                                          (e) =>
                                                                              e)
                                                                      .toList();

                                                                  return SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                          todo.length,
                                                                          (todoIndex) {
                                                                        final todoItem =
                                                                            todo[todoIndex];
                                                                        return Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(
                                                                                      valueOrDefault<double>(
                                                                                        () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 15.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 120.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 120.0;
                                                                                          } else {
                                                                                            return 120.0;
                                                                                          }
                                                                                        }(),
                                                                                        0.0,
                                                                                      ),
                                                                                      0.0,
                                                                                      valueOrDefault<double>(
                                                                                        () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 15.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 120.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 120.0;
                                                                                          } else {
                                                                                            return 120.0;
                                                                                          }
                                                                                        }(),
                                                                                        0.0,
                                                                                      ),
                                                                                      0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      await showModalBottomSheet(
                                                                                        isScrollControlled: true,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        enableDrag: false,
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          return GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: Padding(
                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                              child: ItemWidget(
                                                                                                cantidad: todoItem.cantidad,
                                                                                                descripcion: todoItem.descripcion,
                                                                                                categoria: todoItem.categoria,
                                                                                                precio: todoItem.precio,
                                                                                                nombre: todoItem.nombre,
                                                                                                imagen: todoItem.imagen,
                                                                                                referenciaItem: todoItem.reference,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).then((value) => safeSetState(() {}));
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 329.0,
                                                                                      height: 153.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                        borderRadius: BorderRadius.circular(100.0),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                              child: Container(
                                                                                                decoration: const BoxDecoration(
                                                                                                  borderRadius: BorderRadius.only(
                                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                                    bottomRight: Radius.circular(50.0),
                                                                                                    topLeft: Radius.circular(50.0),
                                                                                                    topRight: Radius.circular(50.0),
                                                                                                  ),
                                                                                                ),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await Navigator.push(
                                                                                                          context,
                                                                                                          PageTransition(
                                                                                                            type: PageTransitionType.fade,
                                                                                                            child: FlutterFlowExpandedImageView(
                                                                                                              image: Image.network(
                                                                                                                todoItem.imagen,
                                                                                                                fit: BoxFit.contain,
                                                                                                              ),
                                                                                                              allowRotation: false,
                                                                                                              tag: todoItem.imagen,
                                                                                                              useHeroAnimation: true,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                      child: Hero(
                                                                                                        tag: todoItem.imagen,
                                                                                                        transitionOnUserGestures: true,
                                                                                                        child: Container(
                                                                                                          width: 120.0,
                                                                                                          height: 120.0,
                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                          decoration: const BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                          child: Image.network(
                                                                                                            todoItem.imagen,
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Expanded(
                                                                                                      child: Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 20.0),
                                                                                                        child: SingleChildScrollView(
                                                                                                          child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                            children: [
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Expanded(
                                                                                                                    child: Text(
                                                                                                                      todoItem.nombre,
                                                                                                                      textAlign: TextAlign.center,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Readex Pro',
                                                                                                                            color: Colors.white,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w500,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Expanded(
                                                                                                                    child: Text(
                                                                                                                      todoItem.categoria,
                                                                                                                      textAlign: TextAlign.center,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Readex Pro',
                                                                                                                            color: Colors.white,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w500,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Expanded(
                                                                                                                    child: Text(
                                                                                                                      '₡ ${todoItem.precio.toString()}',
                                                                                                                      textAlign: TextAlign.center,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Readex Pro',
                                                                                                                            color: Colors.white,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w500,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ].divide(SizedBox(height: () {
                                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                                return 10.0;
                                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                                return 20.0;
                                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                                return 20.0;
                                                                                                              } else {
                                                                                                                return 20.0;
                                                                                                              }
                                                                                                            }())),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      }).divide(const SizedBox(height: 20.0)).addToStart(const SizedBox(height: 10.0)).addToEnd(const SizedBox(
                                                                          height:
                                                                              20.0)),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        if (_model.buscando ==
                                                            true)
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Builder(
                                                                builder:
                                                                    (context) {
                                                                  final todo = _model
                                                                      .simpleSearchResults
                                                                      .map(
                                                                          (e) =>
                                                                              e)
                                                                      .toList();

                                                                  return SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                          todo.length,
                                                                          (todoIndex) {
                                                                        final todoItem =
                                                                            todo[todoIndex];
                                                                        return Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(
                                                                                      valueOrDefault<double>(
                                                                                        () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 15.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 120.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 120.0;
                                                                                          } else {
                                                                                            return 120.0;
                                                                                          }
                                                                                        }(),
                                                                                        0.0,
                                                                                      ),
                                                                                      0.0,
                                                                                      valueOrDefault<double>(
                                                                                        () {
                                                                                          if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                            return 15.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                            return 120.0;
                                                                                          } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                            return 120.0;
                                                                                          } else {
                                                                                            return 120.0;
                                                                                          }
                                                                                        }(),
                                                                                        0.0,
                                                                                      ),
                                                                                      0.0),
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      await showModalBottomSheet(
                                                                                        isScrollControlled: true,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        enableDrag: false,
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          return GestureDetector(
                                                                                            onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                            child: Padding(
                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                              child: ItemWidget(
                                                                                                cantidad: todoItem.cantidad,
                                                                                                descripcion: todoItem.descripcion,
                                                                                                categoria: todoItem.categoria,
                                                                                                precio: todoItem.precio,
                                                                                                nombre: todoItem.nombre,
                                                                                                imagen: todoItem.imagen,
                                                                                                referenciaItem: todoItem.reference,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).then((value) => safeSetState(() {}));
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 329.0,
                                                                                      height: 153.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                        borderRadius: BorderRadius.circular(100.0),
                                                                                      ),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                              child: Container(
                                                                                                decoration: const BoxDecoration(
                                                                                                  borderRadius: BorderRadius.only(
                                                                                                    bottomLeft: Radius.circular(0.0),
                                                                                                    bottomRight: Radius.circular(50.0),
                                                                                                    topLeft: Radius.circular(50.0),
                                                                                                    topRight: Radius.circular(50.0),
                                                                                                  ),
                                                                                                ),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    InkWell(
                                                                                                      splashColor: Colors.transparent,
                                                                                                      focusColor: Colors.transparent,
                                                                                                      hoverColor: Colors.transparent,
                                                                                                      highlightColor: Colors.transparent,
                                                                                                      onTap: () async {
                                                                                                        await Navigator.push(
                                                                                                          context,
                                                                                                          PageTransition(
                                                                                                            type: PageTransitionType.fade,
                                                                                                            child: FlutterFlowExpandedImageView(
                                                                                                              image: Image.network(
                                                                                                                todoItem.imagen,
                                                                                                                fit: BoxFit.contain,
                                                                                                              ),
                                                                                                              allowRotation: false,
                                                                                                              tag: todoItem.imagen,
                                                                                                              useHeroAnimation: true,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );
                                                                                                      },
                                                                                                      child: Hero(
                                                                                                        tag: todoItem.imagen,
                                                                                                        transitionOnUserGestures: true,
                                                                                                        child: Container(
                                                                                                          width: 120.0,
                                                                                                          height: 120.0,
                                                                                                          clipBehavior: Clip.antiAlias,
                                                                                                          decoration: const BoxDecoration(
                                                                                                            shape: BoxShape.circle,
                                                                                                          ),
                                                                                                          child: Image.network(
                                                                                                            todoItem.imagen,
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Expanded(
                                                                                                      child: Padding(
                                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 20.0),
                                                                                                        child: SingleChildScrollView(
                                                                                                          child: Column(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                            children: [
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Expanded(
                                                                                                                    child: Text(
                                                                                                                      todoItem.nombre,
                                                                                                                      textAlign: TextAlign.center,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Readex Pro',
                                                                                                                            color: Colors.white,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w500,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Expanded(
                                                                                                                    child: Text(
                                                                                                                      todoItem.categoria,
                                                                                                                      textAlign: TextAlign.center,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Readex Pro',
                                                                                                                            color: Colors.white,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w500,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                              Row(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                children: [
                                                                                                                  Expanded(
                                                                                                                    child: Text(
                                                                                                                      '₡ ${todoItem.precio.toString()}',
                                                                                                                      textAlign: TextAlign.center,
                                                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                            fontFamily: 'Readex Pro',
                                                                                                                            color: Colors.white,
                                                                                                                            letterSpacing: 0.0,
                                                                                                                            fontWeight: FontWeight.w500,
                                                                                                                          ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ],
                                                                                                              ),
                                                                                                            ].divide(SizedBox(height: () {
                                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                                return 10.0;
                                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                                return 20.0;
                                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                                return 20.0;
                                                                                                              } else {
                                                                                                                return 20.0;
                                                                                                              }
                                                                                                            }())),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
                                                                      }).divide(const SizedBox(height: 20.0)).addToStart(const SizedBox(height: 10.0)).addToEnd(const SizedBox(
                                                                          height:
                                                                              20.0)),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  if (_model.categoriasValue !=
                                                          null &&
                                                      _model.categoriasValue !=
                                                          '')
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Stack(
                                                          children: [
                                                            if (_model
                                                                    .buscando ==
                                                                false)
                                                              Builder(
                                                                builder:
                                                                    (context) {
                                                                  final todo = menorAMayorInventarioRecordList
                                                                      .map(
                                                                          (e) =>
                                                                              e)
                                                                      .toList();

                                                                  return SingleChildScrollView(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: List.generate(
                                                                              todo.length,
                                                                              (todoIndex) {
                                                                        final todoItem =
                                                                            todo[todoIndex];
                                                                        return Visibility(
                                                                          visible:
                                                                              todoItem.categoria == _model.categoriasValue,
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(
                                                                                        valueOrDefault<double>(
                                                                                          () {
                                                                                            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                              return 15.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                              return 120.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                              return 120.0;
                                                                                            } else {
                                                                                              return 120.0;
                                                                                            }
                                                                                          }(),
                                                                                          0.0,
                                                                                        ),
                                                                                        0.0,
                                                                                        valueOrDefault<double>(
                                                                                          () {
                                                                                            if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                              return 15.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                              return 120.0;
                                                                                            } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                              return 120.0;
                                                                                            } else {
                                                                                              return 120.0;
                                                                                            }
                                                                                          }(),
                                                                                          0.0,
                                                                                        ),
                                                                                        0.0),
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        await showModalBottomSheet(
                                                                                          isScrollControlled: true,
                                                                                          backgroundColor: Colors.transparent,
                                                                                          enableDrag: false,
                                                                                          context: context,
                                                                                          builder: (context) {
                                                                                            return GestureDetector(
                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                              child: Padding(
                                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                                child: ItemWidget(
                                                                                                  cantidad: todoItem.cantidad,
                                                                                                  descripcion: todoItem.descripcion,
                                                                                                  categoria: todoItem.categoria,
                                                                                                  precio: todoItem.precio,
                                                                                                  nombre: todoItem.nombre,
                                                                                                  imagen: todoItem.imagen,
                                                                                                  referenciaItem: todoItem.reference,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => safeSetState(() {}));
                                                                                      },
                                                                                      child: Container(
                                                                                        width: 329.0,
                                                                                        height: 153.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                          borderRadius: BorderRadius.circular(100.0),
                                                                                        ),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Container(
                                                                                                  decoration: const BoxDecoration(
                                                                                                    borderRadius: BorderRadius.only(
                                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                                      bottomRight: Radius.circular(50.0),
                                                                                                      topLeft: Radius.circular(50.0),
                                                                                                      topRight: Radius.circular(50.0),
                                                                                                    ),
                                                                                                  ),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      InkWell(
                                                                                                        splashColor: Colors.transparent,
                                                                                                        focusColor: Colors.transparent,
                                                                                                        hoverColor: Colors.transparent,
                                                                                                        highlightColor: Colors.transparent,
                                                                                                        onTap: () async {
                                                                                                          await Navigator.push(
                                                                                                            context,
                                                                                                            PageTransition(
                                                                                                              type: PageTransitionType.fade,
                                                                                                              child: FlutterFlowExpandedImageView(
                                                                                                                image: Image.network(
                                                                                                                  todoItem.imagen,
                                                                                                                  fit: BoxFit.contain,
                                                                                                                ),
                                                                                                                allowRotation: false,
                                                                                                                tag: todoItem.imagen,
                                                                                                                useHeroAnimation: true,
                                                                                                              ),
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                        child: Hero(
                                                                                                          tag: todoItem.imagen,
                                                                                                          transitionOnUserGestures: true,
                                                                                                          child: Container(
                                                                                                            width: 120.0,
                                                                                                            height: 120.0,
                                                                                                            clipBehavior: Clip.antiAlias,
                                                                                                            decoration: const BoxDecoration(
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                            child: Image.network(
                                                                                                              todoItem.imagen,
                                                                                                              fit: BoxFit.cover,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      Expanded(
                                                                                                        child: Padding(
                                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 20.0),
                                                                                                          child: SingleChildScrollView(
                                                                                                            child: Column(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                              children: [
                                                                                                                Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Expanded(
                                                                                                                      child: Text(
                                                                                                                        todoItem.nombre,
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              color: Colors.white,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.w500,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Expanded(
                                                                                                                      child: Text(
                                                                                                                        todoItem.categoria,
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              color: Colors.white,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.w500,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                                Row(
                                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Expanded(
                                                                                                                      child: Text(
                                                                                                                        '₡ ${todoItem.precio.toString()}',
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                              fontFamily: 'Readex Pro',
                                                                                                                              color: Colors.white,
                                                                                                                              letterSpacing: 0.0,
                                                                                                                              fontWeight: FontWeight.w500,
                                                                                                                            ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ].divide(SizedBox(height: () {
                                                                                                                if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                                  return 10.0;
                                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                                  return 20.0;
                                                                                                                } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                                  return 20.0;
                                                                                                                } else {
                                                                                                                  return 20.0;
                                                                                                                }
                                                                                                              }())),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        );
                                                                      })
                                                                          .divide(
                                                                            const SizedBox(height: 20.0),
                                                                            filterFn:
                                                                                (todoIndex) {
                                                                              final todoItem = todo[todoIndex];
                                                                              return todoItem.categoria == _model.categoriasValue;
                                                                            },
                                                                          )
                                                                          .addToStart(const SizedBox(
                                                                              height:
                                                                                  10.0))
                                                                          .addToEnd(
                                                                              const SizedBox(height: 20.0)),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            if (_model
                                                                    .buscando ==
                                                                true)
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Builder(
                                                                  builder:
                                                                      (context) {
                                                                    final todo = _model
                                                                        .simpleSearchResults
                                                                        .map((e) =>
                                                                            e)
                                                                        .toList();

                                                                    return SingleChildScrollView(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(todo.length,
                                                                                (todoIndex) {
                                                                          final todoItem =
                                                                              todo[todoIndex];
                                                                          return Visibility(
                                                                            visible:
                                                                                todoItem.categoria == _model.categoriasValue,
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                                          valueOrDefault<double>(
                                                                                            () {
                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                return 15.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                return 120.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                return 120.0;
                                                                                              } else {
                                                                                                return 120.0;
                                                                                              }
                                                                                            }(),
                                                                                            0.0,
                                                                                          ),
                                                                                          0.0,
                                                                                          valueOrDefault<double>(
                                                                                            () {
                                                                                              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                return 15.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                return 120.0;
                                                                                              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                return 120.0;
                                                                                              } else {
                                                                                                return 120.0;
                                                                                              }
                                                                                            }(),
                                                                                            0.0,
                                                                                          ),
                                                                                          0.0),
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return GestureDetector(
                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                child: Padding(
                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                  child: ItemWidget(
                                                                                                    cantidad: todoItem.cantidad,
                                                                                                    descripcion: todoItem.descripcion,
                                                                                                    categoria: todoItem.categoria,
                                                                                                    precio: todoItem.precio,
                                                                                                    nombre: todoItem.nombre,
                                                                                                    imagen: todoItem.imagen,
                                                                                                    referenciaItem: todoItem.reference,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        },
                                                                                        child: Container(
                                                                                          width: 329.0,
                                                                                          height: 153.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                            borderRadius: BorderRadius.circular(100.0),
                                                                                          ),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                  child: Container(
                                                                                                    decoration: const BoxDecoration(
                                                                                                      borderRadius: BorderRadius.only(
                                                                                                        bottomLeft: Radius.circular(0.0),
                                                                                                        bottomRight: Radius.circular(50.0),
                                                                                                        topLeft: Radius.circular(50.0),
                                                                                                        topRight: Radius.circular(50.0),
                                                                                                      ),
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        InkWell(
                                                                                                          splashColor: Colors.transparent,
                                                                                                          focusColor: Colors.transparent,
                                                                                                          hoverColor: Colors.transparent,
                                                                                                          highlightColor: Colors.transparent,
                                                                                                          onTap: () async {
                                                                                                            await Navigator.push(
                                                                                                              context,
                                                                                                              PageTransition(
                                                                                                                type: PageTransitionType.fade,
                                                                                                                child: FlutterFlowExpandedImageView(
                                                                                                                  image: Image.network(
                                                                                                                    todoItem.imagen,
                                                                                                                    fit: BoxFit.contain,
                                                                                                                  ),
                                                                                                                  allowRotation: false,
                                                                                                                  tag: todoItem.imagen,
                                                                                                                  useHeroAnimation: true,
                                                                                                                ),
                                                                                                              ),
                                                                                                            );
                                                                                                          },
                                                                                                          child: Hero(
                                                                                                            tag: todoItem.imagen,
                                                                                                            transitionOnUserGestures: true,
                                                                                                            child: Container(
                                                                                                              width: 120.0,
                                                                                                              height: 120.0,
                                                                                                              clipBehavior: Clip.antiAlias,
                                                                                                              decoration: const BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                              ),
                                                                                                              child: Image.network(
                                                                                                                todoItem.imagen,
                                                                                                                fit: BoxFit.cover,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                        Expanded(
                                                                                                          child: Padding(
                                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 40.0, 20.0),
                                                                                                            child: SingleChildScrollView(
                                                                                                              child: Column(
                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                                                children: [
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Text(
                                                                                                                          todoItem.nombre,
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                color: Colors.white,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Text(
                                                                                                                          todoItem.categoria,
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                color: Colors.white,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                  Row(
                                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                    children: [
                                                                                                                      Expanded(
                                                                                                                        child: Text(
                                                                                                                          '₡ ${todoItem.precio.toString()}',
                                                                                                                          textAlign: TextAlign.center,
                                                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                                fontFamily: 'Readex Pro',
                                                                                                                                color: Colors.white,
                                                                                                                                letterSpacing: 0.0,
                                                                                                                                fontWeight: FontWeight.w500,
                                                                                                                              ),
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ].divide(SizedBox(height: () {
                                                                                                                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                                                    return 10.0;
                                                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                                                    return 20.0;
                                                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                                                    return 20.0;
                                                                                                                  } else {
                                                                                                                    return 20.0;
                                                                                                                  }
                                                                                                                }())),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          );
                                                                        })
                                                                            .divide(
                                                                              const SizedBox(height: 20.0),
                                                                              filterFn: (todoIndex) {
                                                                                final todoItem = todo[todoIndex];
                                                                                return todoItem.categoria == _model.categoriasValue;
                                                                              },
                                                                            )
                                                                            .addToStart(const SizedBox(height: 10.0))
                                                                            .addToEnd(const SizedBox(height: 20.0)),
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
