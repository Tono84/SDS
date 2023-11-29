import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'solicitud_d_s_widget.dart' show SolicitudDSWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SolicitudDSModel extends FlutterFlowModel<SolicitudDSWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for ddTipSoftware widget.
  String? ddTipSoftwareValue;
  FormFieldController<String>? ddTipSoftwareValueController;
  // State field(s) for ddTipoUso widget.
  String? ddTipoUsoValue;
  FormFieldController<String>? ddTipoUsoValueController;
  // State field(s) for cUsuarios widget.
  int? cUsuariosValue;
  // State field(s) for rb_servidor widget.
  FormFieldController<String>? rbServidorValueController;
  // State field(s) for rb_basedatos widget.
  FormFieldController<String>? rbBasedatosValueController;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get rbServidorValue => rbServidorValueController?.value;
  String? get rbBasedatosValue => rbBasedatosValueController?.value;
}
