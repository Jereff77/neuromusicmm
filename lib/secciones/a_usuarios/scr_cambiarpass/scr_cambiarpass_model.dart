import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_cambiarpass_widget.dart' show ScrCambiarpassWidget;
import 'package:flutter/material.dart';

class ScrCambiarpassModel extends FlutterFlowModel<ScrCambiarpassWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Menu component.
  late MenuModel menuModel1;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel2;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel;
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  String? _txtCorreoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[A-Za-z\\d]{8,}\$')
        .hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    menuModel1 = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    menuModel2 = createModel(context, () => MenuModel());
    tituloPantallaModel = createModel(context, () => TituloPantallaModel());
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
  }

  @override
  void dispose() {
    menuModel1.dispose();
    headerModel.dispose();
    menuModel2.dispose();
    tituloPantallaModel.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();
  }
}
