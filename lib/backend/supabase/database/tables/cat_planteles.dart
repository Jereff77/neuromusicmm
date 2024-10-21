import '../database.dart';

class CatPlantelesTable extends SupabaseTable<CatPlantelesRow> {
  @override
  String get tableName => 'catPlanteles';

  @override
  CatPlantelesRow createRow(Map<String, dynamic> data) => CatPlantelesRow(data);
}

class CatPlantelesRow extends SupabaseDataRow {
  CatPlantelesRow(super.data);

  @override
  SupabaseTable get table => CatPlantelesTable();

  String get idPlantel => getField<String>('idPlantel')!;
  set idPlantel(String value) => setField<String>('idPlantel', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get idEscuela => getField<String>('idEscuela');
  set idEscuela(String? value) => setField<String>('idEscuela', value);

  String? get nomPlantel => getField<String>('nomPlantel');
  set nomPlantel(String? value) => setField<String>('nomPlantel', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);
}
