import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/componentes/elementos/menu_lateral/menu_lateral_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'app_player_model.dart';
export 'app_player_model.dart';

class AppPlayerWidget extends StatefulWidget {
  const AppPlayerWidget({super.key});

  @override
  State<AppPlayerWidget> createState() => _AppPlayerWidgetState();
}

class _AppPlayerWidgetState extends State<AppPlayerWidget> {
  late AppPlayerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppPlayerModel());

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
      drawer: Drawer(
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
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        child: Icon(
                          Icons.menu_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 40.0,
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 40.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  constraints: const BoxConstraints(
                    maxWidth: 300.0,
                    maxHeight: 180.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Lottie.network(
                    '',
                    width: 300.0,
                    height: 140.0,
                    fit: BoxFit.fitWidth,
                    animate: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.skip_previous,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 50.0,
                      ),
                      Icon(
                        Icons.play_circle,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 50.0,
                      ),
                      Icon(
                        Icons.skip_next_sharp,
                        color: FlutterFlowTheme.of(context).tertiary,
                        size: 50.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ].addToEnd(const SizedBox(height: 20.0)),
        ),
      ),
    );
  }
}
