import '/backend/supabase/supabase.dart';
import '/elementos/componentes/campo/campo_widget.dart';
import '/elementos/componentes/campo_der/campo_der_widget.dart';
import '/elementos/componentes/campo_titulo/campo_titulo_widget.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/elementos/ventanas/registro_escuelas/registro_escuelas_widget.dart';
import '/elementos/ventanas/registro_planteles/registro_planteles_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'scr_escuelas_model.dart';
export 'scr_escuelas_model.dart';

class ScrEscuelasWidget extends StatefulWidget {
  const ScrEscuelasWidget({super.key});

  @override
  State<ScrEscuelasWidget> createState() => _ScrEscuelasWidgetState();
}

class _ScrEscuelasWidgetState extends State<ScrEscuelasWidget> {
  late ScrEscuelasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrEscuelasModel());

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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            isDismissible: false,
            enableDrag: false,
            context: context,
            builder: (context) {
              return WebViewAware(
                child: Padding(
                  padding: MediaQuery.viewInsetsOf(context),
                  child: const RegistroEscuelasWidget(),
                ),
              );
            },
          ).then((value) => safeSetState(() {}));
        },
        backgroundColor: FlutterFlowTheme.of(context).primary,
        elevation: 8.0,
        child: AlignedTooltip(
          content: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              'Nueva escuela',
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyLargeFamily),
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
          showDuration: const Duration(milliseconds: 500),
          triggerMode: TooltipTriggerMode.tap,
          child: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 24.0,
          ),
        ),
      ),
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
                    escuelas: true,
                    archivos: false,
                    libros: false,
                    multipantalla: false,
                    cel: false,
                    pass: false,
                    padres: false,
                    qrs: false,
                    recomendaciones: false,
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
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
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
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const TituloPantallaWidget(
                                          texto: 'Registro de escuelas',
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        wrapWithModel(
                                          model: _model.campoTituloModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const CampoTituloWidget(
                                            texto: 'Logo',
                                            ancho: 150,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.campoTituloModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const CampoTituloWidget(
                                            texto: 'Escuela',
                                            ancho: 200,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.campoTituloModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const CampoTituloWidget(
                                            texto: 'Nombre',
                                            ancho: 250,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.campoTituloModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const CampoTituloWidget(
                                            texto: 'Telefono',
                                            ancho: 120,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child:
                                          FutureBuilder<List<CatEscuelasRow>>(
                                        future: CatEscuelasTable().queryRows(
                                          queryFn: (q) => q
                                              .eq(
                                                'status',
                                                true,
                                              )
                                              .order('nomEscuela',
                                                  ascending: true),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child: SpinKitFadingCube(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 50.0,
                                                ),
                                              ),
                                            );
                                          }
                                          List<CatEscuelasRow>
                                              columnCatEscuelasRowList =
                                              snapshot.data!;

                                          return SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: List.generate(
                                                  columnCatEscuelasRowList
                                                      .length, (columnIndex) {
                                                final columnCatEscuelasRow =
                                                    columnCatEscuelasRowList[
                                                        columnIndex];
                                                return Flexible(
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        3.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 150.0,
                                                              height: 70.0,
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child: Stack(
                                                                children: [
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        PageTransition(
                                                                          type:
                                                                              PageTransitionType.fade,
                                                                          child:
                                                                              FlutterFlowExpandedImageView(
                                                                            image:
                                                                                Image.network(
                                                                              columnCatEscuelasRow.imgLogo!,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                            allowRotation:
                                                                                false,
                                                                            tag:
                                                                                columnCatEscuelasRow.imgLogo!,
                                                                            useHeroAnimation:
                                                                                true,
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                    child: Hero(
                                                                      tag: columnCatEscuelasRow
                                                                          .imgLogo!,
                                                                      transitionOnUserGestures:
                                                                          true,
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: Image
                                                                            .network(
                                                                          columnCatEscuelasRow
                                                                              .imgLogo!,
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
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            1.0,
                                                                            1.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: RegistroEscuelasWidget(
                                                                                  editar: true,
                                                                                  idEscuela: columnCatEscuelasRow.idEscuela,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      },
                                                                      child:
                                                                          FaIcon(
                                                                        FontAwesomeIcons
                                                                            .edit,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    10.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CampoWidget(
                                                                    key: Key(
                                                                        'Key08j_${columnIndex}_of_${columnCatEscuelasRowList.length}'),
                                                                    texto: columnCatEscuelasRow
                                                                        .nomEscuela!,
                                                                    ancho: 200,
                                                                    tamLetra:
                                                                        14,
                                                                  ),
                                                                  CampoWidget(
                                                                    key: Key(
                                                                        'Key05u_${columnIndex}_of_${columnCatEscuelasRowList.length}'),
                                                                    texto: columnCatEscuelasRow
                                                                        .nomContacto!,
                                                                    ancho: 250,
                                                                    tamLetra:
                                                                        14,
                                                                  ),
                                                                  CampoDerWidget(
                                                                    key: Key(
                                                                        'Keyz1z_${columnIndex}_of_${columnCatEscuelasRowList.length}'),
                                                                    texto: columnCatEscuelasRow
                                                                        .telContacto!,
                                                                    ancho: 120,
                                                                    tamLetra:
                                                                        14,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 750.0,
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    FutureBuilder<
                                                                        List<
                                                                            CatPlantelesRow>>(
                                                                      future: CatPlantelesTable()
                                                                          .queryRows(
                                                                        queryFn: (q) => q
                                                                            .eq(
                                                                              'idEscuela',
                                                                              columnCatEscuelasRow.idEscuela,
                                                                            )
                                                                            .order('nomPlantel', ascending: true),
                                                                      ),
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              child: SpinKitFadingCube(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 50.0,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<CatPlantelesRow>
                                                                            wrapCatPlantelesRowList =
                                                                            snapshot.data!;

                                                                        return Wrap(
                                                                          spacing:
                                                                              0.0,
                                                                          runSpacing:
                                                                              5.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.spaceBetween,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: List.generate(
                                                                              wrapCatPlantelesRowList.length,
                                                                              (wrapIndex) {
                                                                            final wrapCatPlantelesRow =
                                                                                wrapCatPlantelesRowList[wrapIndex];
                                                                            return CampoWidget(
                                                                              key: Key('Key4vl_${wrapIndex}_of_${wrapCatPlantelesRowList.length}'),
                                                                              texto: wrapCatPlantelesRow.nomPlantel!,
                                                                              ancho: 145,
                                                                              tamLetra: 14,
                                                                              bkColor: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              txtColor: FlutterFlowTheme.of(context).secondary,
                                                                            );
                                                                          }),
                                                                        );
                                                                      },
                                                                    ),
                                                                    InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          isDismissible:
                                                                              false,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return WebViewAware(
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: RegistroPlantelesWidget(
                                                                                  editar: false,
                                                                                  idEscuela: columnCatEscuelasRow.idEscuela,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .add_circle_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 750.0,
                                                              child: Divider(
                                                                thickness: 1.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent4,
                                                              ),
                                                            ),
                                                          ],
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
