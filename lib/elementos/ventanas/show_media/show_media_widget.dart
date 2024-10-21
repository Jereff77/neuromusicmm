import '/elementos/componentes/titulo_seccion/titulo_seccion_widget.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'show_media_model.dart';
export 'show_media_model.dart';

class ShowMediaWidget extends StatefulWidget {
  const ShowMediaWidget({
    super.key,
    required this.tipo,
    this.titulo,
    bool? completo,
    String? urlFile,
  })  : completo = completo ?? false,
        urlFile = urlFile ?? '-';

  final String? tipo;
  final String? titulo;
  final bool completo;
  final String urlFile;

  @override
  State<ShowMediaWidget> createState() => _ShowMediaWidgetState();
}

class _ShowMediaWidgetState extends State<ShowMediaWidget> {
  late ShowMediaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowMediaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (widget.tipo == 'Video')
          Expanded(
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Material(
                color: Colors.transparent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Container(
                  width: 779.0,
                  height: 478.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.tituloSeccionModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: const TituloSeccionWidget(
                          texto: 'Video',
                          btnCerrar: true,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: 779.0,
                            height: 200.0,
                            decoration: const BoxDecoration(),
                            child: FlutterFlowWebView(
                              content:
                                  '<!DOCTYPE html><html lang=\"es\"><head>    <meta charset=\"UTF-8\">    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">    <title>Reproductor de Video</title>    <style>        body {            display: flex;            justify-content: center;            align-items: center;            height: 100vh;            margin: 0;            background-color: #f0f0f0;        }        video {            width: 80%;            max-width: 90%;            height: auto;        }    </style></head><body>    <video controls controlsList=\"nodownload\" src=\"${widget.urlFile}\">        Tu navegador no soporta el elemento de video.    </video></body></html>',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              verticalScroll: false,
                              horizontalScroll: false,
                              html: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        if (widget.tipo == 'Musica')
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                width: 779.0,
                height: 135.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.tituloSeccionModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: const TituloSeccionWidget(
                        texto: 'Musica',
                        btnCerrar: true,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FlutterFlowWebView(
                            content:
                                '<!DOCTYPE html> <html lang=\"es\"> <head>   <meta charset=\"UTF-8\">   <title>Reproductor de audio</title> </head> <body>   <audio controls download=\"no\">     <source src=\"${valueOrDefault<String>(
                              widget.urlFile,
                              '-',
                            )}\" type=\"audio/mpeg\">     Tu navegador no soporta audio.   </audio> </body> </html>',
                            height: 80.0,
                            verticalScroll: false,
                            horizontalScroll: false,
                            html: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        if (widget.tipo == 'PDF')
          Expanded(
            child: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Material(
                color: Colors.transparent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  constraints: BoxConstraints(
                    maxWidth: widget.completo
                        ? MediaQuery.sizeOf(context).width
                        : 440.0,
                    maxHeight: widget.completo
                        ? MediaQuery.sizeOf(context).height
                        : 550.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.tituloSeccionModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: const TituloSeccionWidget(
                          texto: 'PDF',
                          btnCerrar: true,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: FlutterFlowPdfViewer(
                              networkPath: widget.urlFile,
                              height: 300.0,
                              horizontalScroll: true,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
