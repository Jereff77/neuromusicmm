// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListItemsStruct extends BaseStruct {
  ListItemsStruct({
    int? orden,
    String? idArchivo,
  })  : _orden = orden,
        _idArchivo = idArchivo;

  // "orden" field.
  int? _orden;
  int get orden => _orden ?? 0;
  set orden(int? val) => _orden = val;

  void incrementOrden(int amount) => orden = orden + amount;

  bool hasOrden() => _orden != null;

  // "idArchivo" field.
  String? _idArchivo;
  String get idArchivo => _idArchivo ?? '';
  set idArchivo(String? val) => _idArchivo = val;

  bool hasIdArchivo() => _idArchivo != null;

  static ListItemsStruct fromMap(Map<String, dynamic> data) => ListItemsStruct(
        orden: castToType<int>(data['orden']),
        idArchivo: data['idArchivo'] as String?,
      );

  static ListItemsStruct? maybeFromMap(dynamic data) => data is Map
      ? ListItemsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'orden': _orden,
        'idArchivo': _idArchivo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'orden': serializeParam(
          _orden,
          ParamType.int,
        ),
        'idArchivo': serializeParam(
          _idArchivo,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListItemsStruct(
        orden: deserializeParam(
          data['orden'],
          ParamType.int,
          false,
        ),
        idArchivo: deserializeParam(
          data['idArchivo'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListItemsStruct &&
        orden == other.orden &&
        idArchivo == other.idArchivo;
  }

  @override
  int get hashCode => const ListEquality().hash([orden, idArchivo]);
}

ListItemsStruct createListItemsStruct({
  int? orden,
  String? idArchivo,
}) =>
    ListItemsStruct(
      orden: orden,
      idArchivo: idArchivo,
    );
