import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/componentes/elementos/menu_lateral/menu_lateral_widget.dart';
import 'app_profile_widget.dart' show AppProfileWidget;
import 'package:flutter/material.dart';

class AppProfileModel extends FlutterFlowModel<AppProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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

  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  @override
  void initState(BuildContext context) {
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    txtApellidoTextControllerValidator = _txtApellidoTextControllerValidator;
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtApellidoFocusNode?.dispose();
    txtApellidoTextController?.dispose();

    menuLateralModel.dispose();
  }
}
