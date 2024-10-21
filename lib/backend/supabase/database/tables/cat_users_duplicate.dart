import '../database.dart';

class CatUsersDuplicateTable extends SupabaseTable<CatUsersDuplicateRow> {
  @override
  String get tableName => 'catUsers_duplicate';

  @override
  CatUsersDuplicateRow createRow(Map<String, dynamic> data) =>
      CatUsersDuplicateRow(data);
}

class CatUsersDuplicateRow extends SupabaseDataRow {
  CatUsersDuplicateRow(super.data);

  @override
  SupabaseTable get table => CatUsersDuplicateTable();

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido1 => getField<String>('apellido1');
  set apellido1(String? value) => setField<String>('apellido1', value);

  String? get apellido2 => getField<String>('apellido2');
  set apellido2(String? value) => setField<String>('apellido2', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get idEscuela => getField<String>('idEscuela');
  set idEscuela(String? value) => setField<String>('idEscuela', value);

  int? get idPerfil => getField<int>('idPerfil');
  set idPerfil(int? value) => setField<int>('idPerfil', value);

  String? get idPlantel => getField<String>('idPlantel');
  set idPlantel(String? value) => setField<String>('idPlantel', value);
}