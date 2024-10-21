import '/auth/supabase_auth/auth_util.dart';
import '/elementos/ventanas/nvo_password/nvo_password_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/componentes/elementos/btn_app_menu/btn_app_menu_widget.dart';
import '/web_app/componentes/ventanes/soporte_tecnico/soporte_tecnico_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'menu_lateral_model.dart';
export 'menu_lateral_model.dart';

class MenuLateralWidget extends StatefulWidget {
  const MenuLateralWidget({super.key});

  @override
  State<MenuLateralWidget> createState() => _MenuLateralWidgetState();
}

class _MenuLateralWidgetState extends State<MenuLateralWidget> {
  late MenuLateralModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuLateralModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SafeArea(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    constraints: const BoxConstraints(
                      maxHeight: 100.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onLongPress: () async {
                        FFAppState().deleteLibrosUsuarios();
                        FFAppState().librosUsuarios = [];

                        FFAppState().deleteDetalleLibrosUsuario();
                        FFAppState().detalleLibrosUsuario = [];

                        safeSetState(() {});

                        context.pushNamed('scrLanding');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          fadeInDuration: const Duration(milliseconds: 0),
                          fadeOutDuration: const Duration(milliseconds: 0),
                          imageUrl: valueOrDefault<String>(
                            FFAppState().userActivo.imgLogo,
                            'https://lnsvwmmozlkegyjkjjvl.supabase.co/storage/v1/object/public/escuelas/NeuromusicMM%20Online/1694391405373000.png',
                          ),
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Tema',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                              ToggleIcon(
                                onPressed: () async {
                                  safeSetState(() =>
                                      FFAppState().tema = !FFAppState().tema);
                                  setDarkModeSetting(
                                    context,
                                    FFAppState().tema
                                        ? ThemeMode.dark
                                        : ThemeMode.light,
                                  );
                                },
                                value: FFAppState().tema,
                                onIcon: Icon(
                                  Icons.toggle_on_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 25.0,
                                ),
                                offIcon: Icon(
                                  Icons.toggle_off_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 25.0,
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
                            context.pushNamed('appHome');
                          },
                          child: wrapWithModel(
                            model: _model.btnAppHomeModel,
                            updateCallback: () => safeSetState(() {}),
                            child: BtnAppMenuWidget(
                              texto: 'Inicio',
                              icon: Icon(
                                Icons.home,
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('appProfile');
                          },
                          child: wrapWithModel(
                            model: _model.btnAppProfileModel,
                            updateCallback: () => safeSetState(() {}),
                            child: BtnAppMenuWidget(
                              texto: 'Perfil',
                              icon: Icon(
                                Icons.person,
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('appAddQR');
                          },
                          child: wrapWithModel(
                            model: _model.btnAppQRModel,
                            updateCallback: () => safeSetState(() {}),
                            child: BtnAppMenuWidget(
                              texto: 'Agregar libro',
                              icon: Icon(
                                Icons.qr_code_2_rounded,
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              isDismissible: false,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return WebViewAware(
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const SoporteTecnicoWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: wrapWithModel(
                            model: _model.btnAppSoporteModel,
                            updateCallback: () => safeSetState(() {}),
                            child: BtnAppMenuWidget(
                              texto: 'Soporte tecnico',
                              icon: Icon(
                                Icons.contact_support,
                                color: FlutterFlowTheme.of(context).secondary,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 20.0))
                          .around(const SizedBox(height: 20.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Builder(
            builder: (context) => Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 20.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showDialog(
                    context: context,
                    builder: (dialogContext) {
                      return Dialog(
                        elevation: 0,
                        insetPadding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                        alignment: const AlignmentDirectional(0.0, 0.0)
                            .resolve(Directionality.of(context)),
                        child: const WebViewAware(
                          child: NvoPasswordWidget(),
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.password,
                      color: FlutterFlowTheme.of(context).error,
                      size: 30.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Recuperar contraseña',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context).error,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                GoRouter.of(context).prepareAuthEvent();
                await authManager.signOut();
                GoRouter.of(context).clearRedirectLocation();

                context.goNamedAuth('scrLogin', context.mounted);
              },
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.login_sharp,
                    color: FlutterFlowTheme.of(context).error,
                    size: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Cerrar Sesion',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).error,
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ].divide(const SizedBox(height: 3.0)).around(const SizedBox(height: 3.0)),
      ),
    );
  }
}
