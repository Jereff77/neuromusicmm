import '/elementos/componentes/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_user_autorizado_widget.dart' show ScrUserAutorizadoWidget;
import 'package:flutter/material.dart';

class ScrUserAutorizadoModel extends FlutterFlowModel<ScrUserAutorizadoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
