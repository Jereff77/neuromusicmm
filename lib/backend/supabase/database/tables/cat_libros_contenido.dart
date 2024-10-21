import '../database.dart';

class CatLibrosContenidoTable extends SupabaseTable<CatLibrosContenidoRow> {
  @override
  String get tableName => 'catLibros_contenido';

  @override
  CatLibrosContenidoRow createRow(Map<String, dynamic> data) =>
      CatLibrosContenidoRow(data);
}

class CatLibrosContenidoRow extends SupabaseDataRow {
  CatLibrosContenidoRow(super.data);

  @override
  SupabaseTable get table => CatLibrosContenidoTable();

  int get idContenido => getField<int>('idContenido')!;
  set idContenido(int value) => setField<int>('idContenido', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get idLibro => getField<String>('idLibro');
  set idLibro(String? value) => setField<String>('idLibro', value);

  String? get idArchivo => getField<String>('idArchivo');
  set idArchivo(String? value) => setField<String>('idArchivo', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);
}
