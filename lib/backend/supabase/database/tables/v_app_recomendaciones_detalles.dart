import '../database.dart';

class VAppRecomendacionesDetallesTable
    extends SupabaseTable<VAppRecomendacionesDetallesRow> {
  @override
  String get tableName => 'v_appRecomendacionesDetalles';

  @override
  VAppRecomendacionesDetallesRow createRow(Map<String, dynamic> data) =>
      VAppRecomendacionesDetallesRow(data);
}

class VAppRecomendacionesDetallesRow extends SupabaseDataRow {
  VAppRecomendacionesDetallesRow(super.data);

  @override
  SupabaseTable get table => VAppRecomendacionesDetallesTable();

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get idLibro => getField<String>('idLibro');
  set idLibro(String? value) => setField<String>('idLibro', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get imgVideo => getField<String>('imgVideo');
  set imgVideo(String? value) => setField<String>('imgVideo', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);
}
