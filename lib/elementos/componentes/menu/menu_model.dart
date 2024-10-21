import '/elementos/componentes/mnu_opcion/mnu_opcion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for mnuLibros.
  late MnuOpcionModel mnuLibrosModel1;
  // Model for mnuPassword.
  late MnuOpcionModel mnuPasswordModel;
  // Model for mnuUsuarios.
  late MnuOpcionModel mnuUsuariosModel;
  // Model for mnuEscuelas.
  late MnuOpcionModel mnuEscuelasModel;
  // Model for mnuArchivos.
  late MnuOpcionModel mnuArchivosModel;
  // Model for mnuLibros.
  late MnuOpcionModel mnuLibrosModel2;
  // Model for mnuPadres.
  late MnuOpcionModel mnuPadresModel;
  // Model for mnuQRs.
  late MnuOpcionModel mnuQRsModel;
  // Model for mnuVidYoutube.
  late MnuOpcionModel mnuVidYoutubeModel;
  // Model for multipantalla.
  late MnuOpcionModel multipantallaModel1;
  // Model for multipantalla.
  late MnuOpcionModel multipantallaModel2;
  // Model for CerrarSesion.
  late MnuOpcionModel cerrarSesionModel;

  @override
  void initState(BuildContext context) {
    mnuLibrosModel1 = createModel(context, () => MnuOpcionModel());
    mnuPasswordModel = createModel(context, () => MnuOpcionModel());
    mnuUsuariosModel = createModel(context, () => MnuOpcionModel());
    mnuEscuelasModel = createModel(context, () => MnuOpcionModel());
    mnuArchivosModel = createModel(context, () => MnuOpcionModel());
    mnuLibrosModel2 = createModel(context, () => MnuOpcionModel());
    mnuPadresModel = createModel(context, () => MnuOpcionModel());
    mnuQRsModel = createModel(context, () => MnuOpcionModel());
    mnuVidYoutubeModel = createModel(context, () => MnuOpcionModel());
    multipantallaModel1 = createModel(context, () => MnuOpcionModel());
    multipantallaModel2 = createModel(context, () => MnuOpcionModel());
    cerrarSesionModel = createModel(context, () => MnuOpcionModel());
  }

  @override
  void dispose() {
    mnuLibrosModel1.dispose();
    mnuPasswordModel.dispose();
    mnuUsuariosModel.dispose();
    mnuEscuelasModel.dispose();
    mnuArchivosModel.dispose();
    mnuLibrosModel2.dispose();
    mnuPadresModel.dispose();
    mnuQRsModel.dispose();
    mnuVidYoutubeModel.dispose();
    multipantallaModel1.dispose();
    multipantallaModel2.dispose();
    cerrarSesionModel.dispose();
  }
}
