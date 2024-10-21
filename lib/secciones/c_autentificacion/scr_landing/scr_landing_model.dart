import '/elementos/componentes/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scr_landing_widget.dart' show ScrLandingWidget;
import 'package:flutter/material.dart';

class ScrLandingModel extends FlutterFlowModel<ScrLandingWidget> {
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
