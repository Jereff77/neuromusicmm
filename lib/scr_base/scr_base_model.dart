import '/flutter_flow/flutter_flow_util.dart';
import 'scr_base_widget.dart' show ScrBaseWidget;
import 'package:flutter/material.dart';

class ScrBaseModel extends FlutterFlowModel<ScrBaseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtUsuario widget.
  FocusNode? txtUsuarioFocusNode;
  TextEditingController? txtUsuarioTextController;
  String? Function(BuildContext, String?)? txtUsuarioTextControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordTextController;
  String? Function(BuildContext, String?)? txtPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtUsuarioFocusNode?.dispose();
    txtUsuarioTextController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordTextController?.dispose();
  }
}
