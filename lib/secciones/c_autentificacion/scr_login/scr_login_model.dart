import '/elementos/componentes/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_login_widget.dart' show ScrLoginWidget;
import 'package:flutter/material.dart';

class ScrLoginModel extends FlutterFlowModel<ScrLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  // State field(s) for txtContrasea widget.
  FocusNode? txtContraseaFocusNode;
  TextEditingController? txtContraseaTextController;
  late bool txtContraseaVisibility;
  String? Function(BuildContext, String?)? txtContraseaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    txtContraseaVisibility = false;
  }

  @override
  void dispose() {
    headerModel.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContraseaFocusNode?.dispose();
    txtContraseaTextController?.dispose();
  }
}
