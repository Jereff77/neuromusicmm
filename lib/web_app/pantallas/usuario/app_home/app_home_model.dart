import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/componentes/elementos/menu_lateral/menu_lateral_widget.dart';
import 'app_home_widget.dart' show AppHomeWidget;
import 'package:flutter/material.dart';

class AppHomeModel extends FlutterFlowModel<AppHomeWidget> {
  ///  Local state fields for this page.

  String? idLibro;

  int? index;

  String? songSelected;

  int? songIndex;

  String nameSong = ' ';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtBuscar widget.
  FocusNode? txtBuscarFocusNode;
  TextEditingController? txtBuscarTextController;
  String? Function(BuildContext, String?)? txtBuscarTextControllerValidator;
  String? _txtBuscarTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'campo requerido';
    }

    if (val.length < 3) {
      return 'Minimo 3 caracteres ';
    }

    if (!RegExp('^[\\wÀ-ÿ.,\\-_\\s]+\$').hasMatch(val)) {
      return 'La cadena contiene caracteres no permitidos.';
    }
    return null;
  }

  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  @override
  void initState(BuildContext context) {
    txtBuscarTextControllerValidator = _txtBuscarTextControllerValidator;
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    txtBuscarFocusNode?.dispose();
    txtBuscarTextController?.dispose();

    menuLateralModel.dispose();
  }
}
