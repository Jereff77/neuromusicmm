import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'show_media_widget.dart' show ShowMediaWidget;
import 'package:flutter/material.dart';

class ShowMediaModel extends FlutterFlowModel<ShowMediaWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel1;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel2;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel3;

  @override
  void initState(BuildContext context) {
    tituloSeccionModel1 = createModel(context, () => TituloSeccionModel());
    tituloSeccionModel2 = createModel(context, () => TituloSeccionModel());
    tituloSeccionModel3 = createModel(context, () => TituloSeccionModel());
  }

  @override
  void dispose() {
    tituloSeccionModel1.dispose();
    tituloSeccionModel2.dispose();
    tituloSeccionModel3.dispose();
  }
}
