import '/auth/supabase_auth/auth_util.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'scr_landing_model.dart';
export 'scr_landing_model.dart';

class ScrLandingWidget extends StatefulWidget {
  const ScrLandingWidget({super.key});

  @override
  State<ScrLandingWidget> createState() => _ScrLandingWidgetState();
}

class _ScrLandingWidgetState extends State<ScrLandingWidget> {
  late ScrLandingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScrLandingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Guarda la informacion del usuario actual en una variable llamada UsuarioActual
      await action_blocks.usuarioActual(
        context,
        uid: currentUserUid,
      );
      // Carga el catalogo de libros que tiene el usuario
      await action_blocks.catLibrosUsuario(context);
      if (formatNumber(
            FFAppState().userActivo.perfil,
            formatType: FormatType.custom,
            format: '#',
            locale: '',
          ) !=
          '4') {
        // Si el usuario es nivel 3 o inferior entonces agrega la lista completa del contenido de sus libros
        await action_blocks.detalleLibrosUsuario(context);

        context.pushNamed('scrHome');
      } else {
        // Si el usuario tiene un nivel mayor igual a 4 entonces solo agrega Musica a la lista
        await action_blocks.detalleMusicaUsuarios(context);
        await action_blocks.detalleRecomendaciones(context);

        context.pushNamed('appHome');
      }
    });

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
      body: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            wrapWithModel(
              model: _model.headerModel,
              updateCallback: () => safeSetState(() {}),
              child: const HeaderWidget(),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Image.asset(
                      'assets/images/neuromusic_500x456.png',
                      width: 250.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: CircularPercentIndicator(
                      percent: valueOrDefault<double>(
                        FFAppState().count / FFAppState().elementos,
                        0.0,
                      ),
                      radius: 60.0,
                      lineWidth: 12.0,
                      animation: true,
                      animateFromLastPercent: true,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      backgroundColor: FlutterFlowTheme.of(context).accent4,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
