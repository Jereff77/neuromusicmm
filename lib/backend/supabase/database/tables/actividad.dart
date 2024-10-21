import '../database.dart';

class ActividadTable extends SupabaseTable<ActividadRow> {
  @override
  String get tableName => 'actividad';

  @override
  ActividadRow createRow(Map<String, dynamic> data) => ActividadRow(data);
}

class ActividadRow extends SupabaseDataRow {
  ActividadRow(super.data);

  @override
  SupabaseTable get table => ActividadTable();

  int get idActividad => getField<int>('idActividad')!;
  set idActividad(int value) => setField<int>('idActividad', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  bool? get logeado => getField<bool>('logeado');
  set logeado(bool? value) => setField<bool>('logeado', value);

  String? get ambiente => getField<String>('ambiente');
  set ambiente(String? value) => setField<String>('ambiente', value);

  String? get pantalla => getField<String>('pantalla');
  set pantalla(String? value) => setField<String>('pantalla', value);

  String? get resolucion => getField<String>('resolucion');
  set resolucion(String? value) => setField<String>('resolucion', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);

  String? get widget => getField<String>('widget');
  set widget(String? value) => setField<String>('widget', value);

  String? get nomWidget => getField<String>('nomWidget');
  set nomWidget(String? value) => setField<String>('nomWidget', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  String? get correo => getField<String>('correo');
  set correo(String? value) => setField<String>('correo', value);

  int get app => getField<int>('app')!;
  set app(int value) => setField<int>('app', value);
}
