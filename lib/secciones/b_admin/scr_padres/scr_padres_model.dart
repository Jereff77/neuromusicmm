import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_padres_widget.dart' show ScrPadresWidget;
import 'package:flutter/material.dart';

class ScrPadresModel extends FlutterFlowModel<ScrPadresWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel = createModel(context, () => MenuModel());
    tituloPantallaModel = createModel(context, () => TituloPantallaModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel.dispose();
    tituloPantallaModel.dispose();
  }
}
