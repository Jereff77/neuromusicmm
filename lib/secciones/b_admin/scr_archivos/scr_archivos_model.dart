import '/backend/supabase/supabase.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'scr_archivos_widget.dart' show ScrArchivosWidget;
import 'package:flutter/material.dart';

class ScrArchivosModel extends FlutterFlowModel<ScrArchivosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel1;
  Completer<List<ArchivosRow>>? requestCompleter2;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel2;
  Completer<List<ArchivosRow>>? requestCompleter1;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel3;
  Completer<List<ArchivosRow>>? requestCompleter3;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel = createModel(context, () => MenuModel());
    tituloPantallaModel = createModel(context, () => TituloPantallaModel());
    tituloSeccionModel1 = createModel(context, () => TituloSeccionModel());
    tituloSeccionModel2 = createModel(context, () => TituloSeccionModel());
    tituloSeccionModel3 = createModel(context, () => TituloSeccionModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel.dispose();
    tituloPantallaModel.dispose();
    tituloSeccionModel1.dispose();
    tituloSeccionModel2.dispose();
    tituloSeccionModel3.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
