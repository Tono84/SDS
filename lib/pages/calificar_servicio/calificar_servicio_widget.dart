import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calificar_servicio_model.dart';
export 'calificar_servicio_model.dart';

class CalificarServicioWidget extends StatefulWidget {
  const CalificarServicioWidget({Key? key}) : super(key: key);

  @override
  _CalificarServicioWidgetState createState() =>
      _CalificarServicioWidgetState();
}

class _CalificarServicioWidgetState extends State<CalificarServicioWidget> {
  late CalificarServicioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalificarServicioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryDark,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Calificar Servicio',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Urbanist',
                        fontSize: 25.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(21.0, 21.0, 21.0, 21.0),
                  child: Text(
                    'En la escala del 1 al 5, donde 1 se refiere a insatisfecho \ny 5 a satisfecho, responda las siguientes preguntas: \n',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Urbanist',
                          fontSize: 15.0,
                        ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Text(
                    '¿Cómo califica la calidad del servicio?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  activeColor: Color(0xFF39D2C0),
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  min: 1.0,
                  max: 5.0,
                  value: _model.sliderValue1 ??= 1.0,
                  label: _model.sliderValue1.toString(),
                  divisions: 4,
                  onChanged: (newValue) {
                    newValue = double.parse(newValue.toStringAsFixed(6));
                    setState(() => _model.sliderValue1 = newValue);
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                    child: Text(
                      '¿Cumplió el servicio con sus expectativas iniciales?',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  activeColor: Color(0xFF39D2C0),
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  min: 1.0,
                  max: 5.0,
                  value: _model.sliderValue2 ??= 1.0,
                  label: _model.sliderValue2.toString(),
                  divisions: 4,
                  onChanged: (newValue) {
                    newValue = double.parse(newValue.toStringAsFixed(6));
                    setState(() => _model.sliderValue2 = newValue);
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¿El costo del servicio fue razonable\n en comparación con la calidad recibida?',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  activeColor: Color(0xFF39D2C0),
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  min: 1.0,
                  max: 5.0,
                  value: _model.sliderValue3 ??= 1.0,
                  label: _model.sliderValue3.toString(),
                  divisions: 4,
                  onChanged: (newValue) {
                    newValue = double.parse(newValue.toStringAsFixed(6));
                    setState(() => _model.sliderValue3 = newValue);
                  },
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
                  child: Text(
                    '¿Recomendaría este servicio a otras personas?',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Slider(
                  activeColor: Color(0xFF39D2C0),
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  min: 1.0,
                  max: 5.0,
                  value: _model.sliderValue4 ??= 1.0,
                  label: _model.sliderValue4.toString(),
                  divisions: 4,
                  onChanged: (newValue) {
                    newValue = double.parse(newValue.toStringAsFixed(6));
                    setState(() => _model.sliderValue4 = newValue);
                  },
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      var confirmDialogResponse = await showDialog<bool>(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('¡Gracias por su tiempo!'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(
                                        alertDialogContext, false),
                                    child: Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext, true),
                                    child: Text('Confirm'),
                                  ),
                                ],
                              );
                            },
                          ) ??
                          false;

                      context.pushNamed('homePage');
                    },
                    text: 'Terminar',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF39D2C0),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Urbanist',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
