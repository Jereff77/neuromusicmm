import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_add_q_r_model.dart';
export 'app_add_q_r_model.dart';

class AppAddQRWidget extends StatefulWidget {
  const AppAddQRWidget({super.key});

  @override
  State<AppAddQRWidget> createState() => _AppAddQRWidgetState();
}

class _AppAddQRWidgetState extends State<AppAddQRWidget> {
  late AppAddQRModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppAddQRModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // Escaneamos el ID de la invitacion
      _model.outQR = await FlutterBarcodeScanner.scanBarcode(
        '#C62828', // scanning line color
        'Cancelar', // cancel button text
        true, // whether to show the flash icon
        ScanMode.QR,
      );

      // Le pedimos que busque la invitacion con el mismo ID
      _model.outInvitacion = await InvitacionesTable().queryRows(
        queryFn: (q) => q
            .eq(
              'id',
              functions.extraerID(functions.extraerID(_model.outQR)),
            )
            .eq(
              'status',
              true,
            ),
      );
      // Evaluamos si el ID de la invitacion existe y es igual
      if (_model.outInvitacion!.isNotEmpty) {
        // Consulta si existe libro
        _model.outLibroExistenteQR = await CatLibrosUsuariosTable().queryRows(
          queryFn: (q) => q
              .eq(
                'uid',
                currentUserUid,
              )
              .eq(
                'idLibro',
                _model.outInvitacion?.first.idLibro,
              ),
        );
        if (_model.outLibroExistente?.length == 0) {
          // Le añadimos un nuevo libro
          await CatLibrosUsuariosTable().insert({
            'idLibUser': random_data.randomString(
              12,
              12,
              true,
              true,
              true,
            ),
            'status': true,
            'uid': currentUserUid,
            'idLibro': _model.outInvitacion?.first.idLibro,
          });
          await InvitacionesTable().update(
            data: {
              'usos': _model.outInvitacion?.first.usos == 0 ? 1 : 2,
              'status': _model.outInvitacion?.first.usos == 0 ? true : false,
              'uid1': _model.outInvitacion?.first.usos == 0
                  ? currentUserUid
                  : _model.outInvitacion?.first.uid1,
              'uid1fc': supaSerialize<DateTime>(
                  _model.outInvitacion?.first.usos == 0
                      ? getCurrentTimestamp
                      : _model.outInvitacion?.first.uid1fc),
              'uid2': _model.outInvitacion?.first.usos == 1
                  ? currentUserUid
                  : _model.outInvitacion?.first.uid2,
              'uid2fc': supaSerialize<DateTime>(
                  _model.outInvitacion?.first.usos == 1
                      ? getCurrentTimestamp
                      : _model.outInvitacion?.first.uid2fc),
            },
            matchingRows: (rows) => rows.eq(
              'id',
              functions.extraerID(_model.outQR),
            ),
          );
          FFAppState().deleteLibrosUsuarios();
          FFAppState().librosUsuarios = [];

          FFAppState().deleteDetalleLibrosUsuario();
          FFAppState().detalleLibrosUsuario = [];

          safeSetState(() {});
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Se ha agregado un libro nuevo',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).white,
                ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).primary,
            ),
          );

          context.pushNamed('scrLanding');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'El libro ya existe',
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).white,
                ),
              ),
              duration: const Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).error,
            ),
          );
          // Si no lo enviamos a la pantalla de QR invalido

          context.goNamed('appProfile');
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Tu codigo no es valido o ya fue usado',
              style: TextStyle(
                color: FlutterFlowTheme.of(context).white,
              ),
            ),
            duration: const Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).error,
          ),
        );
        // Si no lo enviamos a la pantalla de QR invalido

        context.goNamed('appProfile');
      }
    });

    _model.txtCodigoTextController ??= TextEditingController();
    _model.txtCodigoFocusNode ??= FocusNode();

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
      backgroundColor: FlutterFlowTheme.of(context).white,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.9,
              height: 40.0,
              decoration: const BoxDecoration(),
              child: Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.chevron_left_outlined,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 50.0,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: 100.0,
              decoration: const BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/neuromusic_sin_fondo_.png',
                  width: 298.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.8,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Escanea el codigo QR',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 30.0, 0.0, 30.0),
                        child: Icon(
                          Icons.qr_code_scanner,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 100.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ingresa tu codigo manualmente',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: FlutterFlowTheme.of(context).tertiary,
                              letterSpacing: 0.0,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 5.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.txtCodigoTextController,
                              focusNode: _model.txtCodigoFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                hintText: 'Codigo:',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .labelMediumFamily,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .labelMediumFamily),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).fondoContainer,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                              textAlign: TextAlign.start,
                              validator: _model.txtCodigoTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          // Le pedimos que busque la invitacion con el mismo ID
                          // Leer invitacion
                          _model.outInvitacionManual =
                              await InvitacionesTable().queryRows(
                            queryFn: (q) => q
                                .eq(
                                  'id',
                                  _model.txtCodigoTextController.text,
                                )
                                .eq(
                                  'status',
                                  true,
                                ),
                          );
                          // Evaluamos si el ID de la invitacion existe y es igual
                          if (_model.outInvitacionManual!.isNotEmpty) {
                            // Consulta si existe libro
                            _model.outLibroExistente =
                                await CatLibrosUsuariosTable().queryRows(
                              queryFn: (q) => q
                                  .eq(
                                    'uid',
                                    currentUserUid,
                                  )
                                  .eq(
                                    'idLibro',
                                    _model.outInvitacionManual?.first.idLibro,
                                  ),
                            );
                            if (_model.outLibroExistente?.length == 0) {
                              // Le añadimos un nuevo libro
                              await CatLibrosUsuariosTable().insert({
                                'idLibUser': random_data.randomString(
                                  12,
                                  12,
                                  true,
                                  true,
                                  true,
                                ),
                                'status': true,
                                'uid': currentUserUid,
                                'idLibro':
                                    _model.outInvitacionManual?.first.idLibro,
                              });
                              await InvitacionesTable().update(
                                data: {
                                  'usos':
                                      _model.outInvitacionManual?.first.usos ==
                                              0
                                          ? 1
                                          : 2,
                                  'status':
                                      _model.outInvitacionManual?.first.usos ==
                                              0
                                          ? true
                                          : false,
                                  'uid1': _model.outInvitacionManual?.first
                                              .usos ==
                                          0
                                      ? currentUserUid
                                      : _model.outInvitacionManual?.first.uid1,
                                  'uid1fc': supaSerialize<DateTime>(
                                      _model.outInvitacionManual?.first.usos ==
                                              0
                                          ? getCurrentTimestamp
                                          : _model.outInvitacionManual?.first
                                              .uid1fc),
                                  'uid2': _model.outInvitacionManual?.first
                                              .usos ==
                                          1
                                      ? currentUserUid
                                      : _model.outInvitacionManual?.first.uid2,
                                  'uid2fc': supaSerialize<DateTime>(
                                      _model.outInvitacionManual?.first.usos ==
                                              1
                                          ? getCurrentTimestamp
                                          : _model.outInvitacionManual?.first
                                              .uid2fc),
                                },
                                matchingRows: (rows) => rows.eq(
                                  'id',
                                  _model.txtCodigoTextController.text,
                                ),
                              );
                              FFAppState().deleteLibrosUsuarios();
                              FFAppState().librosUsuarios = [];

                              FFAppState().deleteDetalleLibrosUsuario();
                              FFAppState().detalleLibrosUsuario = [];

                              safeSetState(() {});
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Se ha agregado un libro nuevo',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).white,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                              );

                              context.pushNamed('scrLanding');
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Tu libro ya existe',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context).white,
                                    ),
                                  ),
                                  duration: const Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).error,
                                ),
                              );
                              // Si no lo enviamos a la pantalla de QR invalido

                              context.goNamed('appProfile');
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Tu codigo no es valido o ya fue usado',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                                ),
                                duration: const Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).error,
                              ),
                            );
                            // Si no lo enviamos a la pantalla de QR invalido

                            context.goNamed('appProfile');
                          }

                          safeSetState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
