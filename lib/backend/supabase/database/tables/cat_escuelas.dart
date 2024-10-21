import '../database.dart';

class CatEscuelasTable extends SupabaseTable<CatEscuelasRow> {
  @override
  String get tableName => 'catEscuelas';

  @override
  CatEscuelasRow createRow(Map<String, dynamic> data) => CatEscuelasRow(data);
}

class CatEscuelasRow extends SupabaseDataRow {
  CatEscuelasRow(super.data);

  @override
  SupabaseTable get table => CatEscuelasTable();

  String get idEscuela => getField<String>('idEscuela')!;
  set idEscuela(String value) => setField<String>('idEscuela', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get nomEscuela => getField<String>('nomEscuela');
  set nomEscuela(String? value) => setField<String>('nomEscuela', value);

  String? get nomContacto => getField<String>('nomContacto');
  set nomContacto(String? value) => setField<String>('nomContacto', value);

  String? get telContacto => getField<String>('telContacto');
  set telContacto(String? value) => setField<String>('telContacto', value);

  String? get notas => getField<String>('notas');
  set notas(String? value) => setField<String>('notas', value);

  String? get imgLogo => getField<String>('imgLogo');
  set imgLogo(String? value) => setField<String>('imgLogo', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);
}
