import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'titulo_pantalla_model.dart';
export 'titulo_pantalla_model.dart';

class TituloPantallaWidget extends StatefulWidget {
  const TituloPantallaWidget({
    super.key,
    required this.texto,
    int? alto,
    Color? bkcolor,
    Color? txtcolor,
    int? txtsize,
    int? paddinDer,
    int? alineacion,
  })  : alto = alto ?? 35,
        bkcolor = bkcolor ?? const Color(0xFFA9CF46),
        txtcolor = txtcolor ?? Colors.white,
        txtsize = txtsize ?? 16,
        paddinDer = paddinDer ?? 7,
        alineacion = alineacion ?? 1;

  final String? texto;
  final int alto;
  final Color bkcolor;
  final Color txtcolor;
  final int txtsize;
  final int paddinDer;
  final int alineacion;

  @override
  State<TituloPantallaWidget> createState() => _TituloPantallaWidgetState();
}

class _TituloPantallaWidgetState extends State<TituloPantallaWidget> {
  late TituloPantallaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TituloPantallaModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(
          0.0,
          0.0,
          valueOrDefault<double>(
            widget.paddinDer.toDouble(),
            0.0,
          ),
          7.0),
      child: Material(
        color: Colors.transparent,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: widget.alto.toDouble(),
          decoration: BoxDecoration(
            color: widget.bkcolor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (widget.alineacion == 1)
                  Expanded(
                    child: Text(
                      widget.texto!,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: widget.txtcolor,
                            fontSize: widget.txtsize.toDouble(),
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                if (widget.alineacion == 2)
                  Expanded(
                    child: Text(
                      widget.texto!,
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: widget.txtcolor,
                            fontSize: widget.txtsize.toDouble(),
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ),
                if (widget.alineacion == 3)
                  Expanded(
                    child: Text(
                      widget.texto!,
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: widget.txtcolor,
                            fontSize: widget.txtsize.toDouble(),
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
      ),
    );
  }
}
