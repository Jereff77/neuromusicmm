import '../database.dart';

class RecomendacionesTable extends SupabaseTable<RecomendacionesRow> {
  @override
  String get tableName => 'recomendaciones';

  @override
  RecomendacionesRow createRow(Map<String, dynamic> data) =>
      RecomendacionesRow(data);
}

class RecomendacionesRow extends SupabaseDataRow {
  RecomendacionesRow(super.data);

  @override
  SupabaseTable get table => RecomendacionesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  String get url => getField<String>('url')!;
  set url(String value) => setField<String>('url', value);

  String get idLibro => getField<String>('idLibro')!;
  set idLibro(String value) => setField<String>('idLibro', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get imgVideo => getField<String>('imgVideo');
  set imgVideo(String? value) => setField<String>('imgVideo', value);
}
