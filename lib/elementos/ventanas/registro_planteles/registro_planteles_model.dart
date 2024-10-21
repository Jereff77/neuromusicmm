import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'registro_planteles_widget.dart' show RegistroPlantelesWidget;
import 'package:flutter/material.dart';

class RegistroPlantelesModel extends FlutterFlowModel<RegistroPlantelesWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel;
  // State field(s) for EtxtNombrePlantel widget.
  FocusNode? etxtNombrePlantelFocusNode;
  TextEditingController? etxtNombrePlantelTextController;
  String? Function(BuildContext, String?)?
      etxtNombrePlantelTextControllerValidator;

  @override
  void initState(BuildContext context) {
    tituloSeccionModel = createModel(context, () => TituloSeccionModel());
  }

  @override
  void dispose() {
    tituloSeccionModel.dispose();
    etxtNombrePlantelFocusNode?.dispose();
    etxtNombrePlantelTextController?.dispose();
  }
}
