import '/elementos/componentes/campo_titulo/campo_titulo_widget.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_cel_widget.dart' show ScrCelWidget;
import 'package:flutter/material.dart';

class ScrCelModel extends FlutterFlowModel<ScrCelWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel1;
  // Model for campo_titulo component.
  late CampoTituloModel campoTituloModel1;
  // Model for campo_titulo component.
  late CampoTituloModel campoTituloModel2;
  // Model for Menu component.
  late MenuModel menuModel2;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel1 = createModel(context, () => MenuModel());
    campoTituloModel1 = createModel(context, () => CampoTituloModel());
    campoTituloModel2 = createModel(context, () => CampoTituloModel());
    menuModel2 = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel1.dispose();
    campoTituloModel1.dispose();
    campoTituloModel2.dispose();
    menuModel2.dispose();
  }
}
