// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatRecomendacionesStruct extends BaseStruct {
  DatRecomendacionesStruct({
    String? id,
    String? idLibro,
    String? url,
    String? titulo,
    String? descripcion,
    int? orden,
    String? imgVideo,
  })  : _id = id,
        _idLibro = idLibro,
        _url = url,
        _titulo = titulo,
        _descripcion = descripcion,
        _orden = orden,
        _imgVideo = imgVideo;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "idLibro" field.
  String? _idLibro;
  String get idLibro => _idLibro ?? '';
  set idLibro(String? val) => _idLibro = val;

  bool hasIdLibro() => _idLibro != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

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

  // "orden" field.
  int? _orden;
  int get orden => _orden ?? 0;
  set orden(int? val) => _orden = val;

  void incrementOrden(int amount) => orden = orden + amount;

  bool hasOrden() => _orden != null;

  // "imgVideo" field.
  String? _imgVideo;
  String get imgVideo => _imgVideo ?? '';
  set imgVideo(String? val) => _imgVideo = val;

  bool hasImgVideo() => _imgVideo != null;

  static DatRecomendacionesStruct fromMap(Map<String, dynamic> data) =>
      DatRecomendacionesStruct(
        id: data['id'] as String?,
        idLibro: data['idLibro'] as String?,
        url: data['url'] as String?,
        titulo: data['titulo'] as String?,
        descripcion: data['descripcion'] as String?,
        orden: castToType<int>(data['orden']),
        imgVideo: data['imgVideo'] as String?,
      );

  static DatRecomendacionesStruct? maybeFromMap(dynamic data) => data is Map
      ? DatRecomendacionesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'idLibro': _idLibro,
        'url': _url,
        'titulo': _titulo,
        'descripcion': _descripcion,
        'orden': _orden,
        'imgVideo': _imgVideo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'idLibro': serializeParam(
          _idLibro,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
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
        'orden': serializeParam(
          _orden,
          ParamType.int,
        ),
        'imgVideo': serializeParam(
          _imgVideo,
          ParamType.String,
        ),
      }.withoutNulls;

  static DatRecomendacionesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DatRecomendacionesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        idLibro: deserializeParam(
          data['idLibro'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
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
        orden: deserializeParam(
          data['orden'],
          ParamType.int,
          false,
        ),
        imgVideo: deserializeParam(
          data['imgVideo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DatRecomendacionesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatRecomendacionesStruct &&
        id == other.id &&
        idLibro == other.idLibro &&
        url == other.url &&
        titulo == other.titulo &&
        descripcion == other.descripcion &&
        orden == other.orden &&
        imgVideo == other.imgVideo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, idLibro, url, titulo, descripcion, orden, imgVideo]);
}

DatRecomendacionesStruct createDatRecomendacionesStruct({
  String? id,
  String? idLibro,
  String? url,
  String? titulo,
  String? descripcion,
  int? orden,
  String? imgVideo,
}) =>
    DatRecomendacionesStruct(
      id: id,
      idLibro: idLibro,
      url: url,
      titulo: titulo,
      descripcion: descripcion,
      orden: orden,
      imgVideo: imgVideo,
    );
