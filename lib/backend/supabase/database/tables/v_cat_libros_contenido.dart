import '../database.dart';

class VCatLibrosContenidoTable extends SupabaseTable<VCatLibrosContenidoRow> {
  @override
  String get tableName => 'v_catLibros_contenido';

  @override
  VCatLibrosContenidoRow createRow(Map<String, dynamic> data) =>
      VCatLibrosContenidoRow(data);
}

class VCatLibrosContenidoRow extends SupabaseDataRow {
  VCatLibrosContenidoRow(super.data);

  @override
  SupabaseTable get table => VCatLibrosContenidoTable();

  int? get idContenido => getField<int>('idContenido');
  set idContenido(int? value) => setField<int>('idContenido', value);

  DateTime? get fc => getField<DateTime>('fc');
  set fc(DateTime? value) => setField<DateTime>('fc', value);

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

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get urlFile => getField<String>('urlFile');
  set urlFile(String? value) => setField<String>('urlFile', value);

  String? get imgPortada => getField<String>('imgPortada');
  set imgPortada(String? value) => setField<String>('imgPortada', value);
}
