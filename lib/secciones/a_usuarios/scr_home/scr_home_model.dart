import '/backend/supabase/supabase.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'scr_home_widget.dart' show ScrHomeWidget;
import 'package:flutter/material.dart';

class ScrHomeModel extends FlutterFlowModel<ScrHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel1;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel2;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel;
  Completer<List<VLibrosUsuarioRow>>? requestCompleter;

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

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
