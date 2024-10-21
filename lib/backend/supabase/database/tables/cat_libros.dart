import '../database.dart';

class CatLibrosTable extends SupabaseTable<CatLibrosRow> {
  @override
  String get tableName => 'catLibros';

  @override
  CatLibrosRow createRow(Map<String, dynamic> data) => CatLibrosRow(data);
}

class CatLibrosRow extends SupabaseDataRow {
  CatLibrosRow(super.data);

  @override
  SupabaseTable get table => CatLibrosTable();

  String get idLibro => getField<String>('idLibro')!;
  set idLibro(String value) => setField<String>('idLibro', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get imgPortada => getField<String>('imgPortada');
  set imgPortada(String? value) => setField<String>('imgPortada', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);
}
