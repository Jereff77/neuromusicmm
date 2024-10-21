import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'titulo_seccion_model.dart';
export 'titulo_seccion_model.dart';

class TituloSeccionWidget extends StatefulWidget {
  const TituloSeccionWidget({
    super.key,
    required this.texto,
    bool? btnCerrar,
  }) : btnCerrar = btnCerrar ?? false;

  final String? texto;
  final bool btnCerrar;

  @override
  State<TituloSeccionWidget> createState() => _TituloSeccionWidgetState();
}

class _TituloSeccionWidgetState extends State<TituloSeccionWidget> {
  late TituloSeccionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TituloSeccionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 35.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryText,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                widget.texto!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
            if (widget.btnCerrar)
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.cancel,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 24.0,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
