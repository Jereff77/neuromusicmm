import '../database.dart';

class VusersTable extends SupabaseTable<VusersRow> {
  @override
  String get tableName => 'vusers';

  @override
  VusersRow createRow(Map<String, dynamic> data) => VusersRow(data);
}

class VusersRow extends SupabaseDataRow {
  VusersRow(super.data);

  @override
  SupabaseTable get table => VusersTable();

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get nom => getField<String>('nom');
  set nom(String? value) => setField<String>('nom', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get idEscuela => getField<String>('idEscuela');
  set idEscuela(String? value) => setField<String>('idEscuela', value);

  String? get nomescuela => getField<String>('nomescuela');
  set nomescuela(String? value) => setField<String>('nomescuela', value);

  String? get imglogo => getField<String>('imglogo');
  set imglogo(String? value) => setField<String>('imglogo', value);

  String? get idPlantel => getField<String>('idPlantel');
  set idPlantel(String? value) => setField<String>('idPlantel', value);

  String? get nomplantel => getField<String>('nomplantel');
  set nomplantel(String? value) => setField<String>('nomplantel', value);

  int? get perfil => getField<int>('perfil');
  set perfil(int? value) => setField<int>('perfil', value);

  String? get imgFoto => getField<String>('imgFoto');
  set imgFoto(String? value) => setField<String>('imgFoto', value);
}
