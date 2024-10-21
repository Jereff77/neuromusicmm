import '/backend/supabase/supabase.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'registro_escuelas_widget.dart' show RegistroEscuelasWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistroEscuelasModel extends FlutterFlowModel<RegistroEscuelasWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel1;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for txtNombreEscuela widget.
  FocusNode? txtNombreEscuelaFocusNode;
  TextEditingController? txtNombreEscuelaTextController;
  String? Function(BuildContext, String?)?
      txtNombreEscuelaTextControllerValidator;
  String? _txtNombreEscuelaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for txtContacto widget.
  FocusNode? txtContactoFocusNode;
  TextEditingController? txtContactoTextController;
  String? Function(BuildContext, String?)? txtContactoTextControllerValidator;
  String? _txtContactoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  final txtTelefonoMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  String? _txtTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for txtNotas widget.
  FocusNode? txtNotasFocusNode;
  TextEditingController? txtNotasTextController;
  String? Function(BuildContext, String?)? txtNotasTextControllerValidator;
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel2;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  Completer<List<CatEscuelasRow>>? requestCompleter;
  // State field(s) for EtxtNombreEscuela widget.
  FocusNode? etxtNombreEscuelaFocusNode;
  TextEditingController? etxtNombreEscuelaTextController;
  String? Function(BuildContext, String?)?
      etxtNombreEscuelaTextControllerValidator;
  // State field(s) for EtxtContacto widget.
  FocusNode? etxtContactoFocusNode;
  TextEditingController? etxtContactoTextController;
  String? Function(BuildContext, String?)? etxtContactoTextControllerValidator;
  // State field(s) for EtxtTelefono widget.
  FocusNode? etxtTelefonoFocusNode;
  TextEditingController? etxtTelefonoTextController;
  final etxtTelefonoMask = MaskTextInputFormatter(mask: '(###) ###-####');
  String? Function(BuildContext, String?)? etxtTelefonoTextControllerValidator;
  // State field(s) for EtxtNotas widget.
  FocusNode? etxtNotasFocusNode;
  TextEditingController? etxtNotasTextController;
  String? Function(BuildContext, String?)? etxtNotasTextControllerValidator;

  @override
  void initState(BuildContext context) {
    tituloSeccionModel1 = createModel(context, () => TituloSeccionModel());
    txtNombreEscuelaTextControllerValidator =
        _txtNombreEscuelaTextControllerValidator;
    txtContactoTextControllerValidator = _txtContactoTextControllerValidator;
    txtTelefonoTextControllerValidator = _txtTelefonoTextControllerValidator;
    tituloSeccionModel2 = createModel(context, () => TituloSeccionModel());
  }

  @override
  void dispose() {
    tituloSeccionModel1.dispose();
    txtNombreEscuelaFocusNode?.dispose();
    txtNombreEscuelaTextController?.dispose();

    txtContactoFocusNode?.dispose();
    txtContactoTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtNotasFocusNode?.dispose();
    txtNotasTextController?.dispose();

    tituloSeccionModel2.dispose();
    etxtNombreEscuelaFocusNode?.dispose();
    etxtNombreEscuelaTextController?.dispose();

    etxtContactoFocusNode?.dispose();
    etxtContactoTextController?.dispose();

    etxtTelefonoFocusNode?.dispose();
    etxtTelefonoTextController?.dispose();

    etxtNotasFocusNode?.dispose();
    etxtNotasTextController?.dispose();
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
