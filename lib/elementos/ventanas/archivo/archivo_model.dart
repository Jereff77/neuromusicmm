import '/elementos/componentes/btn_upload/btn_upload_widget.dart';
import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'archivo_widget.dart' show ArchivoWidget;
import 'package:flutter/material.dart';

class ArchivoModel extends FlutterFlowModel<ArchivoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for btnUpload component.
  late BtnUploadModel btnUploadModel1;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Model for btnUpload component.
  late BtnUploadModel btnUploadModel2;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // Model for btnUpload component.
  late BtnUploadModel btnUploadModel3;
  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  // Model for btnUpload component.
  late BtnUploadModel btnUploadModel4;
  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  String? _txtTituloTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  String? _txtDescripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    tituloSeccionModel = createModel(context, () => TituloSeccionModel());
    btnUploadModel1 = createModel(context, () => BtnUploadModel());
    btnUploadModel2 = createModel(context, () => BtnUploadModel());
    btnUploadModel3 = createModel(context, () => BtnUploadModel());
    btnUploadModel4 = createModel(context, () => BtnUploadModel());
    txtTituloTextControllerValidator = _txtTituloTextControllerValidator;
    txtDescripcionTextControllerValidator =
        _txtDescripcionTextControllerValidator;
  }

  @override
  void dispose() {
    tituloSeccionModel.dispose();
    btnUploadModel1.dispose();
    btnUploadModel2.dispose();
    btnUploadModel3.dispose();
    btnUploadModel4.dispose();
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();
  }
}
