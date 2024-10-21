import '../database.dart';

class VLibrosUsuarioTable extends SupabaseTable<VLibrosUsuarioRow> {
  @override
  String get tableName => 'v_LibrosUsuario';

  @override
  VLibrosUsuarioRow createRow(Map<String, dynamic> data) =>
      VLibrosUsuarioRow(data);
}

class VLibrosUsuarioRow extends SupabaseDataRow {
  VLibrosUsuarioRow(super.data);

  @override
  SupabaseTable get table => VLibrosUsuarioTable();

  String? get idLibUser => getField<String>('idLibUser');
  set idLibUser(String? value) => setField<String>('idLibUser', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get idLibro => getField<String>('idLibro');
  set idLibro(String? value) => setField<String>('idLibro', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get imgPortada => getField<String>('imgPortada');
  set imgPortada(String? value) => setField<String>('imgPortada', value);
}
