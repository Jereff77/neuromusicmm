import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_info_widget.dart' show EditarInfoWidget;
import 'package:flutter/material.dart';

class EditarInfoModel extends FlutterFlowModel<EditarInfoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  String? _txtNombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese un nombre';
    }

    if (!RegExp('^[A-Za-z]{3,20}\$').hasMatch(val)) {
      return 'El nombre debe contener entre 3 y 20 caracteres y solo puede contener letras mayúsculas y minúsculas.';
    }
    return null;
  }

  // State field(s) for txtApellido widget.
  FocusNode? txtApellidoFocusNode;
  TextEditingController? txtApellidoTextController;
  String? Function(BuildContext, String?)? txtApellidoTextControllerValidator;
  String? _txtApellidoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor ingrese un apellido';
    }

    if (!RegExp('^[A-Za-z]{3,20}\$').hasMatch(val)) {
      return 'El nombre debe contener entre 3 y 20 caracteres y solo puede contener letras mayúsculas y minúsculas.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    tituloSeccionModel = createModel(context, () => TituloSeccionModel());
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    txtApellidoTextControllerValidator = _txtApellidoTextControllerValidator;
  }

  @override
  void dispose() {
    tituloSeccionModel.dispose();
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtApellidoFocusNode?.dispose();
    txtApellidoTextController?.dispose();
  }
}
