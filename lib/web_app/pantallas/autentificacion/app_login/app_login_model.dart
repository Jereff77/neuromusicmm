import '/flutter_flow/flutter_flow_util.dart';
import 'app_login_widget.dart' show AppLoginWidget;
import 'package:flutter/material.dart';

class AppLoginModel extends FlutterFlowModel<AppLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtUsuario widget.
  FocusNode? txtUsuarioFocusNode;
  TextEditingController? txtUsuarioTextController;
  String? Function(BuildContext, String?)? txtUsuarioTextControllerValidator;
  String? _txtUsuarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese un correo';
    }

    if (!RegExp('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}\$')
        .hasMatch(val)) {
      return 'El correo electrónico ingresado no es válido.';
    }
    return null;
  }

  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;
  String? _txtPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingresa tu contraseña';
    }

    if (!RegExp('^[a-zA-Z0-9]+\$').hasMatch(val)) {
      return 'La contraseña debe contener solo letras mayúsculas, minúsculas y números, sin caracteres especiales.\n';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    txtUsuarioTextControllerValidator = _txtUsuarioTextControllerValidator;
    txtPasswordVisibility = false;
    txtPasswordTextControllerValidator = _txtPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    txtUsuarioFocusNode?.dispose();
    txtUsuarioTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();
  }
}
