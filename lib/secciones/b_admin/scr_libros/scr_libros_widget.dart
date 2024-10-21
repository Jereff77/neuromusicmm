import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/ordencont_libro/ordencont_libro_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/elementos/ventanas/re_order/re_order_widget.dart';
import '/elementos/ventanas/registro_libros/registro_libros_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'scr_libros_model.dart';
export 'scr_libros_model.dart';

class ScrLibrosWidget extends StatefulWidget {
  const ScrLibrosWidget({super.key});

  @override
  State<ScrLibrosWidget> createState() => _ScrLibrosWidgetState();
}

class _ScrLibrosWidgetState extends State<ScrLibrosWidget> {
  late ScrLibrosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrLibrosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
                    libros: true,
                    multipantalla: false,
                    cel: false,
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
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          constraints: const BoxConstraints(
                                            maxWidth: 300.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.tituloPantallaModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const TituloPantallaWidget(
                                              texto: 'Libros',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Container(
                                        width: 300.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Stack(
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model: _model
                                                      .tituloSeccionModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: const TituloSeccionWidget(
                                                    texto: 'Libros',
                                                    btnCerrar: false,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 10.0),
                                                    child: FutureBuilder<
                                                        List<CatLibrosRow>>(
                                                      future: CatLibrosTable()
                                                          .queryRows(
                                                        queryFn: (q) => q
                                                            .eq(
                                                              'status',
                                                              true,
                                                            )
                                                            .order('orden',
                                                                ascending:
                                                                    true),
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<CatLibrosRow>
                                                            colLibrosCatLibrosRowList =
                                                            snapshot.data!;

                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              colLibrosCatLibrosRowList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              colLibrosIndex) {
                                                            final colLibrosCatLibrosRow =
                                                                colLibrosCatLibrosRowList[
                                                                    colLibrosIndex];
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: InkWell(
                                                                splashColor: Colors
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
                                                                  _model.indexLibro =
                                                                      colLibrosIndex;
                                                                  _model.idLibro =
                                                                      colLibrosCatLibrosRow
                                                                          .idLibro;
                                                                  safeSetState(
                                                                      () {});
                                                                  await Clipboard.setData(
                                                                      ClipboardData(
                                                                          text:
                                                                              _model.idLibro!));
                                                                  safeSetState(() =>
                                                                      _model.requestCompleter2 =
                                                                          null);
                                                                  await _model
                                                                      .waitForRequestCompleted2();
                                                                  safeSetState(() =>
                                                                      _model.requestCompleter1 =
                                                                          null);
                                                                  await _model
                                                                      .waitForRequestCompleted1();
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: _model.indexLibro ==
                                                                            colLibrosIndex
                                                                        ? const Color(
                                                                            0x4DE86A9A)
                                                                        : const Color(
                                                                            0x00000000),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            120.0,
                                                                        height:
                                                                            100.0,
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: const BorderRadius.only(
                                                                                bottomLeft: Radius.circular(0.0),
                                                                                bottomRight: Radius.circular(8.0),
                                                                                topLeft: Radius.circular(0.0),
                                                                                topRight: Radius.circular(8.0),
                                                                              ),
                                                                              child: Image.network(
                                                                                valueOrDefault<String>(
                                                                                  colLibrosCatLibrosRow.imgPortada,
                                                                                  'https://upload.wikimedia.org/wikipedia/commons/3/3f/Placeholder_view_vector.svg',
                                                                                ),
                                                                                width: 120.0,
                                                                                height: 100.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(1.0, 1.0),
                                                                              child: AlignedTooltip(
                                                                                content: Padding(
                                                                                  padding: const EdgeInsets.all(4.0),
                                                                                  child: Text(
                                                                                    'Doble click para editar',
                                                                                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                offset: 4.0,
                                                                                preferredDirection: AxisDirection.down,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                elevation: 4.0,
                                                                                tailBaseWidth: 24.0,
                                                                                tailLength: 12.0,
                                                                                waitDuration: const Duration(milliseconds: 100),
                                                                                showDuration: const Duration(milliseconds: 150),
                                                                                triggerMode: TooltipTriggerMode.tap,
                                                                                child: Builder(
                                                                                  builder: (context) => InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onDoubleTap: () async {
                                                                                      await showAlignedDialog(
                                                                                        context: context,
                                                                                        isGlobal: false,
                                                                                        avoidOverflow: false,
                                                                                        targetAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        followerAnchor: const AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        builder: (dialogContext) {
                                                                                          return Material(
                                                                                            color: Colors.transparent,
                                                                                            child: WebViewAware(
                                                                                              child: OrdencontLibroWidget(
                                                                                                orderActual: colLibrosCatLibrosRow.orden!,
                                                                                                idText: colLibrosCatLibrosRow.idLibro,
                                                                                                tabla: 'catLibros',
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      );

                                                                                      safeSetState(() => _model.requestCompleter2 = null);
                                                                                      await _model.waitForRequestCompleted2();
                                                                                    },
                                                                                    child: Container(
                                                                                      width: 30.0,
                                                                                      height: 30.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondary,
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                      child: Align(
                                                                                        alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            colLibrosCatLibrosRow.orden?.toString(),
                                                                                            '0',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                letterSpacing: 0.0,
                                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                    child: Text(
                                                                                      colLibrosCatLibrosRow.titulo!,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        colLibrosCatLibrosRow.descripcion,
                                                                                        '-',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).secondary,
                                                                                            fontSize: 10.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        width:
                                                                            8.0)),
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
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 1.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 15.0, 15.0),
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
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return WebViewAware(
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                const RegistroLibrosWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 5.0,
                                                    shape: const CircleBorder(),
                                                    child: Container(
                                                      width: 40.0,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: FaIcon(
                                                          FontAwesomeIcons.plus,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
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
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: FlutterFlowChoiceChips(
                                        options: const [
                                          ChipData(
                                              'Video', Icons.video_collection),
                                          ChipData('Musica', Icons.music_note),
                                          ChipData('PDF', Icons.file_copy)
                                        ],
                                        onChanged: (val) async {
                                          safeSetState(() =>
                                              _model.choiceChipsValue =
                                                  val?.firstOrNull);
                                          safeSetState(() =>
                                              _model.requestCompleter2 = null);
                                          await _model
                                              .waitForRequestCompleted2();
                                          safeSetState(() =>
                                              _model.requestCompleter1 = null);
                                          await _model
                                              .waitForRequestCompleted1();
                                        },
                                        selectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBtnText,
                                          iconSize: 18.0,
                                          elevation: 4.0,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        unselectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          iconSize: 18.0,
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        chipSpacing: 12.0,
                                        rowSpacing: 12.0,
                                        multiselect: false,
                                        initialized:
                                            _model.choiceChipsValue != null,
                                        alignment: WrapAlignment.start,
                                        controller: _model
                                                .choiceChipsValueController ??=
                                            FormFieldController<List<String>>(
                                          ['Video'],
                                        ),
                                        wrapped: true,
                                      ),
                                    ),
                                    if (_model.idLibro != null &&
                                        _model.idLibro != '')
                                      Expanded(
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Material(
                                                color: Colors.transparent,
                                                elevation: 5.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Container(
                                                  width: 300.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
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
                                                                    'Seleccionados',
                                                                btnCerrar:
                                                                    false,
                                                              ),
                                                            ),
                                                            if (!_model
                                                                .reOrdenando)
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          VCatLibrosContenidoRow>>(
                                                                    future: (_model.requestCompleter2 ??= Completer<
                                                                            List<
                                                                                VCatLibrosContenidoRow>>()
                                                                          ..complete(
                                                                              VCatLibrosContenidoTable().queryRows(
                                                                            queryFn: (q) => q
                                                                                .eq(
                                                                                  'idLibro',
                                                                                  _model.idLibro,
                                                                                )
                                                                                .eq(
                                                                                  'tipo',
                                                                                  _model.choiceChipsValue,
                                                                                ),
                                                                          )))
                                                                        .future,
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                SpinKitFadingCube(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 50.0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<VCatLibrosContenidoRow>
                                                                          contLibrosVCatLibrosContenidoRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            1.0,
                                                                        decoration:
                                                                            const BoxDecoration(),
                                                                        child:
                                                                            Builder(
                                                                          builder:
                                                                              (context) {
                                                                            final contenidoLibrosDinamicos =
                                                                                contLibrosVCatLibrosContenidoRowList.toList();

                                                                            return ReorderableListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.vertical,
                                                                              itemCount: contenidoLibrosDinamicos.length,
                                                                              itemBuilder: (context, contenidoLibrosDinamicosIndex) {
                                                                                final contenidoLibrosDinamicosItem = contenidoLibrosDinamicos[contenidoLibrosDinamicosIndex];
                                                                                return Container(
                                                                                  key: ValueKey("Column_0oh4sm1g" '_' + contenidoLibrosDinamicosIndex.toString()),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 10.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                          child: Image.network(
                                                                                            valueOrDefault<String>(
                                                                                              contenidoLibrosDinamicosItem.imgPortada,
                                                                                              'https://upload.wikimedia.org/wikipedia/commons/3/3f/Placeholder_view_vector.svg',
                                                                                            ),
                                                                                            width: 50.0,
                                                                                            height: 50.0,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 10.0, 0.0),
                                                                                                child: Text(
                                                                                                  contenidoLibrosDinamicosItem.titulo!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              await CatLibrosContenidoTable().delete(
                                                                                                matchingRows: (rows) => rows.eq(
                                                                                                  'idContenido',
                                                                                                  contenidoLibrosDinamicosItem.idContenido,
                                                                                                ),
                                                                                              );
                                                                                              safeSetState(() => _model.requestCompleter2 = null);
                                                                                              await _model.waitForRequestCompleted2();
                                                                                              safeSetState(() => _model.requestCompleter1 = null);
                                                                                              await _model.waitForRequestCompleted1();
                                                                                              await action_blocks.actividad(
                                                                                                context,
                                                                                                pantalla: 'scrLibros',
                                                                                                widget: 'icon',
                                                                                                nomWidget: 'quitar',
                                                                                                comentario: '${contenidoLibrosDinamicosItem.idLibro} | ${contenidoLibrosDinamicosItem.idArchivo} | ${contenidoLibrosDinamicosItem.tipo}',
                                                                                                correo: FFAppState().userActivo.email,
                                                                                                app: 1,
                                                                                              );
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.arrow_right_outlined,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              },
                                                                              onReorder: (int reorderableOldIndex, int reorderableNewIndex) async {
                                                                                FFAppState().count = 0;
                                                                                safeSetState(() {});
                                                                                _model.oldList = [];
                                                                                _model.reOrdenando = true;
                                                                                safeSetState(() {});
                                                                                while (FFAppState().count < contenidoLibrosDinamicos.length) {
                                                                                  _model.addToOldList(ListItemsStruct(
                                                                                    orden: FFAppState().count,
                                                                                    idArchivo: contenidoLibrosDinamicos[FFAppState().count].idArchivo,
                                                                                  ));
                                                                                  safeSetState(() {});
                                                                                  FFAppState().count = FFAppState().count + 1;
                                                                                  safeSetState(() {});
                                                                                }
                                                                                _model.listaNueva = actions.reorderItems(
                                                                                  contenidoLibrosDinamicos.length,
                                                                                  reorderableOldIndex,
                                                                                  reorderableNewIndex,
                                                                                  _model.oldList.toList(),
                                                                                );
                                                                                FFAppState().count = 0;
                                                                                safeSetState(() {});
                                                                                while (FFAppState().count < contenidoLibrosDinamicos.length) {
                                                                                  await CatLibrosContenidoTable().update(
                                                                                    data: {
                                                                                      'orden': FFAppState().count,
                                                                                    },
                                                                                    matchingRows: (rows) => rows
                                                                                        .eq(
                                                                                          'idLibro',
                                                                                          _model.idLibro,
                                                                                        )
                                                                                        .eq(
                                                                                          'idArchivo',
                                                                                          (_model.listaNueva?[FFAppState().count])?.idArchivo,
                                                                                        ),
                                                                                  );
                                                                                  FFAppState().count = FFAppState().count + 1;
                                                                                  safeSetState(() {});
                                                                                }
                                                                                _model.reOrdenando = false;
                                                                                safeSetState(() {});
                                                                                safeSetState(() => _model.requestCompleter2 = null);
                                                                                await _model.waitForRequestCompleted2();

                                                                                safeSetState(() {});
                                                                              },
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            if (_model
                                                                .reOrdenando)
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .reOrderModel,
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        const ReOrderWidget(),
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
                                              Material(
                                                color: Colors.transparent,
                                                elevation: 5.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Container(
                                                  width: 300.0,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
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
                                                                    'Disponibles',
                                                                btnCerrar:
                                                                    false,
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      1.0,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          ArchivosRow>>(
                                                                    future: (_model.requestCompleter1 ??= Completer<
                                                                            List<
                                                                                ArchivosRow>>()
                                                                          ..complete(
                                                                              ArchivosTable().queryRows(
                                                                            queryFn: (q) => q
                                                                                .eq(
                                                                                  'tipo',
                                                                                  _model.choiceChipsValue,
                                                                                )
                                                                                .order('titulo', ascending: true),
                                                                          )))
                                                                        .future,
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                SpinKitFadingCube(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 50.0,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<ArchivosRow>
                                                                          dispVideoArchivosRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return SingleChildScrollView(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: List.generate(
                                                                              dispVideoArchivosRowList.length,
                                                                              (dispVideoIndex) {
                                                                            final dispVideoArchivosRow =
                                                                                dispVideoArchivosRowList[dispVideoIndex];
                                                                            return Container(
                                                                              decoration: const BoxDecoration(),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Expanded(
                                                                                    child: InkWell(
                                                                                      splashColor: Colors.transparent,
                                                                                      focusColor: Colors.transparent,
                                                                                      hoverColor: Colors.transparent,
                                                                                      highlightColor: Colors.transparent,
                                                                                      onTap: () async {
                                                                                        safeSetState(() {});
                                                                                      },
                                                                                      child: Container(
                                                                                        width: MediaQuery.sizeOf(context).width * 1.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsets.all(5.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              InkWell(
                                                                                                splashColor: Colors.transparent,
                                                                                                focusColor: Colors.transparent,
                                                                                                hoverColor: Colors.transparent,
                                                                                                highlightColor: Colors.transparent,
                                                                                                onTap: () async {
                                                                                                  await CatLibrosContenidoTable().insert({
                                                                                                    'uid': FFAppState().userActivo.uid,
                                                                                                    'idLibro': _model.idLibro,
                                                                                                    'idArchivo': dispVideoArchivosRow.idFile,
                                                                                                    'tipo': dispVideoArchivosRow.tipo,
                                                                                                    'orden': 9999,
                                                                                                  });
                                                                                                  safeSetState(() => _model.requestCompleter2 = null);
                                                                                                  await _model.waitForRequestCompleted2();
                                                                                                  safeSetState(() => _model.requestCompleter2 = null);
                                                                                                  await _model.waitForRequestCompleted2();
                                                                                                  await action_blocks.actividad(
                                                                                                    context,
                                                                                                    pantalla: 'scrLibros',
                                                                                                    widget: 'icon',
                                                                                                    nomWidget: 'agregar',
                                                                                                    comentario: '${_model.idLibro} | ${dispVideoArchivosRow.idFile} | ${dispVideoArchivosRow.tipo}',
                                                                                                    correo: FFAppState().userActivo.email,
                                                                                                    app: 1,
                                                                                                  );
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.arrow_left_sharp,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                              ),
                                                                                              ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                child: Image.network(
                                                                                                  () {
                                                                                                    if (_model.choiceChipsValue == 'Video') {
                                                                                                      return valueOrDefault<String>(
                                                                                                        dispVideoArchivosRow.imgPortada,
                                                                                                        'https://upload.wikimedia.org/wikipedia/commons/3/3f/Placeholder_view_vector.svg',
                                                                                                      );
                                                                                                    } else if (_model.choiceChipsValue == 'Musica') {
                                                                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neuromusicmm-06j2n8/assets/p563muyokxwy/musica.png';
                                                                                                    } else if (_model.choiceChipsValue == 'PDF') {
                                                                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neuromusicmm-06j2n8/assets/7cx6gltlgs98/pdfs-512.webp';
                                                                                                    } else {
                                                                                                      return 'https://upload.wikimedia.org/wikipedia/commons/3/3f/Placeholder_view_vector.svg';
                                                                                                    }
                                                                                                  }(),
                                                                                                  width: 50.0,
                                                                                                  height: 50.0,
                                                                                                  fit: BoxFit.cover,
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 10.0, 0.0),
                                                                                                  child: Text(
                                                                                                    dispVideoArchivosRow.titulo!,
                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                          fontSize: 12.0,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          }).divide(
                                                                              const SizedBox(height: 8.0)),
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
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ),
                                  ],
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
