import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'hi_widget.dart' show HiWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HiModel extends FlutterFlowModel<HiWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for txtMarca widget.
  FocusNode? txtMarcaFocusNode;
  TextEditingController? txtMarcaController;
  String? Function(BuildContext, String?)? txtMarcaControllerValidator;
  // State field(s) for txtCompu widget.
  FocusNode? txtCompuFocusNode;
  TextEditingController? txtCompuController;
  String? Function(BuildContext, String?)? txtCompuControllerValidator;
  // State field(s) for txtTipoS widget.
  FocusNode? txtTipoSFocusNode;
  TextEditingController? txtTipoSController;
  String? Function(BuildContext, String?)? txtTipoSControllerValidator;
  // State field(s) for txtDescrip widget.
  FocusNode? txtDescripFocusNode;
  TextEditingController? txtDescripController;
  String? Function(BuildContext, String?)? txtDescripControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtMarcaFocusNode?.dispose();
    txtMarcaController?.dispose();

    txtCompuFocusNode?.dispose();
    txtCompuController?.dispose();

    txtTipoSFocusNode?.dispose();
    txtTipoSController?.dispose();

    txtDescripFocusNode?.dispose();
    txtDescripController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
