// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvitacionesStruct extends BaseStruct {
  InvitacionesStruct({
    String? id,
    bool? status,
    String? idLibro,
    int? usos,
    String? uid1,
    String? uid2,
  })  : _id = id,
        _status = status,
        _idLibro = idLibro,
        _usos = usos,
        _uid1 = uid1,
        _uid2 = uid2;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "idLibro" field.
  String? _idLibro;
  String get idLibro => _idLibro ?? '';
  set idLibro(String? val) => _idLibro = val;

  bool hasIdLibro() => _idLibro != null;

  // "usos" field.
  int? _usos;
  int get usos => _usos ?? 0;
  set usos(int? val) => _usos = val;

  void incrementUsos(int amount) => usos = usos + amount;

  bool hasUsos() => _usos != null;

  // "uid1" field.
  String? _uid1;
  String get uid1 => _uid1 ?? '';
  set uid1(String? val) => _uid1 = val;

  bool hasUid1() => _uid1 != null;

  // "uid2" field.
  String? _uid2;
  String get uid2 => _uid2 ?? '';
  set uid2(String? val) => _uid2 = val;

  bool hasUid2() => _uid2 != null;

  static InvitacionesStruct fromMap(Map<String, dynamic> data) =>
      InvitacionesStruct(
        id: data['id'] as String?,
        status: data['status'] as bool?,
        idLibro: data['idLibro'] as String?,
        usos: castToType<int>(data['usos']),
        uid1: data['uid1'] as String?,
        uid2: data['uid2'] as String?,
      );

  static InvitacionesStruct? maybeFromMap(dynamic data) => data is Map
      ? InvitacionesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'status': _status,
        'idLibro': _idLibro,
        'usos': _usos,
        'uid1': _uid1,
        'uid2': _uid2,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'idLibro': serializeParam(
          _idLibro,
          ParamType.String,
        ),
        'usos': serializeParam(
          _usos,
          ParamType.int,
        ),
        'uid1': serializeParam(
          _uid1,
          ParamType.String,
        ),
        'uid2': serializeParam(
          _uid2,
          ParamType.String,
        ),
      }.withoutNulls;

  static InvitacionesStruct fromSerializableMap(Map<String, dynamic> data) =>
      InvitacionesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        idLibro: deserializeParam(
          data['idLibro'],
          ParamType.String,
          false,
        ),
        usos: deserializeParam(
          data['usos'],
          ParamType.int,
          false,
        ),
        uid1: deserializeParam(
          data['uid1'],
          ParamType.String,
          false,
        ),
        uid2: deserializeParam(
          data['uid2'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'InvitacionesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InvitacionesStruct &&
        id == other.id &&
        status == other.status &&
        idLibro == other.idLibro &&
        usos == other.usos &&
        uid1 == other.uid1 &&
        uid2 == other.uid2;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, status, idLibro, usos, uid1, uid2]);
}

InvitacionesStruct createInvitacionesStruct({
  String? id,
  bool? status,
  String? idLibro,
  int? usos,
  String? uid1,
  String? uid2,
}) =>
    InvitacionesStruct(
      id: id,
      status: status,
      idLibro: idLibro,
      usos: usos,
      uid1: uid1,
      uid2: uid2,
    );
