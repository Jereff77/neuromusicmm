import '/elementos/componentes/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr404_widget.dart' show Scr404Widget;
import 'package:flutter/material.dart';

class Scr404Model extends FlutterFlowModel<Scr404Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
  }
}
