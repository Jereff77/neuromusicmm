import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'app_add_q_r_widget.dart' show AppAddQRWidget;
import 'package:flutter/material.dart';

class AppAddQRModel extends FlutterFlowModel<AppAddQRWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  var outQR = '';
  // Stores action output result for [Backend Call - Query Rows] action in appAddQR widget.
  List<InvitacionesRow>? outInvitacion;
  // Stores action output result for [Backend Call - Query Rows] action in appAddQR widget.
  List<CatLibrosUsuariosRow>? outLibroExistenteQR;
  // State field(s) for txtCodigo widget.
  FocusNode? txtCodigoFocusNode;
  TextEditingController? txtCodigoTextController;
  String? Function(BuildContext, String?)? txtCodigoTextControllerValidator;
  String? _txtCodigoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 15) {
      return 'El codigo no es valido';
    }
    if (val.length > 15) {
      return 'El codigo no es valido';
    }
    if (!RegExp('^[A-Za-z0-9]{15}\$').hasMatch(val)) {
      return 'El codigo no es valido';
    }
    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<InvitacionesRow>? outInvitacionManual;
  // Stores action output result for [Backend Call - Query Rows] action in IconButton widget.
  List<CatLibrosUsuariosRow>? outLibroExistente;

  @override
  void initState(BuildContext context) {
    txtCodigoTextControllerValidator = _txtCodigoTextControllerValidator;
  }

  @override
  void dispose() {
    txtCodigoFocusNode?.dispose();
    txtCodigoTextController?.dispose();
  }
}
