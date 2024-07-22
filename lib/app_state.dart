import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ModoEdicionItems =
          prefs.getBool('ff_ModoEdicionItems') ?? _ModoEdicionItems;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _AjustesInventario = '';
  String get AjustesInventario => _AjustesInventario;
  set AjustesInventario(String value) {
    _AjustesInventario = value;
  }

  bool _botonOpcionesVisivilidad = false;
  bool get botonOpcionesVisivilidad => _botonOpcionesVisivilidad;
  set botonOpcionesVisivilidad(bool value) {
    _botonOpcionesVisivilidad = value;
  }

  bool _ItemAnadido = false;
  bool get ItemAnadido => _ItemAnadido;
  set ItemAnadido(bool value) {
    _ItemAnadido = value;
  }

  bool _CambiarOrden = false;
  bool get CambiarOrden => _CambiarOrden;
  set CambiarOrden(bool value) {
    _CambiarOrden = value;
  }

  bool _anadirEmpleadoConfirmacion = false;
  bool get anadirEmpleadoConfirmacion => _anadirEmpleadoConfirmacion;
  set anadirEmpleadoConfirmacion(bool value) {
    _anadirEmpleadoConfirmacion = value;
  }

  bool _VerificaAnadirEmpleado = false;
  bool get VerificaAnadirEmpleado => _VerificaAnadirEmpleado;
  set VerificaAnadirEmpleado(bool value) {
    _VerificaAnadirEmpleado = value;
  }

  String _nombreSet = '';
  String get nombreSet => _nombreSet;
  set nombreSet(String value) {
    _nombreSet = value;
  }

  String _IDEmpleado = '';
  String get IDEmpleado => _IDEmpleado;
  set IDEmpleado(String value) {
    _IDEmpleado = value;
  }

  bool _Cargando = false;
  bool get Cargando => _Cargando;
  set Cargando(bool value) {
    _Cargando = value;
  }

  String _Rol = '';
  String get Rol => _Rol;
  set Rol(String value) {
    _Rol = value;
  }

  int _cantidadSolicitada = 0;
  int get cantidadSolicitada => _cantidadSolicitada;
  set cantidadSolicitada(int value) {
    _cantidadSolicitada = value;
  }

  int _banderaSolicitudAprobada = 0;
  int get banderaSolicitudAprobada => _banderaSolicitudAprobada;
  set banderaSolicitudAprobada(int value) {
    _banderaSolicitudAprobada = value;
  }

  int _contador = 0;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  List<NoHaySuficienteStruct> _CantidadNoSuficiente = [];
  List<NoHaySuficienteStruct> get CantidadNoSuficiente => _CantidadNoSuficiente;
  set CantidadNoSuficiente(List<NoHaySuficienteStruct> value) {
    _CantidadNoSuficiente = value;
  }

  void addToCantidadNoSuficiente(NoHaySuficienteStruct value) {
    CantidadNoSuficiente.add(value);
  }

  void removeFromCantidadNoSuficiente(NoHaySuficienteStruct value) {
    CantidadNoSuficiente.remove(value);
  }

  void removeAtIndexFromCantidadNoSuficiente(int index) {
    CantidadNoSuficiente.removeAt(index);
  }

  void updateCantidadNoSuficienteAtIndex(
    int index,
    NoHaySuficienteStruct Function(NoHaySuficienteStruct) updateFn,
  ) {
    CantidadNoSuficiente[index] = updateFn(_CantidadNoSuficiente[index]);
  }

  void insertAtIndexInCantidadNoSuficiente(
      int index, NoHaySuficienteStruct value) {
    CantidadNoSuficiente.insert(index, value);
  }

  bool _banderaComprar = false;
  bool get banderaComprar => _banderaComprar;
  set banderaComprar(bool value) {
    _banderaComprar = value;
  }

  List<DocumentReference> _referenciaItems = [];
  List<DocumentReference> get referenciaItems => _referenciaItems;
  set referenciaItems(List<DocumentReference> value) {
    _referenciaItems = value;
  }

  void addToReferenciaItems(DocumentReference value) {
    referenciaItems.add(value);
  }

  void removeFromReferenciaItems(DocumentReference value) {
    referenciaItems.remove(value);
  }

  void removeAtIndexFromReferenciaItems(int index) {
    referenciaItems.removeAt(index);
  }

  void updateReferenciaItemsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    referenciaItems[index] = updateFn(_referenciaItems[index]);
  }

  void insertAtIndexInReferenciaItems(int index, DocumentReference value) {
    referenciaItems.insert(index, value);
  }

  int _contador2 = 0;
  int get contador2 => _contador2;
  set contador2(int value) {
    _contador2 = value;
  }

  bool _ModoEdicionItems = false;
  bool get ModoEdicionItems => _ModoEdicionItems;
  set ModoEdicionItems(bool value) {
    _ModoEdicionItems = value;
    prefs.setBool('ff_ModoEdicionItems', value);
  }

  bool _cambio = false;
  bool get cambio => _cambio;
  set cambio(bool value) {
    _cambio = value;
  }

  bool _ConfirmacionGeneral = false;
  bool get ConfirmacionGeneral => _ConfirmacionGeneral;
  set ConfirmacionGeneral(bool value) {
    _ConfirmacionGeneral = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
