import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'scr_padres_model.dart';
export 'scr_padres_model.dart';

class ScrPadresWidget extends StatefulWidget {
  const ScrPadresWidget({super.key});

  @override
  State<ScrPadresWidget> createState() => _ScrPadresWidgetState();
}

class _ScrPadresWidgetState extends State<ScrPadresWidget> {
  late ScrPadresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrPadresModel());

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
                    padres: true,
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
                                    texto: 'Padres registrados',
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
