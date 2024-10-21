import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'soporte_tecnico_widget.dart' show SoporteTecnicoWidget;
import 'package:flutter/material.dart';

class SoporteTecnicoModel extends FlutterFlowModel<SoporteTecnicoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel;
  // State field(s) for txtConsulta widget.
  FocusNode? txtConsultaFocusNode;
  TextEditingController? txtConsultaTextController;
  String? Function(BuildContext, String?)? txtConsultaTextControllerValidator;
  String? _txtConsultaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Porfavor ingresa tu consulta';
    }

    if (!RegExp('^[a-zA-Z0-9\\s.,!?()-]+\$').hasMatch(val)) {
      return 'Ingresa solo los caracteres permitidos';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    tituloSeccionModel = createModel(context, () => TituloSeccionModel());
    txtConsultaTextControllerValidator = _txtConsultaTextControllerValidator;
  }

  @override
  void dispose() {
    tituloSeccionModel.dispose();
    txtConsultaFocusNode?.dispose();
    txtConsultaTextController?.dispose();
  }
}
