// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatDetalleLibrosUsuarioStruct extends BaseStruct {
  DatDetalleLibrosUsuarioStruct({
    String? idLibUser,
    String? uid,
    String? idLibro,
    String? idArchivo,
    int? orden,
    String? tipo,
    String? titulo,
    String? descripcion,
    String? imgPortada,
    String? urlVideo,
    String? urlFile,
  })  : _idLibUser = idLibUser,
        _uid = uid,
        _idLibro = idLibro,
        _idArchivo = idArchivo,
        _orden = orden,
        _tipo = tipo,
        _titulo = titulo,
        _descripcion = descripcion,
        _imgPortada = imgPortada,
        _urlVideo = urlVideo,
        _urlFile = urlFile;

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

  // "idArchivo" field.
  String? _idArchivo;
  String get idArchivo => _idArchivo ?? '';
  set idArchivo(String? val) => _idArchivo = val;

  bool hasIdArchivo() => _idArchivo != null;

  // "orden" field.
  int? _orden;
  int get orden => _orden ?? 0;
  set orden(int? val) => _orden = val;

  void incrementOrden(int amount) => orden = orden + amount;

  bool hasOrden() => _orden != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

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

  // "urlVideo" field.
  String? _urlVideo;
  String get urlVideo => _urlVideo ?? '';
  set urlVideo(String? val) => _urlVideo = val;

  bool hasUrlVideo() => _urlVideo != null;

  // "urlFile" field.
  String? _urlFile;
  String get urlFile => _urlFile ?? '';
  set urlFile(String? val) => _urlFile = val;

  bool hasUrlFile() => _urlFile != null;

  static DatDetalleLibrosUsuarioStruct fromMap(Map<String, dynamic> data) =>
      DatDetalleLibrosUsuarioStruct(
        idLibUser: data['idLibUser'] as String?,
        uid: data['uid'] as String?,
        idLibro: data['idLibro'] as String?,
        idArchivo: data['idArchivo'] as String?,
        orden: castToType<int>(data['orden']),
        tipo: data['tipo'] as String?,
        titulo: data['titulo'] as String?,
        descripcion: data['descripcion'] as String?,
        imgPortada: data['imgPortada'] as String?,
        urlVideo: data['urlVideo'] as String?,
        urlFile: data['urlFile'] as String?,
      );

  static DatDetalleLibrosUsuarioStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? DatDetalleLibrosUsuarioStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'idLibUser': _idLibUser,
        'uid': _uid,
        'idLibro': _idLibro,
        'idArchivo': _idArchivo,
        'orden': _orden,
        'tipo': _tipo,
        'titulo': _titulo,
        'descripcion': _descripcion,
        'imgPortada': _imgPortada,
        'urlVideo': _urlVideo,
        'urlFile': _urlFile,
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
        'idArchivo': serializeParam(
          _idArchivo,
          ParamType.String,
        ),
        'orden': serializeParam(
          _orden,
          ParamType.int,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
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
        'urlVideo': serializeParam(
          _urlVideo,
          ParamType.String,
        ),
        'urlFile': serializeParam(
          _urlFile,
          ParamType.String,
        ),
      }.withoutNulls;

  static DatDetalleLibrosUsuarioStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DatDetalleLibrosUsuarioStruct(
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
        idArchivo: deserializeParam(
          data['idArchivo'],
          ParamType.String,
          false,
        ),
        orden: deserializeParam(
          data['orden'],
          ParamType.int,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
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
        urlVideo: deserializeParam(
          data['urlVideo'],
          ParamType.String,
          false,
        ),
        urlFile: deserializeParam(
          data['urlFile'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DatDetalleLibrosUsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatDetalleLibrosUsuarioStruct &&
        idLibUser == other.idLibUser &&
        uid == other.uid &&
        idLibro == other.idLibro &&
        idArchivo == other.idArchivo &&
        orden == other.orden &&
        tipo == other.tipo &&
        titulo == other.titulo &&
        descripcion == other.descripcion &&
        imgPortada == other.imgPortada &&
        urlVideo == other.urlVideo &&
        urlFile == other.urlFile;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idLibUser,
        uid,
        idLibro,
        idArchivo,
        orden,
        tipo,
        titulo,
        descripcion,
        imgPortada,
        urlVideo,
        urlFile
      ]);
}

DatDetalleLibrosUsuarioStruct createDatDetalleLibrosUsuarioStruct({
  String? idLibUser,
  String? uid,
  String? idLibro,
  String? idArchivo,
  int? orden,
  String? tipo,
  String? titulo,
  String? descripcion,
  String? imgPortada,
  String? urlVideo,
  String? urlFile,
}) =>
    DatDetalleLibrosUsuarioStruct(
      idLibUser: idLibUser,
      uid: uid,
      idLibro: idLibro,
      idArchivo: idArchivo,
      orden: orden,
      tipo: tipo,
      titulo: titulo,
      descripcion: descripcion,
      imgPortada: imgPortada,
      urlVideo: urlVideo,
      urlFile: urlFile,
    );
