import '../database.dart';

class InvitacionesTable extends SupabaseTable<InvitacionesRow> {
  @override
  String get tableName => 'invitaciones';

  @override
  InvitacionesRow createRow(Map<String, dynamic> data) => InvitacionesRow(data);
}

class InvitacionesRow extends SupabaseDataRow {
  InvitacionesRow(super.data);

  @override
  SupabaseTable get table => InvitacionesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  String? get uidCreador => getField<String>('uidCreador');
  set uidCreador(String? value) => setField<String>('uidCreador', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get idLibro => getField<String>('idLibro');
  set idLibro(String? value) => setField<String>('idLibro', value);

  int? get usos => getField<int>('usos');
  set usos(int? value) => setField<int>('usos', value);

  String? get uid1 => getField<String>('uid1');
  set uid1(String? value) => setField<String>('uid1', value);

  DateTime? get uid1fc => getField<DateTime>('uid1fc');
  set uid1fc(DateTime? value) => setField<DateTime>('uid1fc', value);

  String? get uid2 => getField<String>('uid2');
  set uid2(String? value) => setField<String>('uid2', value);

  DateTime? get uid2fc => getField<DateTime>('uid2fc');
  set uid2fc(DateTime? value) => setField<DateTime>('uid2fc', value);
}
