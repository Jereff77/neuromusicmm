import '/backend/supabase/supabase.dart';
import '/elementos/componentes/campo/campo_widget.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/ordencont_recomendaciones/ordencont_recomendaciones_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'dart:async';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'scr_recomendaciones_model.dart';
export 'scr_recomendaciones_model.dart';

class ScrRecomendacionesWidget extends StatefulWidget {
  const ScrRecomendacionesWidget({super.key});

  @override
  State<ScrRecomendacionesWidget> createState() =>
      _ScrRecomendacionesWidgetState();
}

class _ScrRecomendacionesWidgetState extends State<ScrRecomendacionesWidget> {
  late ScrRecomendacionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrRecomendacionesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.detalleRecomendaciones(context);
    });

    _model.txtTituloTextController ??= TextEditingController();
    _model.txtTituloFocusNode ??= FocusNode();

    _model.txtDescTextController ??= TextEditingController();
    _model.txtDescFocusNode ??= FocusNode();

    _model.txtURLTextController ??= TextEditingController();
    _model.txtURLFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    qrs: false,
                    recomendaciones: true,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
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
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                constraints: const BoxConstraints(
                                  maxWidth: 300.0,
                                ),
                                decoration: const BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.tituloPantallaModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: const TituloPantallaWidget(
                                    texto: 'Registro de recomendaciones',
                                  ),
                                ),
                              ),
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 10.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  width: 200.0,
                                                  height: 150.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(8.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(8.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            _model.urlPortada,
                                                            'https://lnsvwmmozlkegyjkjjvl.supabase.co/storage/v1/object/public/escuelas/NeuromusicMM%20Online/1694391405373000.png',
                                                          ),
                                                          width: 300.0,
                                                          height: 200.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                      if ((_model.ddLibrosValue !=
                                                                  null &&
                                                              _model.ddLibrosValue !=
                                                                  '') &&
                                                          !_model
                                                              .isDataUploading1)
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.0, 1.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    10.0),
                                                            child:
                                                                FlutterFlowIconButton(
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                              borderRadius:
                                                                  20.0,
                                                              borderWidth: 2.0,
                                                              buttonSize: 40.0,
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              icon: Icon(
                                                                Icons
                                                                    .upload_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                size: 24.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                final selectedMedia =
                                                                    await selectMediaWithSourceBottomSheet(
                                                                  context:
                                                                      context,
                                                                  storageFolderPath:
                                                                      _model
                                                                          .ddLibrosValue,
                                                                  maxWidth:
                                                                      200.00,
                                                                  maxHeight:
                                                                      150.00,
                                                                  allowPhoto:
                                                                      true,
                                                                );
                                                                if (selectedMedia !=
                                                                        null &&
                                                                    selectedMedia.every((m) =>
                                                                        validateFileFormat(
                                                                            m.storagePath,
                                                                            context))) {
                                                                  safeSetState(() =>
                                                                      _model.isDataUploading1 =
                                                                          true);
                                                                  var selectedUploadedFiles =
                                                                      <FFUploadedFile>[];

                                                                  var downloadUrls =
                                                                      <String>[];
                                                                  try {
                                                                    selectedUploadedFiles = selectedMedia
                                                                        .map((m) => FFUploadedFile(
                                                                              name: m.storagePath.split('/').last,
                                                                              bytes: m.bytes,
                                                                              height: m.dimensions?.height,
                                                                              width: m.dimensions?.width,
                                                                              blurHash: m.blurHash,
                                                                            ))
                                                                        .toList();

                                                                    downloadUrls =
                                                                        await uploadSupabaseStorageFiles(
                                                                      bucketName:
                                                                          'recomendaciones',
                                                                      selectedFiles:
                                                                          selectedMedia,
                                                                    );
                                                                  } finally {
                                                                    _model.isDataUploading1 =
                                                                        false;
                                                                  }
                                                                  if (selectedUploadedFiles
                                                                              .length ==
                                                                          selectedMedia
                                                                              .length &&
                                                                      downloadUrls
                                                                              .length ==
                                                                          selectedMedia
                                                                              .length) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.uploadedLocalFile1 =
                                                                          selectedUploadedFiles
                                                                              .first;
                                                                      _model.uploadedFileUrl1 =
                                                                          downloadUrls
                                                                              .first;
                                                                    });
                                                                  } else {
                                                                    safeSetState(
                                                                        () {});
                                                                    return;
                                                                  }
                                                                }

                                                                _model.urlPortada =
                                                                    _model
                                                                        .uploadedFileUrl1;
                                                                safeSetState(
                                                                    () {});
                                                                ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                  SnackBar(
                                                                    content:
                                                                        Text(
                                                                      'Se subio la portada con exito',
                                                                      style:
                                                                          TextStyle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .white,
                                                                      ),
                                                                    ),
                                                                    duration: const Duration(
                                                                        milliseconds:
                                                                            4000),
                                                                    backgroundColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: SizedBox(
                                                            width: 350.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .txtTituloTextController,
                                                              focusNode: _model
                                                                  .txtTituloFocusNode,
                                                              autofocus: true,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Titulo',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                hintText:
                                                                    'Titulo del video',
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodySmallFamily),
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: const Color(
                                                                    0x7EFFFFFF),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                              validator: _model
                                                                  .txtTituloTextControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  CatLibrosRow>>(
                                                            future:
                                                                CatLibrosTable()
                                                                    .queryRows(
                                                              queryFn: (q) =>
                                                                  q.eq(
                                                                'status',
                                                                true,
                                                              ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitFadingCube(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<CatLibrosRow>
                                                                  ddLibrosCatLibrosRowList =
                                                                  snapshot
                                                                      .data!;

                                                              return FlutterFlowDropDown<
                                                                  String>(
                                                                controller: _model
                                                                        .ddLibrosValueController ??=
                                                                    FormFieldController<
                                                                        String>(
                                                                  _model.ddLibrosValue ??=
                                                                      '',
                                                                ),
                                                                options: List<
                                                                        String>.from(
                                                                    ddLibrosCatLibrosRowList
                                                                        .map((e) =>
                                                                            e.idLibro)
                                                                        .toList()),
                                                                optionLabels: ddLibrosCatLibrosRowList
                                                                    .map((e) =>
                                                                        e.titulo)
                                                                    .withoutNulls
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    safeSetState(() =>
                                                                        _model.ddLibrosValue =
                                                                            val),
                                                                width: 300.0,
                                                                height: 50.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                hintText:
                                                                    'Seleccione',
                                                                icon: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_down_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  size: 24.0,
                                                                ),
                                                                fillColor: const Color(
                                                                    0x7EFFFFFF),
                                                                elevation: 2.0,
                                                                borderColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                borderWidth:
                                                                    1.0,
                                                                borderRadius:
                                                                    8.0,
                                                                margin: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        4.0,
                                                                        16.0,
                                                                        4.0),
                                                                hidesUnderline:
                                                                    true,
                                                                isOverButton:
                                                                    true,
                                                                isSearchable:
                                                                    false,
                                                                isMultiSelect:
                                                                    false,
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        SizedBox(
                                                          width: 350.0,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .txtDescTextController,
                                                            focusNode: _model
                                                                .txtDescFocusNode,
                                                            autofocus: true,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  'Descripcion',
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                              hintText:
                                                                  'Descripcion de la recomendacion',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodySmallFamily,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Color(
                                                                      0x00000000),
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                              ),
                                                              filled: true,
                                                              fillColor: const Color(
                                                                  0x7EFFFFFF),
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
                                                            maxLines: 2,
                                                            validator: _model
                                                                .txtDescTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: SizedBox(
                                                            width: 300.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .txtURLTextController,
                                                              focusNode: _model
                                                                  .txtURLFocusNode,
                                                              autofocus: true,
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'URL',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyMediumFamily,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                hintText: 'URL',
                                                                hintStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodySmallFamily),
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0x00000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: const Color(
                                                                    0x7EFFFFFF),
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                              maxLines: 2,
                                                              validator: _model
                                                                  .txtURLTextControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (!_model.isDataUploading1)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                30.0, 0.0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      borderRadius: 30.0,
                                                      borderWidth: 2.0,
                                                      buttonSize: 60.0,
                                                      fillColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      icon: Icon(
                                                        Icons.add,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                        size: 40.0,
                                                      ),
                                                      onPressed: () async {
                                                        if (_model.uploadedFileUrl1 ==
                                                                '') {
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            storageFolderPath:
                                                                _model
                                                                    .ddLibrosValue,
                                                            maxWidth: 200.00,
                                                            maxHeight: 150.00,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading2 =
                                                                    true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  await uploadSupabaseStorageFiles(
                                                                bucketName:
                                                                    'recomendaciones',
                                                                selectedFiles:
                                                                    selectedMedia,
                                                              );
                                                            } finally {
                                                              _model.isDataUploading2 =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile2 =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl2 =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                              return;
                                                            }
                                                          }

                                                          _model.urlPortada = _model
                                                              .uploadedFileUrl2;
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
                                                          if (_model
                                                                  .ddLibrosValue ==
                                                              null) {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return WebViewAware(
                                                                  child:
                                                                      AlertDialog(
                                                                    title: const Text(
                                                                        'Libros'),
                                                                    content: const Text(
                                                                        'Porfavor asegurate de seleccionar un libro'),
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
                                                          await RecomendacionesTable()
                                                              .insert({
                                                            'id': random_data
                                                                .randomString(
                                                              15,
                                                              15,
                                                              true,
                                                              true,
                                                              true,
                                                            ),
                                                            'url': _model
                                                                .txtURLTextController
                                                                .text,
                                                            'idLibro': _model
                                                                .ddLibrosValue,
                                                            'descripcion': _model
                                                                .txtDescTextController
                                                                .text,
                                                            'orden': 0,
                                                            'titulo': _model
                                                                .txtTituloTextController
                                                                .text,
                                                            'imgVideo':
                                                                valueOrDefault<
                                                                    String>(
                                                              _model.urlPortada,
                                                              'https://lnsvwmmozlkegyjkjjvl.supabase.co/storage/v1/object/public/escuelas/NeuromusicMM%20Online/1694391405373000.png',
                                                            ),
                                                          });
                                                          safeSetState(() {
                                                            _model
                                                                .txtTituloTextController
                                                                ?.clear();
                                                            _model
                                                                .txtDescTextController
                                                                ?.clear();
                                                            _model
                                                                .txtURLTextController
                                                                ?.clear();
                                                          });
                                                          safeSetState(() {
                                                            _model
                                                                .ddLibrosValueController
                                                                ?.reset();
                                                          });
                                                          safeSetState(() =>
                                                              _model.requestCompleter =
                                                                  null);
                                                          await _model
                                                              .waitForRequestCompleted();
                                                          safeSetState(() {
                                                            _model.isDataUploading1 =
                                                                false;
                                                            _model.uploadedLocalFile1 =
                                                                FFUploadedFile(
                                                                    bytes: Uint8List
                                                                        .fromList(
                                                                            []));
                                                            _model.uploadedFileUrl1 =
                                                                '';
                                                          });

                                                          safeSetState(() {
                                                            _model.isDataUploading2 =
                                                                false;
                                                            _model.uploadedLocalFile2 =
                                                                FFUploadedFile(
                                                                    bytes: Uint8List
                                                                        .fromList(
                                                                            []));
                                                            _model.uploadedFileUrl2 =
                                                                '';
                                                          });

                                                          _model.urlPortada =
                                                              null;
                                                          safeSetState(() {});
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Se agrego con exito tu recomendacion',
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
                                                        }
                                                      },
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 10.0),
                                child: FutureBuilder<
                                    List<VLibrosRecomendacionesRow>>(
                                  future:
                                      VLibrosRecomendacionesTable().queryRows(
                                    queryFn: (q) => q,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: SpinKitFadingCube(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<VLibrosRecomendacionesRow>
                                        rowVLibrosRecomendacionesRowList =
                                        snapshot.data!;

                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: List.generate(
                                              rowVLibrosRecomendacionesRowList
                                                  .length, (rowIndex) {
                                        final rowVLibrosRecomendacionesRow =
                                            rowVLibrosRecomendacionesRowList[
                                                rowIndex];
                                        return Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.idLibro =
                                                  rowVLibrosRecomendacionesRow
                                                      .idLibro;
                                              _model.index = rowIndex;
                                              safeSetState(() {});
                                              safeSetState(() => _model
                                                  .requestCompleter = null);
                                              await _model
                                                  .waitForRequestCompleted();
                                            },
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation:
                                                  _model.index == rowIndex
                                                      ? 4.0
                                                      : 0.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                constraints: const BoxConstraints(
                                                  maxWidth: 200.0,
                                                  maxHeight: 60.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      _model.index == rowIndex
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            rowVLibrosRecomendacionesRow
                                                                .titulo,
                                                            '-',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: _model
                                                                            .index ==
                                                                        rowIndex
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .white
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      })
                                          .divide(const SizedBox(width: 10.0))
                                          .around(const SizedBox(width: 10.0)),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              wrapWithModel(
                                                model: _model.cmpOrdenModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CampoWidget(
                                                  texto: 'Orden',
                                                  ancho: 65,
                                                  bkColor: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.cmpVideoModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CampoWidget(
                                                  texto: 'Video',
                                                  ancho: 120,
                                                  bkColor: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.cmpTituloModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CampoWidget(
                                                  texto: 'Titulo',
                                                  ancho: 280,
                                                  bkColor: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.cmpDescripcionModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CampoWidget(
                                                  texto: 'Descripción',
                                                  ancho: 320,
                                                  bkColor: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                ),
                                              ),
                                              wrapWithModel(
                                                model: _model.cmpBorrarModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: CampoWidget(
                                                  texto: 'Opciones',
                                                  ancho: 80,
                                                  bkColor: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (_model.index != null)
                                            Expanded(
                                              child: FutureBuilder<
                                                  List<RecomendacionesRow>>(
                                                future: (_model
                                                            .requestCompleter ??=
                                                        Completer<
                                                            List<
                                                                RecomendacionesRow>>()
                                                          ..complete(
                                                              RecomendacionesTable()
                                                                  .queryRows(
                                                            queryFn: (q) =>
                                                                q.eq(
                                                              'idLibro',
                                                              _model.idLibro,
                                                            ),
                                                          )))
                                                    .future,
                                                builder: (context, snapshot) {
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
                                                  List<RecomendacionesRow>
                                                      colRecomendacionesRecomendacionesRowList =
                                                      snapshot.data!;

                                                  return SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: List.generate(
                                                          colRecomendacionesRecomendacionesRowList
                                                              .length,
                                                          (colRecomendacionesIndex) {
                                                        final colRecomendacionesRecomendacionesRow =
                                                            colRecomendacionesRecomendacionesRowList[
                                                                colRecomendacionesIndex];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      2.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onDoubleTap:
                                                                      () async {
                                                                    await showAlignedDialog(
                                                                      context:
                                                                          context,
                                                                      isGlobal:
                                                                          false,
                                                                      avoidOverflow:
                                                                          true,
                                                                      targetAnchor: const AlignmentDirectional(
                                                                              -1.0,
                                                                              1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      followerAnchor: const AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              WebViewAware(
                                                                            child:
                                                                                OrdencontRecomendacionesWidget(
                                                                              id: colRecomendacionesRecomendacionesRow.id,
                                                                              orderActual: colRecomendacionesRecomendacionesRow.orden!,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );

                                                                    safeSetState(() =>
                                                                        _model.requestCompleter =
                                                                            null);
                                                                    await _model
                                                                        .waitForRequestCompleted();
                                                                  },
                                                                  child:
                                                                      CampoWidget(
                                                                    key: Key(
                                                                        'Keyonv_${colRecomendacionesIndex}_of_${colRecomendacionesRecomendacionesRowList.length}'),
                                                                    texto: colRecomendacionesRecomendacionesRow
                                                                        .orden!
                                                                        .toString(),
                                                                    ancho: 65,
                                                                    bkColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    txtColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    alineacion:
                                                                        3,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            2.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: 120.0,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .network(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        colRecomendacionesRecomendacionesRow
                                                                            .imgVideo,
                                                                        'https://lnsvwmmozlkegyjkjjvl.supabase.co/storage/v1/object/public/escuelas/NeuromusicMM%20Online/1694391405373000.png',
                                                                      ),
                                                                      width:
                                                                          300.0,
                                                                      height:
                                                                          200.0,
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              CampoWidget(
                                                                key: Key(
                                                                    'Key3ld_${colRecomendacionesIndex}_of_${colRecomendacionesRecomendacionesRowList.length}'),
                                                                texto:
                                                                    colRecomendacionesRecomendacionesRow
                                                                        .titulo!,
                                                                ancho: 280,
                                                                bkColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                txtColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                              ),
                                                              CampoWidget(
                                                                key: Key(
                                                                    'Keyhst_${colRecomendacionesIndex}_of_${colRecomendacionesRecomendacionesRowList.length}'),
                                                                texto: colRecomendacionesRecomendacionesRow
                                                                    .descripcion!,
                                                                ancho: 320,
                                                                bkColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                txtColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                              ),
                                                              Container(
                                                                width: 80.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    var confirmDialogResponse =
                                                                        await showDialog<bool>(
                                                                              context: context,
                                                                              builder: (alertDialogContext) {
                                                                                return WebViewAware(
                                                                                  child: AlertDialog(
                                                                                    title: const Text('Eliminar Recomendacion'),
                                                                                    content: const Text('¿Esta seguro que deseas eliminar? ¡Esta accion no se puede deshacer!'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                        child: const Text('Regresar'),
                                                                                      ),
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                        child: const Text('Eliminar'),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                );
                                                                              },
                                                                            ) ??
                                                                            false;
                                                                    if (confirmDialogResponse) {
                                                                      await RecomendacionesTable()
                                                                          .delete(
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eq(
                                                                          'id',
                                                                          colRecomendacionesRecomendacionesRow
                                                                              .id,
                                                                        ),
                                                                      );
                                                                      safeSetState(() =>
                                                                          _model.requestCompleter =
                                                                              null);
                                                                      await _model
                                                                          .waitForRequestCompleted();
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Se elimino con exito',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).white,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              const Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).error,
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      return;
                                                                    }
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .delete,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
