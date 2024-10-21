// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CsvStruct extends BaseStruct {
  CsvStruct({
    String? link,
    String? valor,
  })  : _link = link,
        _valor = valor;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  // "valor" field.
  String? _valor;
  String get valor => _valor ?? '';
  set valor(String? val) => _valor = val;

  bool hasValor() => _valor != null;

  static CsvStruct fromMap(Map<String, dynamic> data) => CsvStruct(
        link: data['link'] as String?,
        valor: data['valor'] as String?,
      );

  static CsvStruct? maybeFromMap(dynamic data) =>
      data is Map ? CsvStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'link': _link,
        'valor': _valor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.String,
        ),
      }.withoutNulls;

  static CsvStruct fromSerializableMap(Map<String, dynamic> data) => CsvStruct(
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CsvStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CsvStruct && link == other.link && valor == other.valor;
  }

  @override
  int get hashCode => const ListEquality().hash([link, valor]);
}

CsvStruct createCsvStruct({
  String? link,
  String? valor,
}) =>
    CsvStruct(
      link: link,
      valor: valor,
    );
