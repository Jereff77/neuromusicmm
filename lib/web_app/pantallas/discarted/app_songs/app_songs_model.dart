import '/elementos/componentes/campo/campo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/componentes/elementos/menu_lateral/menu_lateral_widget.dart';
import 'app_songs_widget.dart' show AppSongsWidget;
import 'package:flutter/material.dart';

class AppSongsModel extends FlutterFlowModel<AppSongsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for campo component.
  late CampoModel campoModel;
  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  @override
  void initState(BuildContext context) {
    campoModel = createModel(context, () => CampoModel());
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    campoModel.dispose();
    menuLateralModel.dispose();
  }
}
