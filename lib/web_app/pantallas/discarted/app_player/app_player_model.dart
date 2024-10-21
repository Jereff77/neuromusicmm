import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/componentes/elementos/menu_lateral/menu_lateral_widget.dart';
import 'app_player_widget.dart' show AppPlayerWidget;
import 'package:flutter/material.dart';

class AppPlayerModel extends FlutterFlowModel<AppPlayerWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MenuLateral component.
  late MenuLateralModel menuLateralModel;

  @override
  void initState(BuildContext context) {
    menuLateralModel = createModel(context, () => MenuLateralModel());
  }

  @override
  void dispose() {
    menuLateralModel.dispose();
  }
}
