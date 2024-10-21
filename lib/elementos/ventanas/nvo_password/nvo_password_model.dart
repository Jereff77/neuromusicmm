import '/backend/api_requests/api_calls.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nvo_password_widget.dart' show NvoPasswordWidget;
import 'package:flutter/material.dart';

class NvoPasswordModel extends FlutterFlowModel<NvoPasswordWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel;
  // State field(s) for txtnvoPass widget.
  FocusNode? txtnvoPassFocusNode;
  TextEditingController? txtnvoPassTextController;
  late bool txtnvoPassVisibility;
  String? Function(BuildContext, String?)? txtnvoPassTextControllerValidator;
  String? _txtnvoPassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(
            '^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[\$%&#*])[A-Za-z\\d\$%&#*]{8,}\$')
        .hasMatch(val)) {
      return 'La contraseña debe contener al menos:\n- Una letra mayúscula (A-Z)\n- Una letra minúscula (a-z)\n- Un número (0-9)\n- Uno de los siguientes caracteres especiales: \$ % & # *\n- Tener una longitud mínima de 8 caracteres';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (Recuperar password)] action in Button widget.
  ApiCallResponse? apiResultz37;

  @override
  void initState(BuildContext context) {
    tituloSeccionModel = createModel(context, () => TituloSeccionModel());
    txtnvoPassVisibility = false;
    txtnvoPassTextControllerValidator = _txtnvoPassTextControllerValidator;
  }

  @override
  void dispose() {
    tituloSeccionModel.dispose();
    txtnvoPassFocusNode?.dispose();
    txtnvoPassTextController?.dispose();
  }
}
