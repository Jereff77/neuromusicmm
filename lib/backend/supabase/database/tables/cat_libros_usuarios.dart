import '../database.dart';

class CatLibrosUsuariosTable extends SupabaseTable<CatLibrosUsuariosRow> {
  @override
  String get tableName => 'catLibros_Usuarios';

  @override
  CatLibrosUsuariosRow createRow(Map<String, dynamic> data) =>
      CatLibrosUsuariosRow(data);
}

class CatLibrosUsuariosRow extends SupabaseDataRow {
  CatLibrosUsuariosRow(super.data);

  @override
  SupabaseTable get table => CatLibrosUsuariosTable();

  String get idLibUser => getField<String>('idLibUser')!;
  set idLibUser(String value) => setField<String>('idLibUser', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get idLibro => getField<String>('idLibro');
  set idLibro(String? value) => setField<String>('idLibro', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);
}
