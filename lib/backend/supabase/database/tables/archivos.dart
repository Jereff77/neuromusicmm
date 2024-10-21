import '../database.dart';

class ArchivosTable extends SupabaseTable<ArchivosRow> {
  @override
  String get tableName => 'archivos';

  @override
  ArchivosRow createRow(Map<String, dynamic> data) => ArchivosRow(data);
}

class ArchivosRow extends SupabaseDataRow {
  ArchivosRow(super.data);

  @override
  SupabaseTable get table => ArchivosTable();

  String get idFile => getField<String>('idFile')!;
  set idFile(String value) => setField<String>('idFile', value);

  DateTime get fc => getField<DateTime>('fc')!;
  set fc(DateTime value) => setField<DateTime>('fc', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get imgPortada => getField<String>('imgPortada');
  set imgPortada(String? value) => setField<String>('imgPortada', value);

  String? get urlFile => getField<String>('urlFile');
  set urlFile(String? value) => setField<String>('urlFile', value);
}
