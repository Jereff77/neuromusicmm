import '../database.dart';

class ConsultasTable extends SupabaseTable<ConsultasRow> {
  @override
  String get tableName => 'consultas';

  @override
  ConsultasRow createRow(Map<String, dynamic> data) => ConsultasRow(data);
}

class ConsultasRow extends SupabaseDataRow {
  ConsultasRow(super.data);

  @override
  SupabaseTable get table => ConsultasTable();

  String get cid => getField<String>('cid')!;
  set cid(String value) => setField<String>('cid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  String get consulta => getField<String>('consulta')!;
  set consulta(String value) => setField<String>('consulta', value);
}
