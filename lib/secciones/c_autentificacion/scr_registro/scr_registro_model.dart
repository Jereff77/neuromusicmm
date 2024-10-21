import '/elementos/componentes/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'scr_registro_widget.dart' show ScrRegistroWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ScrRegistroModel extends FlutterFlowModel<ScrRegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for txtNombres widget.
  FocusNode? txtNombresFocusNode;
  TextEditingController? txtNombresTextController;
  String? Function(BuildContext, String?)? txtNombresTextControllerValidator;
  String? _txtNombresTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for txtApellido1 widget.
  FocusNode? txtApellido1FocusNode;
  TextEditingController? txtApellido1TextController;
  String? Function(BuildContext, String?)? txtApellido1TextControllerValidator;
  String? _txtApellido1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for txtApellido2 widget.
  FocusNode? txtApellido2FocusNode;
  TextEditingController? txtApellido2TextController;
  String? Function(BuildContext, String?)? txtApellido2TextControllerValidator;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  final txtTelefonoMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  String? _txtTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp('\\+?\\(?\\d{2,4}\\)?[\\d\\s-]{3,}').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  String? _txtCorreoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp('[a-zA-Z0-9_\\.\\+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-\\.]+')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtPass1 widget.
  FocusNode? txtPass1FocusNode;
  TextEditingController? txtPass1TextController;
  late bool txtPass1Visibility;
  String? Function(BuildContext, String?)? txtPass1TextControllerValidator;
  String? _txtPass1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Minimo 8 Caracteres\n1 Numero\n1 Mayuscula\n1 Caracter especial (#\$%&/)';
    }

    return null;
  }

  // State field(s) for txtPass2 widget.
  FocusNode? txtPass2FocusNode;
  TextEditingController? txtPass2TextController;
  late bool txtPass2Visibility;
  String? Function(BuildContext, String?)? txtPass2TextControllerValidator;
  String? _txtPass2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for cboEscuela widget.
  String? cboEscuelaValue;
  FormFieldController<String>? cboEscuelaValueController;
  // State field(s) for cboPlantel widget.
  String? cboPlantelValue;
  FormFieldController<String>? cboPlantelValueController;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    txtNombresTextControllerValidator = _txtNombresTextControllerValidator;
    txtApellido1TextControllerValidator = _txtApellido1TextControllerValidator;
    txtTelefonoTextControllerValidator = _txtTelefonoTextControllerValidator;
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
    txtPass1Visibility = false;
    txtPass1TextControllerValidator = _txtPass1TextControllerValidator;
    txtPass2Visibility = false;
    txtPass2TextControllerValidator = _txtPass2TextControllerValidator;
  }

  @override
  void dispose() {
    headerModel.dispose();
    txtNombresFocusNode?.dispose();
    txtNombresTextController?.dispose();

    txtApellido1FocusNode?.dispose();
    txtApellido1TextController?.dispose();

    txtApellido2FocusNode?.dispose();
    txtApellido2TextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtPass1FocusNode?.dispose();
    txtPass1TextController?.dispose();

    txtPass2FocusNode?.dispose();
    txtPass2TextController?.dispose();
  }
}
