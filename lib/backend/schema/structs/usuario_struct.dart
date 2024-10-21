// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioStruct extends BaseStruct {
  UsuarioStruct({
    String? uid,
    bool? status,
    String? nombre,
    String? email,
    String? idEscuela,
    String? nomEscuela,
    String? imgLogo,
    String? idPlantel,
    String? nomPlantel,
    int? perfil,
    String? imgFoto,
  })  : _uid = uid,
        _status = status,
        _nombre = nombre,
        _email = email,
        _idEscuela = idEscuela,
        _nomEscuela = nomEscuela,
        _imgLogo = imgLogo,
        _idPlantel = idPlantel,
        _nomPlantel = nomPlantel,
        _perfil = perfil,
        _imgFoto = imgFoto;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "idEscuela" field.
  String? _idEscuela;
  String get idEscuela => _idEscuela ?? '';
  set idEscuela(String? val) => _idEscuela = val;

  bool hasIdEscuela() => _idEscuela != null;

  // "nomEscuela" field.
  String? _nomEscuela;
  String get nomEscuela => _nomEscuela ?? '';
  set nomEscuela(String? val) => _nomEscuela = val;

  bool hasNomEscuela() => _nomEscuela != null;

  // "imgLogo" field.
  String? _imgLogo;
  String get imgLogo => _imgLogo ?? '';
  set imgLogo(String? val) => _imgLogo = val;

  bool hasImgLogo() => _imgLogo != null;

  // "idPlantel" field.
  String? _idPlantel;
  String get idPlantel => _idPlantel ?? '';
  set idPlantel(String? val) => _idPlantel = val;

  bool hasIdPlantel() => _idPlantel != null;

  // "nomPlantel" field.
  String? _nomPlantel;
  String get nomPlantel => _nomPlantel ?? '';
  set nomPlantel(String? val) => _nomPlantel = val;

  bool hasNomPlantel() => _nomPlantel != null;

  // "perfil" field.
  int? _perfil;
  int get perfil => _perfil ?? 0;
  set perfil(int? val) => _perfil = val;

  void incrementPerfil(int amount) => perfil = perfil + amount;

  bool hasPerfil() => _perfil != null;

  // "imgFoto" field.
  String? _imgFoto;
  String get imgFoto => _imgFoto ?? '';
  set imgFoto(String? val) => _imgFoto = val;

  bool hasImgFoto() => _imgFoto != null;

  static UsuarioStruct fromMap(Map<String, dynamic> data) => UsuarioStruct(
        uid: data['uid'] as String?,
        status: data['status'] as bool?,
        nombre: data['nombre'] as String?,
        email: data['email'] as String?,
        idEscuela: data['idEscuela'] as String?,
        nomEscuela: data['nomEscuela'] as String?,
        imgLogo: data['imgLogo'] as String?,
        idPlantel: data['idPlantel'] as String?,
        nomPlantel: data['nomPlantel'] as String?,
        perfil: castToType<int>(data['perfil']),
        imgFoto: data['imgFoto'] as String?,
      );

  static UsuarioStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsuarioStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'status': _status,
        'nombre': _nombre,
        'email': _email,
        'idEscuela': _idEscuela,
        'nomEscuela': _nomEscuela,
        'imgLogo': _imgLogo,
        'idPlantel': _idPlantel,
        'nomPlantel': _nomPlantel,
        'perfil': _perfil,
        'imgFoto': _imgFoto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'idEscuela': serializeParam(
          _idEscuela,
          ParamType.String,
        ),
        'nomEscuela': serializeParam(
          _nomEscuela,
          ParamType.String,
        ),
        'imgLogo': serializeParam(
          _imgLogo,
          ParamType.String,
        ),
        'idPlantel': serializeParam(
          _idPlantel,
          ParamType.String,
        ),
        'nomPlantel': serializeParam(
          _nomPlantel,
          ParamType.String,
        ),
        'perfil': serializeParam(
          _perfil,
          ParamType.int,
        ),
        'imgFoto': serializeParam(
          _imgFoto,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsuarioStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        idEscuela: deserializeParam(
          data['idEscuela'],
          ParamType.String,
          false,
        ),
        nomEscuela: deserializeParam(
          data['nomEscuela'],
          ParamType.String,
          false,
        ),
        imgLogo: deserializeParam(
          data['imgLogo'],
          ParamType.String,
          false,
        ),
        idPlantel: deserializeParam(
          data['idPlantel'],
          ParamType.String,
          false,
        ),
        nomPlantel: deserializeParam(
          data['nomPlantel'],
          ParamType.String,
          false,
        ),
        perfil: deserializeParam(
          data['perfil'],
          ParamType.int,
          false,
        ),
        imgFoto: deserializeParam(
          data['imgFoto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsuarioStruct &&
        uid == other.uid &&
        status == other.status &&
        nombre == other.nombre &&
        email == other.email &&
        idEscuela == other.idEscuela &&
        nomEscuela == other.nomEscuela &&
        imgLogo == other.imgLogo &&
        idPlantel == other.idPlantel &&
        nomPlantel == other.nomPlantel &&
        perfil == other.perfil &&
        imgFoto == other.imgFoto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        uid,
        status,
        nombre,
        email,
        idEscuela,
        nomEscuela,
        imgLogo,
        idPlantel,
        nomPlantel,
        perfil,
        imgFoto
      ]);
}

UsuarioStruct createUsuarioStruct({
  String? uid,
  bool? status,
  String? nombre,
  String? email,
  String? idEscuela,
  String? nomEscuela,
  String? imgLogo,
  String? idPlantel,
  String? nomPlantel,
  int? perfil,
  String? imgFoto,
}) =>
    UsuarioStruct(
      uid: uid,
      status: status,
      nombre: nombre,
      email: email,
      idEscuela: idEscuela,
      nomEscuela: nomEscuela,
      imgLogo: imgLogo,
      idPlantel: idPlantel,
      nomPlantel: nomPlantel,
      perfil: perfil,
      imgFoto: imgFoto,
    );
