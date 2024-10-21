import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'app_register_widget.dart' show AppRegisterWidget;
import 'package:flutter/material.dart';

class AppRegisterModel extends FlutterFlowModel<AppRegisterWidget> {
  ///  Local state fields for this page.

  String? idEscuela;

  int? seleccionEscuela;

  int? usos;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - Query Rows] action in appRegister widget.
  List<InvitacionesRow>? outInvitacion;
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  String? _txtNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor Ingrese su nombre';
    }

    if (!RegExp('^[a-zA-Z0-9_-]{3,16}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtLname widget.
  FocusNode? txtLnameFocusNode;
  TextEditingController? txtLnameTextController;
  String? Function(BuildContext, String?)? txtLnameTextControllerValidator;
  String? _txtLnameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese sus apellidos ';
    }

    if (!RegExp('^[a-zA-Z0-9_-]{3,16}\$').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  String? _txtEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese un correo electronico';
    }

    if (!RegExp('^[\\w\\.-]+@[a-zA-Z\\d\\.-]+\\.[a-zA-Z]{2,}\$')
        .hasMatch(val)) {
      return 'El correo electrónico ingresado no es válido. Por favor, introduce una dirección de correo electrónico válida.\n';
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
      return 'Por favor ingresa una contraseña';
    }

    if (!RegExp('^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}\$')
        .hasMatch(val)) {
      return 'La contraseña debe tener al menos 8 caracteres, incluyendo al menos una mayúscula, una minúscula y un número.\n';
    }
    return null;
  }

  // State field(s) for txtCPassword widget.
  FocusNode? txtCPasswordFocusNode;
  TextEditingController? txtCPasswordTextController;
  late bool txtCPasswordVisibility;
  String? Function(BuildContext, String?)? txtCPasswordTextControllerValidator;
  String? _txtCPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor confirme su contraseña';
    }

    if (!RegExp('^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}\$')
        .hasMatch(val)) {
      return 'La contraseña debe tener al menos 8 caracteres, incluyendo al menos una mayúscula, una minúscula y un número.\n';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    txtNameTextControllerValidator = _txtNameTextControllerValidator;
    txtLnameTextControllerValidator = _txtLnameTextControllerValidator;
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtPasswordVisibility = false;
    txtPasswordTextControllerValidator = _txtPasswordTextControllerValidator;
    txtCPasswordVisibility = false;
    txtCPasswordTextControllerValidator = _txtCPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtLnameFocusNode?.dispose();
    txtLnameTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();

    txtCPasswordFocusNode?.dispose();
    txtCPasswordTextController?.dispose();
  }
}
