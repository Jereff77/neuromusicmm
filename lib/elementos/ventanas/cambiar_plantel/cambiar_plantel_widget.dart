import '/backend/supabase/supabase.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cambiar_plantel_model.dart';
export 'cambiar_plantel_model.dart';

class CambiarPlantelWidget extends StatefulWidget {
  const CambiarPlantelWidget({
    super.key,
    required this.userSeleccionado,
  });

  final VCatUsersMaestrosRow? userSeleccionado;

  @override
  State<CambiarPlantelWidget> createState() => _CambiarPlantelWidgetState();
}

class _CambiarPlantelWidgetState extends State<CambiarPlantelWidget> {
  late CambiarPlantelModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CambiarPlantelModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.nomPlantel = valueOrDefault<String>(
        widget.userSeleccionado?.nomPlantel,
        '-',
      );
      _model.idEscuela = valueOrDefault<String>(
        widget.userSeleccionado?.idEscuela,
        '-',
      );
      _model.idPlantel = valueOrDefault<String>(
        widget.userSeleccionado?.idPlantel,
        '-',
      );
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        width: 180.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.tituloSeccionModel,
              updateCallback: () => safeSetState(() {}),
              child: const TituloSeccionWidget(
                texto: 'Cambiar Plantel',
                btnCerrar: true,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Planteles',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                          Expanded(
                            child: FutureBuilder<List<CatPlantelesRow>>(
                              future: (_model.requestCompleter ??= Completer<
                                      List<CatPlantelesRow>>()
                                    ..complete(CatPlantelesTable().queryRows(
                                      queryFn: (q) => q
                                          .eq(
                                            'idEscuela',
                                            widget.userSeleccionado?.idEscuela,
                                          )
                                          .neq(
                                            'idPlantel',
                                            widget.userSeleccionado?.idPlantel,
                                          )
                                          .order('nomPlantel', ascending: true),
                                    )))
                                  .future,
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
                                List<CatPlantelesRow>
                                    columnCatPlantelesRowList = snapshot.data!;

                                return SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                            columnCatPlantelesRowList.length,
                                            (columnIndex) {
                                      final columnCatPlantelesRow =
                                          columnCatPlantelesRowList[
                                              columnIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            await CatUsersTable().update(
                                              data: {
                                                'idPlantel':
                                                    columnCatPlantelesRow
                                                        .idPlantel,
                                              },
                                              matchingRows: (rows) => rows.eq(
                                                'uid',
                                                widget.userSeleccionado?.uid,
                                              ),
                                            );
                                            _model.nomPlantel =
                                                columnCatPlantelesRow
                                                    .nomPlantel;
                                            _model.idPlantel =
                                                columnCatPlantelesRow.idPlantel;
                                            safeSetState(() {});
                                            safeSetState(() =>
                                                _model.requestCompleter = null);
                                            await _model
                                                .waitForRequestCompleted();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Se actualizo plantel',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                  ),
                                                ),
                                                duration: const Duration(
                                                    milliseconds: 2000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            );
                                            Navigator.pop(context);
                                          },
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 3.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Container(
                                              height: 30.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(5.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        columnCatPlantelesRow
                                                            .nomPlantel!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
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
                                        .divide(const SizedBox(height: 15.0))
                                        .addToEnd(const SizedBox(height: 30.0)),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
