import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _ultimoUsuario =
          await secureStorage.getString('ff_ultimoUsuario') ?? _ultimoUsuario;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_userActivo') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_userActivo') ?? '{}';
          _userActivo =
              UsuarioStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _librosUsuarios = (await secureStorage.getStringList('ff_librosUsuarios'))
              ?.map((x) {
                try {
                  return DatLibrosUsuarioStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _librosUsuarios;
    });
    await _safeInitAsync(() async {
      _detalleLibrosUsuario =
          (await secureStorage.getStringList('ff_detalleLibrosUsuario'))
                  ?.map((x) {
                    try {
                      return DatDetalleLibrosUsuarioStruct.fromSerializableMap(
                          jsonDecode(x));
                    } catch (e) {
                      print("Can't decode persisted data type. Error: $e.");
                      return null;
                    }
                  })
                  .withoutNulls
                  .toList() ??
              _detalleLibrosUsuario;
    });
    await _safeInitAsync(() async {
      _tema = await secureStorage.getBool('ff_tema') ?? _tema;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  int _count = 0;
  int get count => _count;
  set count(int value) {
    _count = value;
  }

  int _elementos = 0;
  int get elementos => _elementos;
  set elementos(int value) {
    _elementos = value;
  }

  String _ultimoUsuario = '';
  String get ultimoUsuario => _ultimoUsuario;
  set ultimoUsuario(String value) {
    _ultimoUsuario = value;
    secureStorage.setString('ff_ultimoUsuario', value);
  }

  void deleteUltimoUsuario() {
    secureStorage.delete(key: 'ff_ultimoUsuario');
  }

  UsuarioStruct _userActivo = UsuarioStruct();
  UsuarioStruct get userActivo => _userActivo;
  set userActivo(UsuarioStruct value) {
    _userActivo = value;
    secureStorage.setString('ff_userActivo', value.serialize());
  }

  void deleteUserActivo() {
    secureStorage.delete(key: 'ff_userActivo');
  }

  void updateUserActivoStruct(Function(UsuarioStruct) updateFn) {
    updateFn(_userActivo);
    secureStorage.setString('ff_userActivo', _userActivo.serialize());
  }

  List<DatLibrosUsuarioStruct> _librosUsuarios = [];
  List<DatLibrosUsuarioStruct> get librosUsuarios => _librosUsuarios;
  set librosUsuarios(List<DatLibrosUsuarioStruct> value) {
    _librosUsuarios = value;
    secureStorage.setStringList(
        'ff_librosUsuarios', value.map((x) => x.serialize()).toList());
  }

  void deleteLibrosUsuarios() {
    secureStorage.delete(key: 'ff_librosUsuarios');
  }

  void addToLibrosUsuarios(DatLibrosUsuarioStruct value) {
    librosUsuarios.add(value);
    secureStorage.setStringList('ff_librosUsuarios',
        _librosUsuarios.map((x) => x.serialize()).toList());
  }

  void removeFromLibrosUsuarios(DatLibrosUsuarioStruct value) {
    librosUsuarios.remove(value);
    secureStorage.setStringList('ff_librosUsuarios',
        _librosUsuarios.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLibrosUsuarios(int index) {
    librosUsuarios.removeAt(index);
    secureStorage.setStringList('ff_librosUsuarios',
        _librosUsuarios.map((x) => x.serialize()).toList());
  }

  void updateLibrosUsuariosAtIndex(
    int index,
    DatLibrosUsuarioStruct Function(DatLibrosUsuarioStruct) updateFn,
  ) {
    librosUsuarios[index] = updateFn(_librosUsuarios[index]);
    secureStorage.setStringList('ff_librosUsuarios',
        _librosUsuarios.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLibrosUsuarios(int index, DatLibrosUsuarioStruct value) {
    librosUsuarios.insert(index, value);
    secureStorage.setStringList('ff_librosUsuarios',
        _librosUsuarios.map((x) => x.serialize()).toList());
  }

  List<DatDetalleLibrosUsuarioStruct> _detalleLibrosUsuario = [];
  List<DatDetalleLibrosUsuarioStruct> get detalleLibrosUsuario =>
      _detalleLibrosUsuario;
  set detalleLibrosUsuario(List<DatDetalleLibrosUsuarioStruct> value) {
    _detalleLibrosUsuario = value;
    secureStorage.setStringList(
        'ff_detalleLibrosUsuario', value.map((x) => x.serialize()).toList());
  }

  void deleteDetalleLibrosUsuario() {
    secureStorage.delete(key: 'ff_detalleLibrosUsuario');
  }

  void addToDetalleLibrosUsuario(DatDetalleLibrosUsuarioStruct value) {
    detalleLibrosUsuario.add(value);
    secureStorage.setStringList('ff_detalleLibrosUsuario',
        _detalleLibrosUsuario.map((x) => x.serialize()).toList());
  }

  void removeFromDetalleLibrosUsuario(DatDetalleLibrosUsuarioStruct value) {
    detalleLibrosUsuario.remove(value);
    secureStorage.setStringList('ff_detalleLibrosUsuario',
        _detalleLibrosUsuario.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDetalleLibrosUsuario(int index) {
    detalleLibrosUsuario.removeAt(index);
    secureStorage.setStringList('ff_detalleLibrosUsuario',
        _detalleLibrosUsuario.map((x) => x.serialize()).toList());
  }

  void updateDetalleLibrosUsuarioAtIndex(
    int index,
    DatDetalleLibrosUsuarioStruct Function(DatDetalleLibrosUsuarioStruct)
        updateFn,
  ) {
    detalleLibrosUsuario[index] = updateFn(_detalleLibrosUsuario[index]);
    secureStorage.setStringList('ff_detalleLibrosUsuario',
        _detalleLibrosUsuario.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDetalleLibrosUsuario(
      int index, DatDetalleLibrosUsuarioStruct value) {
    detalleLibrosUsuario.insert(index, value);
    secureStorage.setStringList('ff_detalleLibrosUsuario',
        _detalleLibrosUsuario.map((x) => x.serialize()).toList());
  }

  List<DatRecomendacionesStruct> _recomendaciones = [];
  List<DatRecomendacionesStruct> get recomendaciones => _recomendaciones;
  set recomendaciones(List<DatRecomendacionesStruct> value) {
    _recomendaciones = value;
  }

  void addToRecomendaciones(DatRecomendacionesStruct value) {
    recomendaciones.add(value);
  }

  void removeFromRecomendaciones(DatRecomendacionesStruct value) {
    recomendaciones.remove(value);
  }

  void removeAtIndexFromRecomendaciones(int index) {
    recomendaciones.removeAt(index);
  }

  void updateRecomendacionesAtIndex(
    int index,
    DatRecomendacionesStruct Function(DatRecomendacionesStruct) updateFn,
  ) {
    recomendaciones[index] = updateFn(_recomendaciones[index]);
  }

  void insertAtIndexInRecomendaciones(
      int index, DatRecomendacionesStruct value) {
    recomendaciones.insert(index, value);
  }

  List<DatDetalleLibrosUsuarioStruct> _resultadoBusqueda = [];
  List<DatDetalleLibrosUsuarioStruct> get resultadoBusqueda =>
      _resultadoBusqueda;
  set resultadoBusqueda(List<DatDetalleLibrosUsuarioStruct> value) {
    _resultadoBusqueda = value;
  }

  void addToResultadoBusqueda(DatDetalleLibrosUsuarioStruct value) {
    resultadoBusqueda.add(value);
  }

  void removeFromResultadoBusqueda(DatDetalleLibrosUsuarioStruct value) {
    resultadoBusqueda.remove(value);
  }

  void removeAtIndexFromResultadoBusqueda(int index) {
    resultadoBusqueda.removeAt(index);
  }

  void updateResultadoBusquedaAtIndex(
    int index,
    DatDetalleLibrosUsuarioStruct Function(DatDetalleLibrosUsuarioStruct)
        updateFn,
  ) {
    resultadoBusqueda[index] = updateFn(_resultadoBusqueda[index]);
  }

  void insertAtIndexInResultadoBusqueda(
      int index, DatDetalleLibrosUsuarioStruct value) {
    resultadoBusqueda.insert(index, value);
  }

  List<InvitacionesStruct> _invitacion = [];
  List<InvitacionesStruct> get invitacion => _invitacion;
  set invitacion(List<InvitacionesStruct> value) {
    _invitacion = value;
  }

  void addToInvitacion(InvitacionesStruct value) {
    invitacion.add(value);
  }

  void removeFromInvitacion(InvitacionesStruct value) {
    invitacion.remove(value);
  }

  void removeAtIndexFromInvitacion(int index) {
    invitacion.removeAt(index);
  }

  void updateInvitacionAtIndex(
    int index,
    InvitacionesStruct Function(InvitacionesStruct) updateFn,
  ) {
    invitacion[index] = updateFn(_invitacion[index]);
  }

  void insertAtIndexInInvitacion(int index, InvitacionesStruct value) {
    invitacion.insert(index, value);
  }

  bool _tema = true;
  bool get tema => _tema;
  set tema(bool value) {
    _tema = value;
    secureStorage.setBool('ff_tema', value);
  }

  void deleteTema() {
    secureStorage.delete(key: 'ff_tema');
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
