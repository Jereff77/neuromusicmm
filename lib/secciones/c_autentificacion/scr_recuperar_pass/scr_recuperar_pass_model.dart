import '/elementos/componentes/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_recuperar_pass_widget.dart' show ScrRecuperarPassWidget;
import 'package:flutter/material.dart';

class ScrRecuperarPassModel extends FlutterFlowModel<ScrRecuperarPassWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();
  }
}
