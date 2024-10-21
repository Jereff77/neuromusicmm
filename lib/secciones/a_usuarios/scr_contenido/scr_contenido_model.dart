import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_contenido_widget.dart' show ScrContenidoWidget;
import 'package:flutter/material.dart';

class ScrContenidoModel extends FlutterFlowModel<ScrContenidoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel1;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel2;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel;

  @override
  void initState(BuildContext context) {
    menuModel1 = createModel(context, () => MenuModel());
    headerModel = createModel(context, () => HeaderModel());
    menuModel2 = createModel(context, () => MenuModel());
    tituloPantallaModel = createModel(context, () => TituloPantallaModel());
  }

  @override
  void dispose() {
    menuModel1.dispose();
    headerModel.dispose();
    menuModel2.dispose();
    tituloPantallaModel.dispose();
  }
}
