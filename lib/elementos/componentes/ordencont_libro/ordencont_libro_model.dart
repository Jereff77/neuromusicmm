import '/flutter_flow/flutter_flow_util.dart';
import 'ordencont_libro_widget.dart' show OrdencontLibroWidget;
import 'package:flutter/material.dart';

class OrdencontLibroModel extends FlutterFlowModel<OrdencontLibroWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNum widget.
  FocusNode? txtNumFocusNode;
  TextEditingController? txtNumTextController;
  String? Function(BuildContext, String?)? txtNumTextControllerValidator;
  String? _txtNumTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[0-9]{1,2}\$').hasMatch(val)) {
      return 'nuemero entre 0 y 99';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    txtNumTextControllerValidator = _txtNumTextControllerValidator;
  }

  @override
  void dispose() {
    txtNumFocusNode?.dispose();
    txtNumTextController?.dispose();
  }
}
