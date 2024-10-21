import '/backend/supabase/supabase.dart';
import '/elementos/componentes/campo/campo_widget.dart';
import '/elementos/componentes/campo_titulo/campo_titulo_widget.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'scr_cel_model.dart';
export 'scr_cel_model.dart';

class ScrCelWidget extends StatefulWidget {
  const ScrCelWidget({super.key});

  @override
  State<ScrCelWidget> createState() => _ScrCelWidgetState();
}

class _ScrCelWidgetState extends State<ScrCelWidget> {
  late ScrCelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrCelModel());

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
      drawer: SizedBox(
        width: 180.0,
        child: Drawer(
          elevation: 16.0,
          child: WebViewAware(
            child: wrapWithModel(
              model: _model.menuModel2,
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
              ),
            ),
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
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  wrapWithModel(
                    model: _model.menuModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: const MenuWidget(
                      video: false,
                      musica: false,
                      usuarios: false,
                      escuelas: false,
                      archivos: false,
                      libros: false,
                      multipantalla: true,
                      cel: false,
                    ),
                  ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.campoTituloModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: const CampoTituloWidget(
                                texto: 'Nivel',
                                ancho: 100,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.campoTituloModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: const CampoTituloWidget(
                                texto: 'Nombre',
                                ancho: 250,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: FutureBuilder<List<CatUsersRow>>(
                            future: CatUsersTable().queryRows(
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              List<CatUsersRow> columnCatUsersRowList =
                                  snapshot.data!;

                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      columnCatUsersRowList.length,
                                      (columnIndex) {
                                    final columnCatUsersRow =
                                        columnCatUsersRowList[columnIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CampoWidget(
                                            key: Key(
                                                'Keympn_${columnIndex}_of_${columnCatUsersRowList.length}'),
                                            texto: columnCatUsersRow.idPerfil!
                                                .toString(),
                                            ancho: 100,
                                            tamLetra: 12,
                                            bkColor: const Color(0x40E86A9A),
                                          ),
                                          CampoWidget(
                                            key: Key(
                                                'Keyoqe_${columnIndex}_of_${columnCatUsersRowList.length}'),
                                            texto:
                                                '${columnCatUsersRow.nombre} ${columnCatUsersRow.apellido1} ${columnCatUsersRow.apellido2}',
                                            ancho: 250,
                                            tamLetra: 12,
                                            bkColor: const Color(0x40E86A9A),
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
