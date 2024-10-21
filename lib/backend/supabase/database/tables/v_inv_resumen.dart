import '../database.dart';

class VInvResumenTable extends SupabaseTable<VInvResumenRow> {
  @override
  String get tableName => 'v_InvResumen';

  @override
  VInvResumenRow createRow(Map<String, dynamic> data) => VInvResumenRow(data);
}

class VInvResumenRow extends SupabaseDataRow {
  VInvResumenRow(super.data);

  @override
  SupabaseTable get table => VInvResumenTable();

  String? get idLibro => getField<String>('idLibro');
  set idLibro(String? value) => setField<String>('idLibro', value);

  String? get imgPortada => getField<String>('imgPortada');
  set imgPortada(String? value) => setField<String>('imgPortada', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  int? get orden => getField<int>('orden');
  set orden(int? value) => setField<int>('orden', value);

  int? get usos => getField<int>('Usos');
  set usos(int? value) => setField<int>('Usos', value);

  int? get usos0 => getField<int>('Usos 0');
  set usos0(int? value) => setField<int>('Usos 0', value);

  int? get usos1 => getField<int>('Usos 1');
  set usos1(int? value) => setField<int>('Usos 1', value);

  int? get usos2 => getField<int>('Usos 2');
  set usos2(int? value) => setField<int>('Usos 2', value);
}
