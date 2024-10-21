import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_multipantalla_widget.dart' show ScrMultipantallaWidget;
import 'package:flutter/material.dart';

class ScrMultipantallaModel extends FlutterFlowModel<ScrMultipantallaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel.dispose();
  }
}
