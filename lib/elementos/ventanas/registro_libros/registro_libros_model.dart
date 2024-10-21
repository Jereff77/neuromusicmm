import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'registro_libros_widget.dart' show RegistroLibrosWidget;
import 'package:flutter/material.dart';

class RegistroLibrosModel extends FlutterFlowModel<RegistroLibrosWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for tituloSeccion component.
  late TituloSeccionModel tituloSeccionModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtTitulo widget.
  FocusNode? txtTituloFocusNode;
  TextEditingController? txtTituloTextController;
  String? Function(BuildContext, String?)? txtTituloTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    tituloSeccionModel = createModel(context, () => TituloSeccionModel());
  }

  @override
  void dispose() {
    tituloSeccionModel.dispose();
    txtTituloFocusNode?.dispose();
    txtTituloTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();
  }
}
