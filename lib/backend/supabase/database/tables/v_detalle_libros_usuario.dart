import '../database.dart';

class VDetalleLibrosUsuarioTable
    extends SupabaseTable<VDetalleLibrosUsuarioRow> {
  @override
  String get tableName => 'v_detalleLibrosUsuario';

  @override
  VDetalleLibrosUsuarioRow createRow(Map<String, dynamic> data) =>
      VDetalleLibrosUsuarioRow(data);
}

class VDetalleLibrosUsuarioRow extends SupabaseDataRow {
  VDetalleLibrosUsuarioRow(super.data);

  @override
  SupabaseTable get table => VDetalleLibrosUsuarioTable();

  String? get idLibUser => getField<String>('idLibUser');
  set idLibUser(String? value) => setField<String>('idLibUser', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get idLibro => getField<String>('idLibro');
  set idLibro(String? value) => setField<String>('idLibro', value);

  String? get idArchivo => getField<String>('idArchivo');
  set idArchivo(String? value) => setField<String>('idArchivo', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get imgPortada => getField<String>('imgPortada');
  set imgPortada(String? value) => setField<String>('imgPortada', value);

  String? get urlFile => getField<String>('urlFile');
  set urlFile(String? value) => setField<String>('urlFile', value);
}
