import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future actividad(
  BuildContext context, {
  required String? pantalla,
  required String? widget,
  required String? nomWidget,
  String? comentario,
  required String? correo,
  required int? app,
}) async {
  await ActividadTable().insert({
    'uid': currentUserUid,
    'logeado': loggedIn,
    'ambiente': () {
      if (isAndroid) {
        return 'Android';
      } else if (isiOS) {
        return 'IOs';
      } else if (isWeb) {
        return 'Web';
      } else {
        return 'Otro';
      }
    }(),
    'resolucion':
        'w${MediaQuery.sizeOf(context).width.toString()}h${MediaQuery.sizeOf(context).height.toString()}',
    'version': FFAppConstants.version,
    'pantalla': pantalla,
    'widget': widget,
    'nomWidget': nomWidget,
    'comentario': valueOrDefault<String>(
      comentario,
      '--',
    ),
  });
}

Future usuarioActual(
  BuildContext context, {
  required String? uid,
}) async {
  List<VusersRow>? outUser;

  outUser = await VusersTable().queryRows(
    queryFn: (q) => q.eq(
      'uid',
      currentUserUid,
    ),
  );
  FFAppState().userActivo = UsuarioStruct(
    uid: outUser.first.uid,
    status: outUser.first.status,
    nombre: outUser.first.nom,
    email: outUser.first.email,
    idEscuela: outUser.first.idEscuela,
    idPlantel: outUser.first.idPlantel,
    perfil: outUser.first.perfil,
    nomEscuela: outUser.first.nomescuela,
    imgLogo: outUser.first.imglogo,
    nomPlantel: outUser.first.nomplantel,
    imgFoto: outUser.first.imgFoto,
  );
  FFAppState().update(() {});
}

Future catLibrosUsuario(BuildContext context) async {
  List<VLibrosUsuarioRow>? outLibrosUsuario;

  // Determina si el usuario tiene actualizado el catalogo de libros
  if (FFAppState().librosUsuarios.length.toString() != '0') {
    return;
  }

  // Traemos toda la informacion de los libros del  usuario
  outLibrosUsuario = await VLibrosUsuarioTable().queryRows(
    queryFn: (q) => q.eq(
      'uid',
      currentUserUid,
    ),
  );
  // Limpia los datos de la variable
  FFAppState().deleteLibrosUsuarios();
  FFAppState().librosUsuarios = [];

  FFAppState().count = 0;
  FFAppState().elementos = outLibrosUsuario.length;
  FFAppState().update(() {});
  while (FFAppState().count < outLibrosUsuario.length) {
    // Agregamos el registro a la variable
    //
    // Count incrementa 1
    FFAppState().addToLibrosUsuarios(DatLibrosUsuarioStruct(
      uid: outLibrosUsuario[FFAppState().count].uid,
      idLibro: outLibrosUsuario[FFAppState().count].idLibro,
      orden: outLibrosUsuario[FFAppState().count].orden,
      titulo: outLibrosUsuario[FFAppState().count].titulo,
      descripcion: outLibrosUsuario[FFAppState().count].descripcion,
      imgPortada: outLibrosUsuario[FFAppState().count].imgPortada,
      idLibUser: valueOrDefault<String>(
        outLibrosUsuario[FFAppState().count].idLibUser,
        '-',
      ),
    ));
    FFAppState().count = FFAppState().count + 1;
    FFAppState().update(() {});
    await Future.delayed(const Duration(milliseconds: 100));
  }
  return;
}

Future detalleLibrosUsuario(BuildContext context) async {
  List<VDetalleLibrosUsuarioRow>? outDetalleLibrosUsuarios;

  if (FFAppState().detalleLibrosUsuario.isNotEmpty) {
    return;
  }

  outDetalleLibrosUsuarios = await VDetalleLibrosUsuarioTable().queryRows(
    queryFn: (q) => q.eq(
      'uid',
      FFAppState().userActivo.uid,
    ),
  );
  FFAppState().deleteDetalleLibrosUsuario();
  FFAppState().detalleLibrosUsuario = [];

  FFAppState().count = 0;
  FFAppState().elementos = valueOrDefault<int>(
    outDetalleLibrosUsuarios.length,
    0,
  );
  FFAppState().update(() {});
  while (FFAppState().count < FFAppState().elementos) {
    FFAppState().addToDetalleLibrosUsuario(DatDetalleLibrosUsuarioStruct(
      idLibUser: outDetalleLibrosUsuarios[FFAppState().count].idLibUser,
      uid: outDetalleLibrosUsuarios[FFAppState().count].uid,
      idLibro: outDetalleLibrosUsuarios[FFAppState().count].idLibro,
      idArchivo: outDetalleLibrosUsuarios[FFAppState().count].idArchivo,
      orden: outDetalleLibrosUsuarios[FFAppState().count].orden,
      tipo: outDetalleLibrosUsuarios[FFAppState().count].tipo,
      titulo: outDetalleLibrosUsuarios[FFAppState().count].titulo,
      descripcion: outDetalleLibrosUsuarios[FFAppState().count].descripcion,
      imgPortada: outDetalleLibrosUsuarios[FFAppState().count].imgPortada,
      urlFile: outDetalleLibrosUsuarios[FFAppState().count].urlFile,
    ));
    FFAppState().update(() {});
    FFAppState().count = FFAppState().count + 1;
    FFAppState().update(() {});
    await Future.delayed(const Duration(milliseconds: 20));
  }
}

Future detalleMusicaUsuarios(BuildContext context) async {
  List<VDetalleLibrosUsuarioRow>? outDetalleLibrosUsuarios;

  if (FFAppState().detalleLibrosUsuario.isNotEmpty) {
    return;
  }

  outDetalleLibrosUsuarios = await VDetalleLibrosUsuarioTable().queryRows(
    queryFn: (q) => q
        .eq(
          'uid',
          FFAppState().userActivo.uid,
        )
        .eq(
          'tipo',
          'Musica',
        ),
  );
  FFAppState().deleteDetalleLibrosUsuario();
  FFAppState().detalleLibrosUsuario = [];

  FFAppState().count = 0;
  FFAppState().elementos = valueOrDefault<int>(
    outDetalleLibrosUsuarios.length,
    0,
  );
  FFAppState().update(() {});
  while (FFAppState().count < FFAppState().elementos) {
    FFAppState().addToDetalleLibrosUsuario(DatDetalleLibrosUsuarioStruct(
      idLibUser: outDetalleLibrosUsuarios[FFAppState().count].idLibUser,
      uid: outDetalleLibrosUsuarios[FFAppState().count].uid,
      idLibro: outDetalleLibrosUsuarios[FFAppState().count].idLibro,
      idArchivo: outDetalleLibrosUsuarios[FFAppState().count].idArchivo,
      orden: outDetalleLibrosUsuarios[FFAppState().count].orden,
      tipo: outDetalleLibrosUsuarios[FFAppState().count].tipo,
      titulo: outDetalleLibrosUsuarios[FFAppState().count].titulo,
      descripcion: outDetalleLibrosUsuarios[FFAppState().count].descripcion,
      imgPortada: outDetalleLibrosUsuarios[FFAppState().count].imgPortada,
      urlFile: outDetalleLibrosUsuarios[FFAppState().count].urlFile,
    ));
    FFAppState().update(() {});
    FFAppState().count = FFAppState().count + 1;
    FFAppState().update(() {});
    await Future.delayed(const Duration(milliseconds: 20));
  }
}

Future detalleRecomendaciones(BuildContext context) async {
  List<VAppRecomendacionesDetallesRow>? outRecomendaciones;

  if (FFAppState().recomendaciones.isEmpty) {
    outRecomendaciones = await VAppRecomendacionesDetallesTable().queryRows(
      queryFn: (q) => q.eq(
        'uid',
        currentUserUid,
      ),
    );
    FFAppState().recomendaciones = [];
    FFAppState().count = 0;
    FFAppState().elementos = outRecomendaciones.length;
    FFAppState().update(() {});
    while (FFAppState().count < FFAppState().elementos) {
      FFAppState().addToRecomendaciones(DatRecomendacionesStruct(
        id: outRecomendaciones[FFAppState().count].id,
        idLibro: outRecomendaciones[FFAppState().count].idLibro,
        titulo: outRecomendaciones[FFAppState().count].titulo,
        descripcion: outRecomendaciones[FFAppState().count].descripcion,
        orden: outRecomendaciones[FFAppState().count].orden,
        url: outRecomendaciones[FFAppState().count].url,
        imgVideo: outRecomendaciones[FFAppState().count].imgVideo,
      ));
      FFAppState().update(() {});
      FFAppState().count = FFAppState().count + 1;
      FFAppState().update(() {});
      await Future.delayed(const Duration(milliseconds: 20));
    }
  }
}
