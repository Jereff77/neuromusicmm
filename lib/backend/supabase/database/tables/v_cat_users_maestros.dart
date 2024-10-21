import '../database.dart';

class VCatUsersMaestrosTable extends SupabaseTable<VCatUsersMaestrosRow> {
  @override
  String get tableName => 'v_catUsersMaestros';

  @override
  VCatUsersMaestrosRow createRow(Map<String, dynamic> data) =>
      VCatUsersMaestrosRow(data);
}

class VCatUsersMaestrosRow extends SupabaseDataRow {
  VCatUsersMaestrosRow(super.data);

  @override
  SupabaseTable get table => VCatUsersMaestrosTable();

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  DateTime? get fc => getField<DateTime>('fc');
  set fc(DateTime? value) => setField<DateTime>('fc', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido1 => getField<String>('apellido1');
  set apellido1(String? value) => setField<String>('apellido1', value);

  String? get apellido2 => getField<String>('apellido2');
  set apellido2(String? value) => setField<String>('apellido2', value);

  String? get nomcompleto => getField<String>('nomcompleto');
  set nomcompleto(String? value) => setField<String>('nomcompleto', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  String? get idEscuela => getField<String>('idEscuela');
  set idEscuela(String? value) => setField<String>('idEscuela', value);

  String? get nomEscuela => getField<String>('nomEscuela');
  set nomEscuela(String? value) => setField<String>('nomEscuela', value);

  String? get imgLogo => getField<String>('imgLogo');
  set imgLogo(String? value) => setField<String>('imgLogo', value);

  String? get idPlantel => getField<String>('idPlantel');
  set idPlantel(String? value) => setField<String>('idPlantel', value);

  String? get nomPlantel => getField<String>('nomPlantel');
  set nomPlantel(String? value) => setField<String>('nomPlantel', value);

  int? get idPerfil => getField<int>('idPerfil');
  set idPerfil(int? value) => setField<int>('idPerfil', value);

  String? get invitacion => getField<String>('invitacion');
  set invitacion(String? value) => setField<String>('invitacion', value);

  String? get imgFoto => getField<String>('imgFoto');
  set imgFoto(String? value) => setField<String>('imgFoto', value);
}
