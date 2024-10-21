import '/auth/supabase_auth/auth_util.dart';
import '/elementos/componentes/mnu_opcion/mnu_opcion_widget.dart';
import '/elementos/ventanas/nvo_password/nvo_password_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({
    super.key,
    bool? video,
    bool? musica,
    bool? usuarios,
    bool? escuelas,
    bool? archivos,
    bool? libros,
    bool? multipantalla,
    bool? cel,
    bool? pass,
    bool? padres,
    bool? qrs,
    bool? recomendaciones,
  })  : video = video ?? false,
        musica = musica ?? false,
        usuarios = usuarios ?? false,
        escuelas = escuelas ?? false,
        archivos = archivos ?? false,
        libros = libros ?? false,
        multipantalla = multipantalla ?? false,
        cel = cel ?? false,
        pass = pass ?? false,
        padres = padres ?? false,
        qrs = qrs ?? false,
        recomendaciones = recomendaciones ?? false;

  final bool video;
  final bool musica;
  final bool usuarios;
  final bool escuelas;
  final bool archivos;
  final bool libros;
  final bool multipantalla;
  final bool cel;
  final bool pass;
  final bool padres;
  final bool qrs;
  final bool recomendaciones;

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(5.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(5.0),
        ),
      ),
      child: Container(
        width: 220.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: const BoxDecoration(
          color: Color(0xFFD5E6B1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(5.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(5.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: const BoxConstraints(
                      maxWidth: 230.0,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          valueOrDefault<String>(
                            FFAppState().userActivo.imgLogo,
                            'https://upload.wikimedia.org/wikipedia/commons/3/3f/Placeholder_view_vector.svg',
                          ),
                          width: MediaQuery.sizeOf(context).width * 1.5,
                          height: 100.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFAppState().userActivo.nombre,
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineSmallFamily),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 0.0),
                          child: AutoSizeText(
                            FFAppState().userActivo.nomEscuela,
                            minFontSize: 12.0,
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            FFAppState().userActivo.nomPlantel,
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1.0,
                    color: Color(0x81908A8A),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (FFAppState().userActivo.status)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('scrHome');

                                await action_blocks.actividad(
                                  context,
                                  pantalla: 'menu',
                                  widget: 'opcion',
                                  nomWidget: 'video',
                                  correo: FFAppState().userActivo.email,
                                  app: 1,
                                );
                              },
                              child: wrapWithModel(
                                model: _model.mnuLibrosModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: MnuOpcionWidget(
                                  icon: Icon(
                                    Icons.menu_book_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                                  texto: 'Libros',
                                  activo: widget.video,
                                ),
                              ),
                            ),
                            Builder(
                              builder: (context) => InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showDialog(
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: const WebViewAware(
                                          child: NvoPasswordWidget(),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.mnuPasswordModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MnuOpcionWidget(
                                    icon: Icon(
                                      Icons.password_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    texto: 'Cambiar contraseña',
                                    activo: widget.pass,
                                  ),
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 1.0,
                              color: Color(0x81908A8A),
                            ),
                          ]
                              .divide(const SizedBox(height: 3.0))
                              .around(const SizedBox(height: 3.0)),
                        ),
                      if (FFAppState().userActivo.perfil <= 2)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('scrUsuarios');

                                  await action_blocks.actividad(
                                    context,
                                    pantalla: 'menu',
                                    widget: 'opcion',
                                    nomWidget: 'usuarios',
                                    correo: FFAppState().userActivo.email,
                                    app: 1,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.mnuUsuariosModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MnuOpcionWidget(
                                    icon: FaIcon(
                                      FontAwesomeIcons.users,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    texto: 'Usuarios',
                                    activo: widget.usuarios,
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('scrEscuelas');

                                  await action_blocks.actividad(
                                    context,
                                    pantalla: 'menu',
                                    widget: 'opcion',
                                    nomWidget: 'escuelas',
                                    correo: FFAppState().userActivo.email,
                                    app: 1,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.mnuEscuelasModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MnuOpcionWidget(
                                    icon: Icon(
                                      Icons.school_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    texto: 'Escuelas',
                                    activo: widget.escuelas,
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('scrArchivos');

                                  await action_blocks.actividad(
                                    context,
                                    pantalla: 'menu',
                                    widget: 'opcion',
                                    nomWidget: 'Archivos',
                                    correo: FFAppState().userActivo.email,
                                    app: 1,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.mnuArchivosModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MnuOpcionWidget(
                                    icon: Icon(
                                      Icons.perm_media_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    texto: 'Archivos',
                                    activo: widget.archivos,
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('scrLibros');

                                  await action_blocks.actividad(
                                    context,
                                    pantalla: 'menu',
                                    widget: 'opcion',
                                    nomWidget: 'libros',
                                    correo: FFAppState().userActivo.email,
                                    app: 1,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.mnuLibrosModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MnuOpcionWidget(
                                    icon: FaIcon(
                                      FontAwesomeIcons.book,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    texto: 'Libros',
                                    activo: widget.libros,
                                  ),
                                ),
                              ),
                            const Divider(
                              thickness: 1.0,
                              color: Color(0x81908A8A),
                            ),
                          ]
                              .divide(const SizedBox(height: 3.0))
                              .around(const SizedBox(height: 3.0)),
                        ),
                      if (FFAppState().userActivo.perfil <= 2)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('scrPadres');

                                  await action_blocks.actividad(
                                    context,
                                    pantalla: 'menu',
                                    widget: 'opcion',
                                    nomWidget: 'scrPadres',
                                    correo: FFAppState().userActivo.email,
                                    app: 1,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.mnuPadresModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MnuOpcionWidget(
                                    icon: Icon(
                                      Icons.face_3,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    texto: 'Padres',
                                    activo: widget.padres,
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('scrQRs');

                                  await action_blocks.actividad(
                                    context,
                                    pantalla: 'menu',
                                    widget: 'opcion',
                                    nomWidget: 'scrQRs',
                                    correo: FFAppState().userActivo.email,
                                    app: 1,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.mnuQRsModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MnuOpcionWidget(
                                    icon: Icon(
                                      Icons.qr_code_scanner_outlined,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    texto: 'Generar QRs',
                                    activo: widget.qrs,
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('scrRecomendaciones');

                                  await action_blocks.actividad(
                                    context,
                                    pantalla: 'menu',
                                    widget: 'opcion',
                                    nomWidget: 'scrRecomendaciones',
                                    correo: FFAppState().userActivo.email,
                                    app: 1,
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.mnuVidYoutubeModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MnuOpcionWidget(
                                    icon: FaIcon(
                                      FontAwesomeIcons.youtube,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                    texto: 'Recomendaciones',
                                    activo: widget.recomendaciones,
                                  ),
                                ),
                              ),
                            const Divider(
                              thickness: 1.0,
                              color: Color(0x81908A8A),
                            ),
                          ]
                              .divide(const SizedBox(height: 3.0))
                              .around(const SizedBox(height: 3.0)),
                        ),
                      if (FFAppState().userActivo.perfil == 1)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('scrMultipantalla');
                              },
                              child: wrapWithModel(
                                model: _model.multipantallaModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: MnuOpcionWidget(
                                  icon: Icon(
                                    Icons.screen_share,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                  texto: 'Multipantalla',
                                  activo: widget.multipantalla,
                                ),
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('scrCel');
                              },
                              child: wrapWithModel(
                                model: _model.multipantallaModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: MnuOpcionWidget(
                                  icon: Icon(
                                    Icons.settings_cell,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                  texto: 'Cel',
                                  activo: widget.cel,
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 1.0,
                              color: Color(0x81908A8A),
                            ),
                          ]
                              .divide(const SizedBox(height: 3.0))
                              .around(const SizedBox(height: 3.0)),
                        ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      await action_blocks.actividad(
                        context,
                        pantalla: 'menu',
                        widget: 'opcion',
                        nomWidget: 'cerrar sesion',
                        correo: FFAppState().userActivo.email,
                        app: 1,
                      );

                      context.goNamedAuth('scrLogin', context.mounted);
                    },
                    child: wrapWithModel(
                      model: _model.cerrarSesionModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MnuOpcionWidget(
                        icon: Icon(
                          Icons.logout,
                          color: FlutterFlowTheme.of(context).tertiary,
                        ),
                        texto: 'Cerrar sesión',
                        activo: false,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
