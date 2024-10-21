import '/backend/api_requests/api_calls.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_nvo_password_widget.dart' show ScrNvoPasswordWidget;
import 'package:flutter/material.dart';

class ScrNvoPasswordModel extends FlutterFlowModel<ScrNvoPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  String? _txtCorreoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Formato no valido';
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
      return 'Requerido';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Recuperar password)] action in btnRegistrar widget.
  ApiCallResponse? apiResultmyv;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
    txtPasswordVisibility = false;
    txtPasswordTextControllerValidator = _txtPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    headerModel.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();
  }
}
