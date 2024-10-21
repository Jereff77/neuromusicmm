import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/elementos/componentes/campo/campo_widget.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'scr_q_rs_model.dart';
export 'scr_q_rs_model.dart';

class ScrQRsWidget extends StatefulWidget {
  const ScrQRsWidget({super.key});

  @override
  State<ScrQRsWidget> createState() => _ScrQRsWidgetState();
}

class _ScrQRsWidgetState extends State<ScrQRsWidget> {
  late ScrQRsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrQRsModel());

    _model.txtCantidadTextController ??= TextEditingController();
    _model.txtCantidadFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.txtCantidadTextController?.text = '1';
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          wrapWithModel(
            model: _model.headerModel,
            updateCallback: () => safeSetState(() {}),
            child: const HeaderWidget(),
          ),
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.menuModel,
                  updateCallback: () => safeSetState(() {}),
                  child: const MenuWidget(
                    video: false,
                    musica: false,
                    usuarios: false,
                    escuelas: false,
                    archivos: false,
                    libros: false,
                    multipantalla: false,
                    cel: false,
                    pass: false,
                    padres: false,
                    qrs: true,
                    recomendaciones: false,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FutureBuilder<List<VInvResumenRow>>(
                        future: (_model.requestCompleter ??=
                                Completer<List<VInvResumenRow>>()
                                  ..complete(VInvResumenTable().queryRows(
                                    queryFn: (q) => q,
                                  )))
                            .future,
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitFadingCube(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          List<VInvResumenRow> containerVInvResumenRowList =
                              snapshot.data!;

                          return Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            constraints: const BoxConstraints(
                              maxWidth: 1000.0,
                              maxHeight: 800.0,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE4B4C5),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        constraints: const BoxConstraints(
                                          maxWidth: 300.0,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: wrapWithModel(
                                          model: _model.tituloPantallaModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const TituloPantallaWidget(
                                            texto: 'Generar invitaciones',
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Form(
                                          key: _model.formKey,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Seleccionar Libro',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: FutureBuilder<
                                                      List<CatLibrosRow>>(
                                                    future: CatLibrosTable()
                                                        .queryRows(
                                                      queryFn: (q) => q,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitFadingCube(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<CatLibrosRow>
                                                          cboLibrosCatLibrosRowList =
                                                          snapshot.data!;

                                                      return FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .cboLibrosValueController ??=
                                                            FormFieldController<
                                                                String>(
                                                          _model.cboLibrosValue ??=
                                                              '',
                                                        ),
                                                        options: List<
                                                                String>.from(
                                                            cboLibrosCatLibrosRowList
                                                                .map((e) =>
                                                                    e.idLibro)
                                                                .toList()),
                                                        optionLabels:
                                                            cboLibrosCatLibrosRowList
                                                                .map((e) =>
                                                                    e.titulo)
                                                                .withoutNulls
                                                                .toList(),
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.cboLibrosValue =
                                                                    val),
                                                        width: 300.0,
                                                        height: 56.0,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily),
                                                                ),
                                                        hintText: 'Elegir',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        borderWidth: 2.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    16.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isOverButton: true,
                                                        isSearchable: false,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  8.0,
                                                                  0.0),
                                                      child: SizedBox(
                                                        width: 150.0,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .txtCantidadTextController,
                                                          focusNode: _model
                                                              .txtCantidadFocusNode,
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Cantidad',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).labelMediumFamily),
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                          textAlign:
                                                              TextAlign.end,
                                                          validator: _model
                                                              .txtCantidadTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Builder(
                                                  builder: (context) =>
                                                      FFButtonWidget(
                                                    onPressed: () async {
                                                      if ((_model.txtCantidadTextController
                                                                  .text !=
                                                              '0') &&
                                                          (_model.cboLibrosValue !=
                                                                  null &&
                                                              _model.cboLibrosValue !=
                                                                  '')) {
                                                        if (_model
                                                                .txtCantidadTextController
                                                                .text ==
                                                            '1') {
                                                          if (_model.formKey
                                                                      .currentState ==
                                                                  null ||
                                                              !_model.formKey
                                                                  .currentState!
                                                                  .validate()) {
                                                            return;
                                                          }
                                                          if (_model
                                                                  .cboLibrosValue ==
                                                              null) {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return WebViewAware(
                                                                  child:
                                                                      AlertDialog(
                                                                    title: const Text(
                                                                        'Selecciona libro'),
                                                                    content: const Text(
                                                                        'Debes seleccionar un libro antes de crear una invitacion'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: const Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                            return;
                                                          }
                                                          FFAppState().count =
                                                              0;
                                                          safeSetState(() {});
                                                          while (FFAppState()
                                                                  .count <
                                                              (int.parse(_model
                                                                  .txtCantidadTextController
                                                                  .text))) {
                                                            _model.outInvitacionesAgregadas2 =
                                                                await InvitacionesTable()
                                                                    .insert({
                                                              'id': random_data
                                                                  .randomString(
                                                                15,
                                                                15,
                                                                true,
                                                                true,
                                                                true,
                                                              ),
                                                              'uidCreador':
                                                                  currentUserUid,
                                                              'status': true,
                                                              'idLibro': _model
                                                                  .cboLibrosValue,
                                                            });
                                                            FFAppState().count =
                                                                FFAppState()
                                                                        .count +
                                                                    1;
                                                            safeSetState(() {});
                                                          }
                                                          safeSetState(() =>
                                                              _model.requestCompleter =
                                                                  null);
                                                          await _model
                                                              .waitForRequestCompleted();
                                                          await Share.share(
                                                            'https://nmm.neuromusicmm.com/appRegister?id=${valueOrDefault<String>(
                                                              _model
                                                                  .outInvitacionesAgregadas2
                                                                  ?.id,
                                                              '-',
                                                            )}',
                                                            sharePositionOrigin:
                                                                getWidgetBoundingBox(
                                                                    context),
                                                          );
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Se ha copiado la invitacion al portapapeles',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .white,
                                                                ),
                                                              ),
                                                              duration: const Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                            ),
                                                          );
                                                        } else {
                                                          if (_model.formKey
                                                                      .currentState ==
                                                                  null ||
                                                              !_model.formKey
                                                                  .currentState!
                                                                  .validate()) {
                                                            return;
                                                          }
                                                          if (_model
                                                                  .cboLibrosValue ==
                                                              null) {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return WebViewAware(
                                                                  child:
                                                                      AlertDialog(
                                                                    title: const Text(
                                                                        'Selecciona libro'),
                                                                    content: const Text(
                                                                        'Debes seleccionar un libro antes de crear una invitacion'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: const Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                            return;
                                                          }
                                                          FFAppState().count =
                                                              0;
                                                          safeSetState(() {});
                                                          while (FFAppState()
                                                                  .count <
                                                              (int.parse(_model
                                                                  .txtCantidadTextController
                                                                  .text))) {
                                                            _model.outInvitacionesAgregadas =
                                                                await InvitacionesTable()
                                                                    .insert({
                                                              'id': random_data
                                                                  .randomString(
                                                                15,
                                                                15,
                                                                true,
                                                                true,
                                                                true,
                                                              ),
                                                              'uidCreador':
                                                                  currentUserUid,
                                                              'status': true,
                                                              'idLibro': _model
                                                                  .cboLibrosValue,
                                                            });
                                                            FFAppState().count =
                                                                FFAppState()
                                                                        .count +
                                                                    1;
                                                            safeSetState(() {});
                                                          }
                                                          safeSetState(() =>
                                                              _model.requestCompleter =
                                                                  null);
                                                          await _model
                                                              .waitForRequestCompleted();
                                                        }
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return WebViewAware(
                                                              child:
                                                                  AlertDialog(
                                                                title: const Text(
                                                                    'Invitacion'),
                                                                content: const Text(
                                                                    'Verifica los datos de la invitacion, que se haya seleccionado un libro y que la cantidad de invitaciones sea mayor a 0'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: const Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    text: 'Crear invitacion',
                                                    options: FFButtonOptions(
                                                      height: 40.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily),
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      hoverTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .white,
                                                    ),
                                                  ),
                                                ),
                                              ]
                                                  .divide(
                                                      const SizedBox(height: 10.0))
                                                  .around(
                                                      const SizedBox(height: 10.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        wrapWithModel(
                                          model: _model.tituloPantallaModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TituloPantallaWidget(
                                            texto: 'Estadisticas',
                                            bkcolor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                            alineacion: 2,
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Material(
                                                    color: Colors.transparent,
                                                    elevation: 5.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Container(
                                                      width: 272.0,
                                                      height: 200.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .tituloSeccionModel1,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                const TituloSeccionWidget(
                                                              texto:
                                                                  'Codigos con 1 uso',
                                                              btnCerrar: false,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .cmpLibrosModel1,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CampoWidget(
                                                                          texto:
                                                                              'Libros',
                                                                          ancho:
                                                                              150,
                                                                          bkColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      ),
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .cmpCantidadModel1,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CampoWidget(
                                                                          texto:
                                                                              'Cantidad',
                                                                          ancho:
                                                                              100,
                                                                          bkColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          alineacion:
                                                                              3,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final totalCodigos = containerVInvResumenRowList
                                                                            .map((e) =>
                                                                                e)
                                                                            .toList();

                                                                        return SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                List.generate(totalCodigos.length, (totalCodigosIndex) {
                                                                              final totalCodigosItem = totalCodigos[totalCodigosIndex];
                                                                              return Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  CampoWidget(
                                                                                    key: Key('Key0ar_${totalCodigosIndex}_of_${totalCodigos.length}'),
                                                                                    texto: totalCodigosItem.titulo!,
                                                                                    ancho: 150,
                                                                                    txtColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                  CampoWidget(
                                                                                    key: Key('Key5py_${totalCodigosIndex}_of_${totalCodigos.length}'),
                                                                                    texto: totalCodigosItem.usos1!.toString(),
                                                                                    ancho: 100,
                                                                                    txtColor: FlutterFlowTheme.of(context).secondary,
                                                                                    alineacion: 3,
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            }),
                                                                          ),
                                                                        );
                                                                      },
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
                                                  Material(
                                                    color: Colors.transparent,
                                                    elevation: 5.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Container(
                                                      width: 272.0,
                                                      height: 200.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .tituloSeccionModel2,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                const TituloSeccionWidget(
                                                              texto:
                                                                  'Codigos con 2 usos',
                                                              btnCerrar: false,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .cmpLibrosModel3,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CampoWidget(
                                                                          texto:
                                                                              'Libros',
                                                                          ancho:
                                                                              150,
                                                                          bkColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      ),
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .cmpCantidadModel3,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CampoWidget(
                                                                          texto:
                                                                              'Cantidad',
                                                                          ancho:
                                                                              100,
                                                                          bkColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          alineacion:
                                                                              3,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final totalCodigos = containerVInvResumenRowList
                                                                            .map((e) =>
                                                                                e)
                                                                            .toList();

                                                                        return SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                List.generate(totalCodigos.length, (totalCodigosIndex) {
                                                                              final totalCodigosItem = totalCodigos[totalCodigosIndex];
                                                                              return Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  CampoWidget(
                                                                                    key: Key('Keyosj_${totalCodigosIndex}_of_${totalCodigos.length}'),
                                                                                    texto: totalCodigosItem.titulo!,
                                                                                    ancho: 150,
                                                                                    txtColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                  CampoWidget(
                                                                                    key: Key('Key3iv_${totalCodigosIndex}_of_${totalCodigos.length}'),
                                                                                    texto: totalCodigosItem.usos2!.toString(),
                                                                                    ancho: 100,
                                                                                    txtColor: FlutterFlowTheme.of(context).secondary,
                                                                                    alineacion: 3,
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            }),
                                                                          ),
                                                                        );
                                                                      },
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
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Material(
                                                    color: Colors.transparent,
                                                    elevation: 5.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Container(
                                                      width: 272.0,
                                                      height: 200.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .tituloSeccionModel3,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                const TituloSeccionWidget(
                                                              texto:
                                                                  'Codigos por libro',
                                                              btnCerrar: false,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .cmpLibrosModel5,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CampoWidget(
                                                                          texto:
                                                                              'Libros',
                                                                          ancho:
                                                                              150,
                                                                          bkColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      ),
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .cmpCantidadModel5,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CampoWidget(
                                                                          texto:
                                                                              'Cantidad',
                                                                          ancho:
                                                                              100,
                                                                          bkColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          alineacion:
                                                                              3,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final totalCodigos = containerVInvResumenRowList
                                                                            .map((e) =>
                                                                                e)
                                                                            .toList();

                                                                        return SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                List.generate(totalCodigos.length, (totalCodigosIndex) {
                                                                              final totalCodigosItem = totalCodigos[totalCodigosIndex];
                                                                              return Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  CampoWidget(
                                                                                    key: Key('Keybix_${totalCodigosIndex}_of_${totalCodigos.length}'),
                                                                                    texto: totalCodigosItem.titulo!,
                                                                                    ancho: 150,
                                                                                    txtColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                  CampoWidget(
                                                                                    key: Key('Keycwp_${totalCodigosIndex}_of_${totalCodigos.length}'),
                                                                                    texto: totalCodigosItem.usos!.toString(),
                                                                                    ancho: 100,
                                                                                    txtColor: FlutterFlowTheme.of(context).secondary,
                                                                                    alineacion: 3,
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            }),
                                                                          ),
                                                                        );
                                                                      },
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
                                                  Material(
                                                    color: Colors.transparent,
                                                    elevation: 5.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Container(
                                                      width: 272.0,
                                                      height: 200.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          wrapWithModel(
                                                            model: _model
                                                                .tituloSeccionModel4,
                                                            updateCallback: () =>
                                                                safeSetState(
                                                                    () {}),
                                                            child:
                                                                const TituloSeccionWidget(
                                                              texto:
                                                                  'Codigos sin uso',
                                                              btnCerrar: false,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .cmpLibrosModel7,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CampoWidget(
                                                                          texto:
                                                                              'Libros',
                                                                          ancho:
                                                                              150,
                                                                          bkColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      ),
                                                                      wrapWithModel(
                                                                        model: _model
                                                                            .cmpCantidadModel7,
                                                                        updateCallback:
                                                                            () =>
                                                                                safeSetState(() {}),
                                                                        child:
                                                                            CampoWidget(
                                                                          texto:
                                                                              'Cantidad',
                                                                          ancho:
                                                                              100,
                                                                          bkColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                          alineacion:
                                                                              3,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final totalCodigos = containerVInvResumenRowList
                                                                            .map((e) =>
                                                                                e)
                                                                            .toList();

                                                                        return SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children:
                                                                                List.generate(totalCodigos.length, (totalCodigosIndex) {
                                                                              final totalCodigosItem = totalCodigos[totalCodigosIndex];
                                                                              return Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  CampoWidget(
                                                                                    key: Key('Key69u_${totalCodigosIndex}_of_${totalCodigos.length}'),
                                                                                    texto: totalCodigosItem.titulo!,
                                                                                    ancho: 150,
                                                                                    txtColor: FlutterFlowTheme.of(context).secondary,
                                                                                  ),
                                                                                  CampoWidget(
                                                                                    key: Key('Keyhe9_${totalCodigosIndex}_of_${totalCodigos.length}'),
                                                                                    texto: totalCodigosItem.usos0!.toString(),
                                                                                    ancho: 100,
                                                                                    txtColor: FlutterFlowTheme.of(context).secondary,
                                                                                    alineacion: 3,
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            }),
                                                                          ),
                                                                        );
                                                                      },
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
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
