import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/elementos/ventanas/re_order/re_order_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'scr_libros_widget.dart' show ScrLibrosWidget;
import 'package:flutter/material.dart';

class ScrLibrosModel extends FlutterFlowModel<ScrLibrosWidget> {
  ///  Local state fields for this page.

  int? indexLibro;

  String? idLibro;

  List<ListItemsStruct> oldList = [];
  void addToOldList(ListItemsStruct item) => oldList.add(item);
  void removeFromOldList(ListItemsStruct item) => oldList.remove(item);
  void removeAtIndexFromOldList(int index) => oldList.removeAt(index);
  void insertAtIndexInOldList(int index, ListItemsStruct item) =>
      oldList.insert(index, item);
  void updateOldListAtIndex(int index, Function(ListItemsStruct) updateFn) =>
      oldList[index] = updateFn(oldList[index]);

  bool reOrdenando = false;

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel1;
  Completer<List<VCatLibrosContenidoRow>>? requestCompleter2;
  Completer<List<ArchivosRow>>? requestCompleter1;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel2;
  // Stores action output result for [Custom Action - reorderItems] action in contVideo widget.
  List<ListItemsStruct>? listaNueva;
  // Model for reOrder component.
  late ReOrderModel reOrderModel;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel3;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel = createModel(context, () => MenuModel());
    tituloPantallaModel = createModel(context, () => TituloPantallaModel());
    tituloSeccionModel1 = createModel(context, () => TituloSeccionModel());
    tituloSeccionModel2 = createModel(context, () => TituloSeccionModel());
    reOrderModel = createModel(context, () => ReOrderModel());
    tituloSeccionModel3 = createModel(context, () => TituloSeccionModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel.dispose();
    tituloPantallaModel.dispose();
    tituloSeccionModel1.dispose();
    tituloSeccionModel2.dispose();
    reOrderModel.dispose();
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
}
