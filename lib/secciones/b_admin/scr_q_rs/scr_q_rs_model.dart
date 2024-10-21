import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/elementos/componentes/campo/campo_widget.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'scr_q_rs_widget.dart' show ScrQRsWidget;
import 'package:flutter/material.dart';

class ScrQRsModel extends FlutterFlowModel<ScrQRsWidget> {
  ///  Local state fields for this page.

  List<CsvStruct> datos = [];
  void addToDatos(CsvStruct item) => datos.add(item);
  void removeFromDatos(CsvStruct item) => datos.remove(item);
  void removeAtIndexFromDatos(int index) => datos.removeAt(index);
  void insertAtIndexInDatos(int index, CsvStruct item) =>
      datos.insert(index, item);
  void updateDatosAtIndex(int index, Function(CsvStruct) updateFn) =>
      datos[index] = updateFn(datos[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel1;
  // State field(s) for cboLibros widget.
  String? cboLibrosValue;
  FormFieldController<String>? cboLibrosValueController;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadTextController;
  String? Function(BuildContext, String?)? txtCantidadTextControllerValidator;
  String? _txtCantidadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Porfavor ingrese una cantidad';
    }

    if (!RegExp('^[1-9]\\d*\$').hasMatch(val)) {
      return 'Solo puedes ingesar numeros';
    }
    return null;
  }

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  InvitacionesRow? outInvitacionesAgregadas2;
  Completer<List<VInvResumenRow>>? requestCompleter;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  InvitacionesRow? outInvitacionesAgregadas;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel2;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel1;
  // Model for cmpLibros.
  late CampoModel cmpLibrosModel1;
  // Model for cmpCantidad.
  late CampoModel cmpCantidadModel1;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel2;
  // Model for cmpLibros.
  late CampoModel cmpLibrosModel3;
  // Model for cmpCantidad.
  late CampoModel cmpCantidadModel3;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel3;
  // Model for cmpLibros.
  late CampoModel cmpLibrosModel5;
  // Model for cmpCantidad.
  late CampoModel cmpCantidadModel5;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel4;
  // Model for cmpLibros.
  late CampoModel cmpLibrosModel7;
  // Model for cmpCantidad.
  late CampoModel cmpCantidadModel7;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel = createModel(context, () => MenuModel());
    tituloPantallaModel1 = createModel(context, () => TituloPantallaModel());
    txtCantidadTextControllerValidator = _txtCantidadTextControllerValidator;
    tituloPantallaModel2 = createModel(context, () => TituloPantallaModel());
    tituloSeccionModel1 = createModel(context, () => TituloSeccionModel());
    cmpLibrosModel1 = createModel(context, () => CampoModel());
    cmpCantidadModel1 = createModel(context, () => CampoModel());
    tituloSeccionModel2 = createModel(context, () => TituloSeccionModel());
    cmpLibrosModel3 = createModel(context, () => CampoModel());
    cmpCantidadModel3 = createModel(context, () => CampoModel());
    tituloSeccionModel3 = createModel(context, () => TituloSeccionModel());
    cmpLibrosModel5 = createModel(context, () => CampoModel());
    cmpCantidadModel5 = createModel(context, () => CampoModel());
    tituloSeccionModel4 = createModel(context, () => TituloSeccionModel());
    cmpLibrosModel7 = createModel(context, () => CampoModel());
    cmpCantidadModel7 = createModel(context, () => CampoModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel.dispose();
    tituloPantallaModel1.dispose();
    txtCantidadFocusNode?.dispose();
    txtCantidadTextController?.dispose();

    tituloPantallaModel2.dispose();
    tituloSeccionModel1.dispose();
    cmpLibrosModel1.dispose();
    cmpCantidadModel1.dispose();
    tituloSeccionModel2.dispose();
    cmpLibrosModel3.dispose();
    cmpCantidadModel3.dispose();
    tituloSeccionModel3.dispose();
    cmpLibrosModel5.dispose();
    cmpCantidadModel5.dispose();
    tituloSeccionModel4.dispose();
    cmpLibrosModel7.dispose();
    cmpCantidadModel7.dispose();
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
