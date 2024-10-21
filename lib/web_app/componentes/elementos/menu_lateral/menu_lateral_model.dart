import '/flutter_flow/flutter_flow_util.dart';
import '/web_app/componentes/elementos/btn_app_menu/btn_app_menu_widget.dart';
import 'menu_lateral_widget.dart' show MenuLateralWidget;
import 'package:flutter/material.dart';

class MenuLateralModel extends FlutterFlowModel<MenuLateralWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for btnAppHome.
  late BtnAppMenuModel btnAppHomeModel;
  // Model for btnAppProfile.
  late BtnAppMenuModel btnAppProfileModel;
  // Model for btnAppQR.
  late BtnAppMenuModel btnAppQRModel;
  // Model for btnAppSoporte.
  late BtnAppMenuModel btnAppSoporteModel;

  @override
  void initState(BuildContext context) {
    btnAppHomeModel = createModel(context, () => BtnAppMenuModel());
    btnAppProfileModel = createModel(context, () => BtnAppMenuModel());
    btnAppQRModel = createModel(context, () => BtnAppMenuModel());
    btnAppSoporteModel = createModel(context, () => BtnAppMenuModel());
  }

  @override
  void dispose() {
    btnAppHomeModel.dispose();
    btnAppProfileModel.dispose();
    btnAppQRModel.dispose();
    btnAppSoporteModel.dispose();
  }
}
