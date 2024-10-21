import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'btn_app_menu_model.dart';
export 'btn_app_menu_model.dart';

class BtnAppMenuWidget extends StatefulWidget {
  const BtnAppMenuWidget({
    super.key,
    String? texto,
    required this.icon,
    Color? color,
  })  : texto = texto ?? 'Desc',
        color = color ?? const Color(0xFFFFD7DA);

  final String texto;
  final Widget? icon;
  final Color color;

  @override
  State<BtnAppMenuWidget> createState() => _BtnAppMenuWidgetState();
}

class _BtnAppMenuWidgetState extends State<BtnAppMenuWidget> {
  late BtnAppMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BtnAppMenuModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          widget.icon!,
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
              child: Text(
                widget.texto,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                      color: widget.color,
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyMediumFamily),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
