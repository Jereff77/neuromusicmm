import '../database.dart';

class VLibrosRecomendacionesTable
    extends SupabaseTable<VLibrosRecomendacionesRow> {
  @override
  String get tableName => 'v_LibrosRecomendaciones';

  @override
  VLibrosRecomendacionesRow createRow(Map<String, dynamic> data) =>
      VLibrosRecomendacionesRow(data);
}

class VLibrosRecomendacionesRow extends SupabaseDataRow {
  VLibrosRecomendacionesRow(super.data);

  @override
  SupabaseTable get table => VLibrosRecomendacionesTable();

  String? get idLibro => getField<String>('idLibro');
  set idLibro(String? value) => setField<String>('idLibro', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);
}
