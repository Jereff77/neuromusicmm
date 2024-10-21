import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'campo_model.dart';
export 'campo_model.dart';

class CampoWidget extends StatefulWidget {
  const CampoWidget({
    super.key,
    required this.texto,
    int? ancho,
    int? tamLetra,
    this.bkColor,
    Color? txtColor,
    int? alineacion,
  })  : ancho = ancho ?? 100,
        tamLetra = tamLetra ?? 14,
        txtColor = txtColor ?? Colors.white,
        alineacion = alineacion ?? 1;

  final String? texto;
  final int ancho;
  final int tamLetra;
  final Color? bkColor;
  final Color txtColor;
  final int alineacion;

  @override
  State<CampoWidget> createState() => _CampoWidgetState();
}

class _CampoWidgetState extends State<CampoWidget> {
  late CampoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CampoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
      child: Container(
        width: widget.ancho.toDouble(),
        constraints: const BoxConstraints(
          minHeight: 30.0,
          maxHeight: 100.0,
        ),
        decoration: BoxDecoration(
          color: widget.bkColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (widget.alineacion == 1)
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: Text(
                    widget.texto!,
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: widget.txtColor,
                          fontSize: widget.tamLetra.toDouble(),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
            if (widget.alineacion == 2)
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: Text(
                    widget.texto!,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: widget.txtColor,
                          fontSize: widget.tamLetra.toDouble(),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
            if (widget.alineacion == 3)
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                  child: Text(
                    widget.texto!,
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: widget.txtColor,
                          fontSize: widget.tamLetra.toDouble(),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
