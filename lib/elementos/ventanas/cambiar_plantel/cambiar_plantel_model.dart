import '/backend/supabase/supabase.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cambiar_plantel_widget.dart' show CambiarPlantelWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class CambiarPlantelModel extends FlutterFlowModel<CambiarPlantelWidget> {
  ///  Local state fields for this component.

  String? nomPlantel;

  String? idEscuela;

  String? idPlantel;

  ///  State fields for stateful widgets in this component.

  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel;
  Completer<List<CatPlantelesRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {
    tituloSeccionModel = createModel(context, () => TituloSeccionModel());
  }

  @override
  void dispose() {
    tituloSeccionModel.dispose();
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
