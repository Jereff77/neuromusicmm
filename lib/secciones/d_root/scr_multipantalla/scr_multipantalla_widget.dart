import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'scr_multipantalla_model.dart';
export 'scr_multipantalla_model.dart';

class ScrMultipantallaWidget extends StatefulWidget {
  const ScrMultipantallaWidget({super.key});

  @override
  State<ScrMultipantallaWidget> createState() => _ScrMultipantallaWidgetState();
}

class _ScrMultipantallaWidgetState extends State<ScrMultipantallaWidget> {
  late ScrMultipantallaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrMultipantallaModel());

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
                  ),
                ),
                Html(
                  data: '<h3>H3 Header</h3> <p>Sample paragraph</p>',
                  onLinkTap: (url, _, __) => launchURL(url!),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
