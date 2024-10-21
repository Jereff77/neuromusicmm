import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/componentes/elementos/menu_lateral/menu_lateral_widget.dart';
import 'app_books_widget.dart' show AppBooksWidget;
import 'package:flutter/material.dart';

class AppBooksModel extends FlutterFlowModel<AppBooksWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    menuLateralModel.dispose();
  }
}
