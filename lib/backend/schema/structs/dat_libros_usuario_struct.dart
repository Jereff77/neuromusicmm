// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatLibrosUsuarioStruct extends BaseStruct {
  DatLibrosUsuarioStruct({
    String? idLibUser,
    String? uid,
    String? idLibro,
    int? orden,
    String? titulo,
    String? descripcion,
    String? imgPortada,
  })  : _idLibUser = idLibUser,
        _uid = uid,
        _idLibro = idLibro,
        _orden = orden,
        _titulo = titulo,
        _descripcion = descripcion,
        _imgPortada = imgPortada;

  // "idLibUser" field.
  String? _idLibUser;
  String get idLibUser => _idLibUser ?? '';
  set idLibUser(String? val) => _idLibUser = val;

  bool hasIdLibUser() => _idLibUser != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "idLibro" field.
  String? _idLibro;
  String get idLibro => _idLibro ?? '';
  set idLibro(String? val) => _idLibro = val;

  bool hasIdLibro() => _idLibro != null;

  // "orden" field.
  int? _orden;
  int get orden => _orden ?? 0;
  set orden(int? val) => _orden = val;

  void incrementOrden(int amount) => orden = orden + amount;

  bool hasOrden() => _orden != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;

  bool hasDescripcion() => _descripcion != null;

  // "imgPortada" field.
  String? _imgPortada;
  String get imgPortada => _imgPortada ?? '';
  set imgPortada(String? val) => _imgPortada = val;

  bool hasImgPortada() => _imgPortada != null;

  static DatLibrosUsuarioStruct fromMap(Map<String, dynamic> data) =>
      DatLibrosUsuarioStruct(
        idLibUser: data['idLibUser'] as String?,
        uid: data['uid'] as String?,
        idLibro: data['idLibro'] as String?,
        orden: castToType<int>(data['orden']),
        titulo: data['titulo'] as String?,
        descripcion: data['descripcion'] as String?,
        imgPortada: data['imgPortada'] as String?,
      );

  static DatLibrosUsuarioStruct? maybeFromMap(dynamic data) => data is Map
      ? DatLibrosUsuarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idLibUser': _idLibUser,
        'uid': _uid,
        'idLibro': _idLibro,
        'orden': _orden,
        'titulo': _titulo,
        'descripcion': _descripcion,
        'imgPortada': _imgPortada,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idLibUser': serializeParam(
          _idLibUser,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'idLibro': serializeParam(
          _idLibro,
          ParamType.String,
        ),
        'orden': serializeParam(
          _orden,
          ParamType.int,
        ),
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'imgPortada': serializeParam(
          _imgPortada,
          ParamType.String,
        ),
      }.withoutNulls;

  static DatLibrosUsuarioStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DatLibrosUsuarioStruct(
        idLibUser: deserializeParam(
          data['idLibUser'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        idLibro: deserializeParam(
          data['idLibro'],
          ParamType.String,
          false,
        ),
        orden: deserializeParam(
          data['orden'],
          ParamType.int,
          false,
        ),
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
        imgPortada: deserializeParam(
          data['imgPortada'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DatLibrosUsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatLibrosUsuarioStruct &&
        idLibUser == other.idLibUser &&
        uid == other.uid &&
        idLibro == other.idLibro &&
        orden == other.orden &&
        titulo == other.titulo &&
        descripcion == other.descripcion &&
        imgPortada == other.imgPortada;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([idLibUser, uid, idLibro, orden, titulo, descripcion, imgPortada]);
}

DatLibrosUsuarioStruct createDatLibrosUsuarioStruct({
  String? idLibUser,
  String? uid,
  String? idLibro,
  int? orden,
  String? titulo,
  String? descripcion,
  String? imgPortada,
}) =>
    DatLibrosUsuarioStruct(
      idLibUser: idLibUser,
      uid: uid,
      idLibro: idLibro,
      orden: orden,
      titulo: titulo,
      descripcion: descripcion,
      imgPortada: imgPortada,
    );
