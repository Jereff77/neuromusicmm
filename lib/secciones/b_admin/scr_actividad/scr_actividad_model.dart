import '/elementos/componentes/campo_titulo/campo_titulo_widget.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_actividad_widget.dart' show ScrActividadWidget;
import 'package:flutter/material.dart';

class ScrActividadModel extends FlutterFlowModel<ScrActividadWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel;
  // Model for campo_titulo component.
  late CampoTituloModel campoTituloModel1;
  // Model for campo_titulo component.
  late CampoTituloModel campoTituloModel2;
  // Model for campo_titulo component.
  late CampoTituloModel campoTituloModel3;
  // Model for campo_titulo component.
  late CampoTituloModel campoTituloModel4;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel = createModel(context, () => MenuModel());
    tituloPantallaModel = createModel(context, () => TituloPantallaModel());
    campoTituloModel1 = createModel(context, () => CampoTituloModel());
    campoTituloModel2 = createModel(context, () => CampoTituloModel());
    campoTituloModel3 = createModel(context, () => CampoTituloModel());
    campoTituloModel4 = createModel(context, () => CampoTituloModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel.dispose();
    tituloPantallaModel.dispose();
    campoTituloModel1.dispose();
    campoTituloModel2.dispose();
    campoTituloModel3.dispose();
    campoTituloModel4.dispose();
  }
}
