import '/backend/supabase/supabase.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'agregar_recomendacion_widget.dart' show AgregarRecomendacionWidget;
import 'package:flutter/material.dart';

class AgregarRecomendacionModel
    extends FlutterFlowModel<AgregarRecomendacionWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel;
  // State field(s) for EtxtAgregarURL widget.
  FocusNode? etxtAgregarURLFocusNode;
  TextEditingController? etxtAgregarURLTextController;
  String? Function(BuildContext, String?)?
      etxtAgregarURLTextControllerValidator;
  String? _etxtAgregarURLTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^(https?|ftp):\\/\\/[^\\s\\/\$.?#].[^\\s]*\$').hasMatch(val)) {
      return 'Porfavor ingresa una URL valida';
    }
    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in btnRegistrar widget.
  List<CatLibrosRow>? outIDLibro;

  @override
  void initState(BuildContext context) {
    tituloSeccionModel = createModel(context, () => TituloSeccionModel());
    etxtAgregarURLTextControllerValidator =
        _etxtAgregarURLTextControllerValidator;
  }

  @override
  void dispose() {
    tituloSeccionModel.dispose();
    etxtAgregarURLFocusNode?.dispose();
    etxtAgregarURLTextController?.dispose();
  }
}
