import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'btn_upload_model.dart';
export 'btn_upload_model.dart';

class BtnUploadWidget extends StatefulWidget {
  const BtnUploadWidget({super.key});

  @override
  State<BtnUploadWidget> createState() => _BtnUploadWidgetState();
}

class _BtnUploadWidgetState extends State<BtnUploadWidget> {
  late BtnUploadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BtnUploadModel());

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
      elevation: 3.0,
      shape: const CircleBorder(),
      child: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondary,
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Icon(
                Icons.upload,
                color: FlutterFlowTheme.of(context).primaryBtnText,
                size: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
