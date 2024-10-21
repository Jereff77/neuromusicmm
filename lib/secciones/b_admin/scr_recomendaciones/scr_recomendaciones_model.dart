import '/backend/supabase/supabase.dart';
import '/elementos/componentes/campo/campo_widget.dart';
import '/elementos/componentes/header/header_widget.dart';
import '/elementos/componentes/menu/menu_widget.dart';
import '/elementos/componentes/titulo_pantalla/titulo_pantalla_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:async';
import 'scr_recomendaciones_widget.dart' show ScrRecomendacionesWidget;
import 'package:flutter/material.dart';

class ScrRecomendacionesModel
    extends FlutterFlowModel<ScrRecomendacionesWidget> {
  ///  Local state fields for this page.

  int? index;

  String? idLibro;

  String? urlPortada;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for Menu component.
  late MenuModel menuModel;
  // Model for tituloPantalla component.
  late TituloPantallaModel tituloPantallaModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  String? _txtTituloTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp('^[a-zA-Z0-9\\s\\-_\',.!?()]+\$').hasMatch(val)) {
      return 'Formato no valido';
    }
    return null;
  }

  // State field(s) for ddLibros widget.
  String? ddLibrosValue;
  FormFieldController<String>? ddLibrosValueController;
  // State field(s) for txtDesc widget.
  FocusNode? txtDescFocusNode;
  TextEditingController? txtDescTextController;
  String? Function(BuildContext, String?)? txtDescTextControllerValidator;
  String? _txtDescTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp('^[a-zA-Z0-9\\s\\-_\',.!?()]+\$').hasMatch(val)) {
      return 'Caracteres invalidos';
    }
    return null;
  }

  // State field(s) for txtURL widget.
  FocusNode? txtURLFocusNode;
  TextEditingController? txtURLTextController;
  String? Function(BuildContext, String?)? txtURLTextControllerValidator;
  String? _txtURLTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (!RegExp(
            '^(http|https):\\/\\/[\\w\\-_]+(\\.[\\w\\-_]+)+([\\w\\-\\.,@?^=%&:/~\\+#]*[\\w\\-\\@?^=%&/~\\+#])?\$')
        .hasMatch(val)) {
      return 'URL invalida';
    }
    return null;
  }

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  Completer<List<RecomendacionesRow>>? requestCompleter;
  // Model for cmpOrden.
  late CampoModel cmpOrdenModel1;
  // Model for cmpVideo.
  late CampoModel cmpVideoModel;
  // Model for cmpTitulo.
  late CampoModel cmpTituloModel1;
  // Model for cmpDescripcion.
  late CampoModel cmpDescripcionModel1;
  // Model for cmpBorrar.
  late CampoModel cmpBorrarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    menuModel = createModel(context, () => MenuModel());
    tituloPantallaModel = createModel(context, () => TituloPantallaModel());
    txtTituloTextControllerValidator = _txtTituloTextControllerValidator;
    txtDescTextControllerValidator = _txtDescTextControllerValidator;
    txtURLTextControllerValidator = _txtURLTextControllerValidator;
    cmpOrdenModel1 = createModel(context, () => CampoModel());
    cmpVideoModel = createModel(context, () => CampoModel());
    cmpTituloModel1 = createModel(context, () => CampoModel());
    cmpDescripcionModel1 = createModel(context, () => CampoModel());
    cmpBorrarModel = createModel(context, () => CampoModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    menuModel.dispose();
    tituloPantallaModel.dispose();
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();

    txtDescFocusNode?.dispose();
    txtDescTextController?.dispose();

    txtURLFocusNode?.dispose();
    txtURLTextController?.dispose();

    cmpOrdenModel1.dispose();
    cmpVideoModel.dispose();
    cmpTituloModel1.dispose();
    cmpDescripcionModel1.dispose();
    cmpBorrarModel.dispose();
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
