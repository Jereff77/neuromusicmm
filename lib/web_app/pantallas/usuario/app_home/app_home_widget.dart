import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/elementos/componentes/campo/campo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/web_app/componentes/elementos/menu_lateral/menu_lateral_widget.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'app_home_model.dart';
export 'app_home_model.dart';

class AppHomeWidget extends StatefulWidget {
  const AppHomeWidget({super.key});

  @override
  State<AppHomeWidget> createState() => _AppHomeWidgetState();
}

class _AppHomeWidgetState extends State<AppHomeWidget>
    with TickerProviderStateMixin {
  late AppHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  late StreamSubscription<bool> _keyboardVisibilitySubscription;
  bool _isKeyboardVisible = false;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppHomeModel());

    if (!isWeb) {
      _keyboardVisibilitySubscription =
          KeyboardVisibilityController().onChange.listen((bool visible) {
        safeSetState(() {
          _isKeyboardVisible = visible;
        });
      });
    }

    _model.txtBuscarTextController ??= TextEditingController();
    _model.txtBuscarFocusNode ??= FocusNode();

    animationsMap.addAll({
      'circleImageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 1.0.ms,
            duration: 6000.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    if (!isWeb) {
      _keyboardVisibilitySubscription.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).white,
        drawer: SizedBox(
          width: 200.0,
          child: Drawer(
            elevation: 16.0,
            child: WebViewAware(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.menuLateralModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const MenuLateralWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: Stack(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SafeArea(
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            constraints: const BoxConstraints(
                              maxHeight: 50.0,
                            ),
                            decoration: const BoxDecoration(),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/neuromusic_sin_fondo_.png',
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.menu,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                        Text(
                          FFAppConstants.versionapp,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).tertiary,
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).customColor2,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller:
                                            _model.txtBuscarTextController,
                                        focusNode: _model.txtBuscarFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.txtBuscarTextController',
                                          const Duration(milliseconds: 1000),
                                          () async {
                                            if (_model.txtBuscarTextController
                                                        .text ==
                                                    '') {
                                              FFAppState().resultadoBusqueda =
                                                  [];
                                              safeSetState(() {});
                                            } else {
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              // Reinicia el contador
                                              // Reinicia la variable de resultados de busqueda
                                              // Reinicia variables
                                              FFAppState().count = 0;
                                              FFAppState().resultadoBusqueda =
                                                  [];
                                              safeSetState(() {});
                                              // recorre cada uno de los registros de musica que se encuentren
                                              while (FFAppState().count <
                                                  FFAppState()
                                                      .detalleLibrosUsuario
                                                      .length) {
                                                if (functions.buscarTexto(
                                                    FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .titulo,
                                                    _model
                                                        .txtBuscarTextController
                                                        .text)) {
                                                  // Agrega los registros que contienen el texto buscado
                                                  FFAppState()
                                                      .addToResultadoBusqueda(
                                                          DatDetalleLibrosUsuarioStruct(
                                                    idLibUser: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .idLibUser,
                                                    uid: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .uid,
                                                    idLibro: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .idLibro,
                                                    idArchivo: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .idArchivo,
                                                    orden: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .orden,
                                                    tipo: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .tipo,
                                                    titulo: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .titulo,
                                                    descripcion: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .descripcion,
                                                    imgPortada: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .imgPortada,
                                                    urlVideo: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .urlVideo,
                                                    urlFile: FFAppState()
                                                        .detalleLibrosUsuario[
                                                            FFAppState().count]
                                                        .urlFile,
                                                  ));
                                                  safeSetState(() {});
                                                }
                                                FFAppState().count =
                                                    FFAppState().count + 1;
                                                safeSetState(() {});
                                              }
                                            }
                                          },
                                        ),
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                              ),
                                          hintText: 'Buscar...',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMediumFamily),
                                                lineHeight: 2.0,
                                              ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          suffixIcon: _model
                                                  .txtBuscarTextController!
                                                  .text
                                                  .isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    _model
                                                        .txtBuscarTextController
                                                        ?.clear();
                                                    if (_model.txtBuscarTextController
                                                                .text ==
                                                            '') {
                                                      FFAppState()
                                                          .resultadoBusqueda = [];
                                                      safeSetState(() {});
                                                    } else {
                                                      if (_model.formKey
                                                                  .currentState ==
                                                              null ||
                                                          !_model.formKey
                                                              .currentState!
                                                              .validate()) {
                                                        return;
                                                      }
                                                      // Reinicia el contador
                                                      // Reinicia la variable de resultados de busqueda
                                                      // Reinicia variables
                                                      FFAppState().count = 0;
                                                      FFAppState()
                                                          .resultadoBusqueda = [];
                                                      safeSetState(() {});
                                                      // recorre cada uno de los registros de musica que se encuentren
                                                      while (FFAppState()
                                                              .count <
                                                          FFAppState()
                                                              .detalleLibrosUsuario
                                                              .length) {
                                                        if (functions.buscarTexto(
                                                            FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .titulo,
                                                            _model
                                                                .txtBuscarTextController
                                                                .text)) {
                                                          // Agrega los registros que contienen el texto buscado
                                                          FFAppState()
                                                              .addToResultadoBusqueda(
                                                                  DatDetalleLibrosUsuarioStruct(
                                                            idLibUser: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .idLibUser,
                                                            uid: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .uid,
                                                            idLibro: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .idLibro,
                                                            idArchivo: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .idArchivo,
                                                            orden: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .orden,
                                                            tipo: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .tipo,
                                                            titulo: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .titulo,
                                                            descripcion: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .descripcion,
                                                            imgPortada: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .imgPortada,
                                                            urlVideo: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .urlVideo,
                                                            urlFile: FFAppState()
                                                                .detalleLibrosUsuario[
                                                                    FFAppState()
                                                                        .count]
                                                                .urlFile,
                                                          ));
                                                          safeSetState(() {});
                                                        }
                                                        FFAppState().count =
                                                            FFAppState().count +
                                                                1;
                                                        safeSetState(() {});
                                                      }
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    size: 24.0,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        validator: _model
                                            .txtBuscarTextControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                // Reinicia el contador
                                // Reinicia la variable de resultados de busqueda
                                // Reinicia variables
                                FFAppState().count = 0;
                                FFAppState().resultadoBusqueda = [];
                                safeSetState(() {});
                                // recorre cada uno de los registros de musica que se encuentren
                                while (FFAppState().count <
                                    FFAppState().detalleLibrosUsuario.length) {
                                  if (functions.buscarTexto(
                                      FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .titulo,
                                      _model.txtBuscarTextController.text)) {
                                    // Agrega los registros que contienen el texto buscado
                                    FFAppState().addToResultadoBusqueda(
                                        DatDetalleLibrosUsuarioStruct(
                                      idLibUser: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .idLibUser,
                                      uid: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .uid,
                                      idLibro: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .idLibro,
                                      idArchivo: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .idArchivo,
                                      orden: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .orden,
                                      tipo: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .tipo,
                                      titulo: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .titulo,
                                      descripcion: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .descripcion,
                                      imgPortada: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .imgPortada,
                                      urlVideo: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .urlVideo,
                                      urlFile: FFAppState()
                                          .detalleLibrosUsuario[
                                              FFAppState().count]
                                          .urlFile,
                                    ));
                                    safeSetState(() {});
                                  }
                                  FFAppState().count = FFAppState().count + 1;
                                  safeSetState(() {});
                                }
                              },
                              child: FaIcon(
                                FontAwesomeIcons.search,
                                color: FlutterFlowTheme.of(context).secondary,
                                size: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StickyHeader(
                        overlapHeaders: false,
                        header: Container(
                          decoration: const BoxDecoration(),
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                        ),
                        content: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).fondoContainer,
                              borderRadius: BorderRadius.circular(4.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Builder(
                                builder: (context) {
                                  final videos =
                                      FFAppState().recomendaciones.toList();

                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(videos.length,
                                          (videosIndex) {
                                        final videosItem = videos[videosIndex];
                                        return Container(
                                          width: 160.0,
                                          height: 100.0,
                                          decoration: const BoxDecoration(),
                                          child: Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    videosItem.imgVideo,
                                                    'https://lnsvwmmozlkegyjkjjvl.supabase.co/storage/v1/object/public/escuelas/NeuromusicMM%20Online/1694391405373000.png',
                                                  ),
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ReproduccionTable()
                                                        .insert({
                                                      'uid': currentUserUid,
                                                      'tipo': 2,
                                                      'idReproduccion':
                                                          videosItem.id,
                                                    });

                                                    context.pushNamed(
                                                      'appVideoplayer',
                                                      queryParameters: {
                                                        'url': serializeParam(
                                                          videosItem.url,
                                                          ParamType.String,
                                                        ),
                                                        'titulo':
                                                            serializeParam(
                                                          videosItem.titulo,
                                                          ParamType.String,
                                                        ),
                                                        'descripcion':
                                                            serializeParam(
                                                          videosItem
                                                              .descripcion,
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Container(
                                                    width: 80.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/YouTube_play_button_icon_(20132017).svg.png',
                                                        ).image,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }).divide(const SizedBox(width: 10.0)),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      StickyHeader(
                        overlapHeaders: false,
                        header: Container(
                          decoration: const BoxDecoration(),
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                        ),
                        content: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            decoration: BoxDecoration(
                              color:
                                  FlutterFlowTheme.of(context).fondoContainer,
                              borderRadius: BorderRadius.circular(4.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Builder(
                                  builder: (context) {
                                    final libros =
                                        FFAppState().librosUsuarios.toList();

                                    return SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: List.generate(libros.length,
                                                (librosIndex) {
                                          final librosItem =
                                              libros[librosIndex];
                                          return Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 15.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.idLibro =
                                                    librosItem.idLibro;
                                                _model.index = librosIndex;
                                                safeSetState(() {});
                                              },
                                              child: Container(
                                                decoration: const BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model.index !=
                                                        librosIndex)
                                                      Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: librosIndex
                                                                    .toString() ==
                                                                _model.index
                                                                    .toString()
                                                            ? 10.0
                                                            : 0.0,
                                                        shape:
                                                            const CircleBorder(),
                                                        child:
                                                            AnimatedContainer(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  100),
                                                          curve: Curves.easeIn,
                                                          width: 100.0,
                                                          height: 100.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              Container(
                                                                width: 120.0,
                                                                height: 120.0,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child:
                                                                    CachedNetworkImage(
                                                                  fadeInDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  fadeOutDuration:
                                                                      const Duration(
                                                                          milliseconds:
                                                                              500),
                                                                  imageUrl:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    librosItem
                                                                        .imgPortada,
                                                                    'https://lnsvwmmozlkegyjkjjvl.supabase.co/storage/v1/object/public/escuelas/NeuromusicMM%20Online/1694391405373000.png',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ).animateOnActionTrigger(
                                                                animationsMap[
                                                                    'circleImageOnActionTriggerAnimation']!,
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .fondoContainer,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    if (_model.index ==
                                                        librosIndex)
                                                      Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: librosIndex
                                                                    .toString() ==
                                                                _model.index
                                                                    .toString()
                                                            ? 10.0
                                                            : 0.0,
                                                        shape:
                                                            const CircleBorder(),
                                                        child:
                                                            AnimatedContainer(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  100),
                                                          curve: Curves.easeIn,
                                                          width: 100.0,
                                                          height: 100.0,
                                                          decoration:
                                                              const BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 120.0,
                                                                  height: 120.0,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child:
                                                                      CachedNetworkImage(
                                                                    fadeInDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    fadeOutDuration:
                                                                        const Duration(
                                                                            milliseconds:
                                                                                500),
                                                                    imageUrl:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      librosItem
                                                                          .imgPortada,
                                                                      'https://lnsvwmmozlkegyjkjjvl.supabase.co/storage/v1/object/public/escuelas/NeuromusicMM%20Online/1694391405373000.png',
                                                                    ),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'circleImageOnPageLoadAnimation']!),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  width: 25.0,
                                                                  height: 25.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .fondoContainer,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        })
                                            .divide(const SizedBox(width: 10.0))
                                            .around(const SizedBox(width: 10.0)),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      StickyHeader(
                        overlapHeaders: false,
                        header: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).white,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  'Canciones disponibles',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        content: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (FFAppState().resultadoBusqueda.isEmpty)
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final musica = FFAppState()
                                              .detalleLibrosUsuario
                                              .where((e) =>
                                                  (e.idLibro ==
                                                      _model.idLibro) &&
                                                  (e.tipo == 'Musica'))
                                              .toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            itemCount: musica.length,
                                            itemBuilder:
                                                (context, musicaIndex) {
                                              final musicaItem =
                                                  musica[musicaIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.songSelected =
                                                      musicaItem.urlFile;
                                                  _model.songIndex =
                                                      musicaIndex;
                                                  _model.nameSong =
                                                      musicaItem.titulo;
                                                  safeSetState(() {});
                                                  await ReproduccionTable()
                                                      .insert({
                                                    'uid': currentUserUid,
                                                    'tipo': 1,
                                                    'idReproduccion':
                                                        musicaItem.idArchivo,
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: musicaIndex ==
                                                            _model.songIndex
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .fondoContainer
                                                        : const Color(0x00000000),
                                                    border: Border.all(
                                                      color: musicaIndex ==
                                                              _model.songIndex
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary
                                                          : const Color(0x00000000),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        CampoWidget(
                                                          key: Key(
                                                              'Key6ek_${musicaIndex}_of_${musica.length}'),
                                                          texto:
                                                              (musicaIndex + 1)
                                                                  .toString(),
                                                          ancho: 40,
                                                          txtColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .tertiary,
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                musicaItem
                                                                    .titulo,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Open Sans'),
                                                                    ),
                                                              ),
                                                              Text(
                                                                musicaItem
                                                                    .descripcion,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Open Sans'),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                if (FFAppState().resultadoBusqueda.isNotEmpty)
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final resultado = FFAppState()
                                              .resultadoBusqueda
                                              .toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: resultado.length,
                                            itemBuilder:
                                                (context, resultadoIndex) {
                                              final resultadoItem =
                                                  resultado[resultadoIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.songSelected =
                                                      resultadoItem.urlFile;
                                                  _model.songIndex =
                                                      resultadoIndex;
                                                  _model.nameSong =
                                                      resultadoItem.titulo;
                                                  safeSetState(() {});
                                                  await ReproduccionTable()
                                                      .insert({
                                                    'uid': currentUserUid,
                                                    'tipo': 1,
                                                    'idReproduccion':
                                                        resultadoItem.idArchivo,
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: resultadoIndex ==
                                                            _model.songIndex
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .fondoContainer
                                                        : const Color(0x00000000),
                                                    border: Border.all(
                                                      color: resultadoIndex ==
                                                              _model.songIndex
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary
                                                          : const Color(0x00000000),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        CampoWidget(
                                                          key: Key(
                                                              'Keyczl_${resultadoIndex}_of_${resultado.length}'),
                                                          texto:
                                                              (resultadoIndex +
                                                                      1)
                                                                  .toString(),
                                                          ancho: 40,
                                                          txtColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .tertiary,
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                resultadoItem
                                                                    .titulo,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      fontSize:
                                                                          15.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Open Sans'),
                                                                    ),
                                                              ),
                                                              Text(
                                                                resultadoItem
                                                                    .descripcion,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Open Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              'Open Sans'),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (!(isWeb
                      ? MediaQuery.viewInsetsOf(context).bottom > 0
                      : _isKeyboardVisible))
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    _model.nameSong,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          FlutterFlowWebView(
                            content:
                                '<html lang=\"en\"><head>      <meta charset=\"UTF-8\">      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">      <title>Reproductor de Música</title>      <style>          body {              overflow: hidden; /* Deshabilitar el scroll */         }          #music-player {             width: 100%;             max-width: 500px; /* Cambia este valor según tus necesidades */             height: auto;             margin: 0 auto;             text-align: center; /* Alinear al centro */         }          /* Cambiar el color de fondo del reproductor de audio */         audio {             background-color: #FFD1DC; /* Rosa pastel */             border-radius: 15px; /* Bordes redondos */         }          /* Cambiar el color de los controles */         audio::-webkit-media-controls-panel {             background-color: #FFD1DC; /* Rosa pastel */         }          /* Cambiar el color del botón de play */         audio::-webkit-media-controls-play-button {             color: #a9cf46;         }     </style> </head> <body>     <div id=\"music-player\">         <audio controls  autoplay controlsList=\"nodownload\">            <source src=\"${_model.songSelected}\" type=\"audio/mpeg\">            Your browser does not support the audio element.        </audio>    </div></body></html>',
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 80.0,
                            verticalScroll: false,
                            horizontalScroll: false,
                            html: true,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ].addToEnd(const SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}
