import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/componentes/elementos/menu_lateral/menu_lateral_widget.dart';
import 'app_videoplayer_widget.dart' show AppVideoplayerWidget;
import 'package:flutter/material.dart';

class AppVideoplayerModel extends FlutterFlowModel<AppVideoplayerWidget> {
  ///  Local state fields for this page.

  String? idLibro;

  int? index;

  String? songSelected;

  int? songIndex;

  String nameSong = ' ';

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
