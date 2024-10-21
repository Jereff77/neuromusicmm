import '../database.dart';

class ReproduccionTable extends SupabaseTable<ReproduccionRow> {
  @override
  String get tableName => 'reproduccion';

  @override
  ReproduccionRow createRow(Map<String, dynamic> data) => ReproduccionRow(data);
}

class ReproduccionRow extends SupabaseDataRow {
  ReproduccionRow(super.data);

  @override
  SupabaseTable get table => ReproduccionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  int get tipo => getField<int>('tipo')!;
  set tipo(int value) => setField<int>('tipo', value);

  String get idReproduccion => getField<String>('idReproduccion')!;
  set idReproduccion(String value) => setField<String>('idReproduccion', value);
}
