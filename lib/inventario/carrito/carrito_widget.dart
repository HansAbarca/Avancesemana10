import '/alertas/compra_realizada_con_exito/compra_realizada_con_exito_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/inventario/cantidad_insuficientes_items/cantidad_insuficientes_items_widget.dart';
import '/inventario/carrito_item/carrito_item_widget.dart';
import '/inventario/seguro_de_comprar/seguro_de_comprar_widget.dart';
import '/inventario/seguro_de_eliminar_de_carrito/seguro_de_eliminar_de_carrito_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'carrito_model.dart';
export 'carrito_model.dart';

class CarritoWidget extends StatefulWidget {
  const CarritoWidget({super.key});

  @override
  State<CarritoWidget> createState() => _CarritoWidgetState();
}

class _CarritoWidgetState extends State<CarritoWidget>
    with TickerProviderStateMixin {
  late CarritoModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarritoModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
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
      'containerOnPageLoadAnimation1': AnimationInfo(
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
      'containerOnPageLoadAnimation2': AnimationInfo(
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 30.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 25.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 100.0;
              } else {
                return 100.0;
              }
            }(),
            0.0,
          ),
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 30.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 50.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 100.0;
              } else {
                return 100.0;
              }
            }(),
            0.0,
          ),
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 30.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 25.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 100.0;
              } else {
                return 100.0;
              }
            }(),
            0.0,
          ),
          valueOrDefault<double>(
            () {
              if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                return 50.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                return 50.0;
              } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                return 100.0;
              } else {
                return 100.0;
              }
            }(),
            0.0,
          )),
      child: StreamBuilder<List<CarritoRecord>>(
        stream: queryCarritoRecord(
          parent: currentUserReference,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<CarritoRecord> containerCarritoRecordList = snapshot.data!;

          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFE8E8F4),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  60.0, 0.0, 60.0, 0.0),
                              child: Text(
                                'Carrito',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .displayLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 30.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 50.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 64.0;
                                        } else {
                                          return 64.0;
                                        }
                                      }(),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation']!),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 30.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (FFAppState().Cargando == false)
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().AjustesInventario = 'MENU';
                                setState(() {});
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.clear,
                                color: Colors.black,
                                size: 40.0,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(),
                    child: Builder(
                      builder: (context) {
                        final carritoItems =
                            containerCarritoRecordList.map((e) => e).toList();

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(carritoItems.length,
                                    (carritoItemsIndex) {
                              final carritoItemsItem =
                                  carritoItems[carritoItemsIndex];
                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 40.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 110.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 110.0;
                                              } else {
                                                return 110.0;
                                              }
                                            }(),
                                            0.0,
                                          ),
                                          0.0,
                                          valueOrDefault<double>(
                                            () {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  kBreakpointSmall) {
                                                return 40.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointMedium) {
                                                return 110.0;
                                              } else if (MediaQuery.sizeOf(
                                                          context)
                                                      .width <
                                                  kBreakpointLarge) {
                                                return 110.0;
                                              } else {
                                                return 110.0;
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
                                              return Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: CarritoItemWidget(
                                                  nombreItem: carritoItemsItem
                                                      .itemInventario
                                                      .nombreItem,
                                                  cantidadDeseada:
                                                      carritoItemsItem
                                                          .itemInventario
                                                          .cantidadDeseada,
                                                  descripcion: carritoItemsItem
                                                      .itemInventario
                                                      .descripcion,
                                                  imagen: carritoItemsItem
                                                      .itemInventario.imagen,
                                                  precio: carritoItemsItem
                                                      .itemInventario.precio,
                                                  categoria: '',
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: () {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                kBreakpointSmall) {
                                              return 130.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointMedium) {
                                              return 124.0;
                                            } else if (MediaQuery.sizeOf(
                                                        context)
                                                    .width <
                                                kBreakpointLarge) {
                                              return 124.0;
                                            } else {
                                              return 124.0;
                                            }
                                          }(),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(20.0),
                                              topRight: Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Stack(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                                25.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        30.0,
                                                                        0.0,
                                                                        30.0,
                                                                        0.0),
                                                            child: Text(
                                                              carritoItemsItem
                                                                  .itemInventario
                                                                  .nombreItem,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 20.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 35.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 35.0;
                                                                      } else {
                                                                        return 35.0;
                                                                      }
                                                                    }(),
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      30.0,
                                                                      0.0,
                                                                      30.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Cantidad solicitada: ${carritoItemsItem.itemInventario.cantidadDeseada.toString()}',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: () {
                                                                    if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointSmall) {
                                                                      return 15.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointMedium) {
                                                                      return 27.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width <
                                                                        kBreakpointLarge) {
                                                                      return 27.0;
                                                                    } else {
                                                                      return 27.0;
                                                                    }
                                                                  }(),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  if (FFAppState().Cargando ==
                                                      false)
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    valueOrDefault<
                                                                        double>(
                                                                      () {
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointSmall) {
                                                                          return 15.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointMedium) {
                                                                          return 25.0;
                                                                        } else if (MediaQuery.sizeOf(context).width <
                                                                            kBreakpointLarge) {
                                                                          return 25.0;
                                                                        } else {
                                                                          return 25.0;
                                                                        }
                                                                      }(),
                                                                      0.0,
                                                                    ),
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return Padding(
                                                                  padding: MediaQuery
                                                                      .viewInsetsOf(
                                                                          context),
                                                                  child:
                                                                      SeguroDeEliminarDeCarritoWidget(
                                                                    itemCarrito:
                                                                        carritoItemsItem
                                                                            .reference,
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                safeSetState(
                                                                    () {}));
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .delete_forever,
                                                            color: const Color(
                                                                0xFFFF0000),
                                                            size: () {
                                                              if (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <
                                                                  kBreakpointSmall) {
                                                                return 24.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointMedium) {
                                                                return 40.0;
                                                              } else if (MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width <
                                                                  kBreakpointLarge) {
                                                                return 40.0;
                                                              } else {
                                                                return 40.0;
                                                              }
                                                            }(),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation1']!),
                                    ),
                                  ),
                                ],
                              );
                            })
                                .divide(const SizedBox(height: 20.0))
                                .addToStart(const SizedBox(height: 15.0))
                                .addToEnd(const SizedBox(height: 15.0)),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            if ((FFAppState().Cargando == false) &&
                                (containerCarritoRecordList.isNotEmpty))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 30.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 100.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 100.0;
                                        } else {
                                          return 100.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    0.0,
                                    valueOrDefault<double>(
                                      () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 30.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 100.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 100.0;
                                        } else {
                                          return 100.0;
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
                                    FFAppState().contador = 0;
                                    FFAppState().CantidadNoSuficiente = [];
                                    FFAppState().banderaComprar = false;
                                    FFAppState().Cargando = true;
                                    FFAppState().referenciaItems = [];
                                    setState(() {});
                                    _model.noHaySufucienteBandera = false;
                                    setState(() {});
                                    _model.cantidadDeItems =
                                        await queryCarritoRecordCount(
                                      parent: currentUserReference,
                                    );
                                    _model.carrito =
                                        await queryCarritoRecordOnce(
                                      parent: currentUserReference,
                                    );
                                    while (FFAppState().contador <
                                        _model.cantidadDeItems!) {
                                      _model.itemDatos = await InventarioRecord
                                          .getDocumentOnce(
                                              containerCarritoRecordList[
                                                      FFAppState().contador]
                                                  .itemInventario
                                                  .referenciaItem!);
                                      if (_model.carrito![FFAppState().contador]
                                              .itemInventario.cantidadDeseada <=
                                          _model.itemDatos!.cantidad) {
                                        FFAppState().addToReferenciaItems(
                                            _model.itemDatos!.reference);
                                        setState(() {});
                                      } else {
                                        _model.noHaySufucienteBandera = true;
                                        setState(() {});
                                        FFAppState().addToCantidadNoSuficiente(
                                            NoHaySuficienteStruct(
                                          foto: _model.itemDatos?.imagen,
                                          nombreItem: _model.itemDatos?.nombre,
                                          cantidadSolicitada: _model
                                              .carrito?[FFAppState().contador]
                                              .itemInventario
                                              .cantidadDeseada,
                                          cantidadDisponible:
                                              _model.itemDatos?.cantidad,
                                          referenciaItem:
                                              _model.itemDatos?.reference,
                                        ));
                                        setState(() {});
                                      }

                                      FFAppState().contador =
                                          FFAppState().contador + 1;
                                      setState(() {});
                                    }
                                    if (_model.noHaySufucienteBandera ==
                                        false) {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: const SeguroDeComprarWidget(),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));

                                      if (FFAppState().banderaComprar == true) {
                                        FFAppState().contador = 0;
                                        setState(() {});

                                        var contabilidadRecordReference =
                                            ContabilidadRecord.collection.doc();
                                        await contabilidadRecordReference
                                            .set(createContabilidadRecordData(
                                          fecha: getCurrentTimestamp,
                                          descripcion:
                                              'Compra de bienes o servicios',
                                          clienteQueCompra:
                                              currentUserDisplayName,
                                          id: random_data.randomString(
                                            5,
                                            6,
                                            true,
                                            true,
                                            true,
                                          ),
                                        ));
                                        _model.contabilidad = ContabilidadRecord
                                            .getDocumentFromData(
                                                createContabilidadRecordData(
                                                  fecha: getCurrentTimestamp,
                                                  descripcion:
                                                      'Compra de bienes o servicios',
                                                  clienteQueCompra:
                                                      currentUserDisplayName,
                                                  id: random_data.randomString(
                                                    5,
                                                    6,
                                                    true,
                                                    true,
                                                    true,
                                                  ),
                                                ),
                                                contabilidadRecordReference);
                                        while (FFAppState().contador <
                                            _model.cantidadDeItems!) {
                                          await FFAppState()
                                              .referenciaItems[
                                                  FFAppState().contador]
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'Cantidad':
                                                    FieldValue.increment(
                                                        -(_model
                                                            .carrito![
                                                                FFAppState()
                                                                    .contador]
                                                            .itemInventario
                                                            .cantidadDeseada)),
                                                'ItemComprado':
                                                    FieldValue.increment(_model
                                                        .carrito![FFAppState()
                                                            .contador]
                                                        .itemInventario
                                                        .cantidadDeseada),
                                              },
                                            ),
                                          });

                                          await currentUserReference!.update({
                                            ...mapToFirestore(
                                              {
                                                'CantidadDeProductosComprados':
                                                    FieldValue.increment(_model
                                                        .carrito![FFAppState()
                                                            .contador]
                                                        .itemInventario
                                                        .cantidadDeseada),
                                              },
                                            ),
                                          });
                                          FFAppState().contador2 = 0;
                                          setState(() {});

                                          await _model.contabilidad!.reference
                                              .update({
                                            ...mapToFirestore(
                                              {
                                                'ItemsComprados':
                                                    FieldValue.arrayUnion([
                                                  _model
                                                      .carrito?[
                                                          FFAppState().contador]
                                                      .itemInventario
                                                      .nombreItem
                                                ]),
                                                'CatidadesCompradas':
                                                    FieldValue.arrayUnion([
                                                  _model
                                                      .carrito?[
                                                          FFAppState().contador]
                                                      .itemInventario
                                                      .cantidadDeseada
                                                ]),
                                                'Precios':
                                                    FieldValue.arrayUnion([
                                                  _model
                                                      .carrito?[
                                                          FFAppState().contador]
                                                      .itemInventario
                                                      .precio
                                                ]),
                                              },
                                            ),
                                          });
                                          await _model
                                              .carrito![FFAppState().contador]
                                              .reference
                                              .delete();
                                          FFAppState().contador =
                                              FFAppState().contador + 1;
                                          setState(() {});
                                        }
                                        FFAppState().Cargando = false;
                                        setState(() {});
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  const CompraRealizadaConExitoWidget(),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      } else {
                                        FFAppState().Cargando = false;
                                        setState(() {});
                                      }
                                    } else {
                                      FFAppState().Cargando = false;
                                      setState(() {});
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child:
                                                const CantidadInsuficientesItemsWidget(),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    }

                                    setState(() {});
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: () {
                                      if (MediaQuery.sizeOf(context).width <
                                          kBreakpointSmall) {
                                        return 100.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointMedium) {
                                        return 124.0;
                                      } else if (MediaQuery.sizeOf(context)
                                              .width <
                                          kBreakpointLarge) {
                                        return 124.0;
                                      } else {
                                        return 124.0;
                                      }
                                    }(),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF00B821),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(50.0),
                                        bottomRight: Radius.circular(50.0),
                                        topLeft: Radius.circular(50.0),
                                        topRight: Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Comprar',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .displayMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: () {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        kBreakpointSmall) {
                                                      return 30.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointMedium) {
                                                      return 44.0;
                                                    } else if (MediaQuery
                                                                .sizeOf(context)
                                                            .width <
                                                        kBreakpointLarge) {
                                                      return 44.0;
                                                    } else {
                                                      return 44.0;
                                                    }
                                                  }(),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation2']!),
                              ),
                            if (FFAppState().Cargando == true)
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Lottie.asset(
                                    'assets/lottie_animations/Animation_-_1717888007055.json',
                                    width: 150.0,
                                    height: 130.0,
                                    fit: BoxFit.cover,
                                    animate: true,
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ].addToEnd(const SizedBox(height: 20.0)),
            ),
          );
        },
      ),
    );
  }
}
