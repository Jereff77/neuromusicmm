import '/flutter_flow/flutter_flow_util.dart';
import 'app_forgot_widget.dart' show AppForgotWidget;
import 'package:flutter/material.dart';

class AppForgotModel extends FlutterFlowModel<AppForgotWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtUsuario widget.
  FocusNode? txtUsuarioFocusNode;
  TextEditingController? txtUsuarioTextController;
  String? Function(BuildContext, String?)? txtUsuarioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtUsuarioFocusNode?.dispose();
    txtUsuarioTextController?.dispose();
  }
}
