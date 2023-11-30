import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestsRecord extends FirestoreRecord {
  RequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "so" field.
  String? _so;
  String get so => _so ?? '';
  bool hasSo() => _so != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  bool hasMarca() => _marca != null;

  // "tipoComputadora" field.
  String? _tipoComputadora;
  String get tipoComputadora => _tipoComputadora ?? '';
  bool hasTipoComputadora() => _tipoComputadora != null;

  // "tipoSoporte" field.
  String? _tipoSoporte;
  String get tipoSoporte => _tipoSoporte ?? '';
  bool hasTipoSoporte() => _tipoSoporte != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "tipoRequest" field.
  String? _tipoRequest;
  String get tipoRequest => _tipoRequest ?? '';
  bool hasTipoRequest() => _tipoRequest != null;

  // "tipoCliente" field.
  String? _tipoCliente;
  String get tipoCliente => _tipoCliente ?? '';
  bool hasTipoCliente() => _tipoCliente != null;

  // "numeroEquipos" field.
  int? _numeroEquipos;
  int get numeroEquipos => _numeroEquipos ?? 0;
  bool hasNumeroEquipos() => _numeroEquipos != null;

  // "tipoEdificacion" field.
  String? _tipoEdificacion;
  String get tipoEdificacion => _tipoEdificacion ?? '';
  bool hasTipoEdificacion() => _tipoEdificacion != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "tipoUso" field.
  String? _tipoUso;
  String get tipoUso => _tipoUso ?? '';
  bool hasTipoUso() => _tipoUso != null;

  // "cantidadUsuarios" field.
  int? _cantidadUsuarios;
  int get cantidadUsuarios => _cantidadUsuarios ?? 0;
  bool hasCantidadUsuarios() => _cantidadUsuarios != null;

  // "tipoSoftware" field.
  String? _tipoSoftware;
  String get tipoSoftware => _tipoSoftware ?? '';
  bool hasTipoSoftware() => _tipoSoftware != null;

  // "base_datos" field.
  String? _baseDatos;
  String get baseDatos => _baseDatos ?? '';
  bool hasBaseDatos() => _baseDatos != null;

  // "servidor" field.
  String? _servidor;
  String get servidor => _servidor ?? '';
  bool hasServidor() => _servidor != null;

  // "tipoConsultoria" field.
  String? _tipoConsultoria;
  String get tipoConsultoria => _tipoConsultoria ?? '';
  bool hasTipoConsultoria() => _tipoConsultoria != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "diaRecoleccion" field.
  DateTime? _diaRecoleccion;
  DateTime? get diaRecoleccion => _diaRecoleccion;
  bool hasDiaRecoleccion() => _diaRecoleccion != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _so = snapshotData['so'] as String?;
    _marca = snapshotData['marca'] as String?;
    _tipoComputadora = snapshotData['tipoComputadora'] as String?;
    _tipoSoporte = snapshotData['tipoSoporte'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _tipoRequest = snapshotData['tipoRequest'] as String?;
    _tipoCliente = snapshotData['tipoCliente'] as String?;
    _numeroEquipos = castToType<int>(snapshotData['numeroEquipos']);
    _tipoEdificacion = snapshotData['tipoEdificacion'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _tipoUso = snapshotData['tipoUso'] as String?;
    _cantidadUsuarios = castToType<int>(snapshotData['cantidadUsuarios']);
    _tipoSoftware = snapshotData['tipoSoftware'] as String?;
    _baseDatos = snapshotData['base_datos'] as String?;
    _servidor = snapshotData['servidor'] as String?;
    _tipoConsultoria = snapshotData['tipoConsultoria'] as String?;
    _estado = snapshotData['estado'] as String?;
    _diaRecoleccion = snapshotData['diaRecoleccion'] as DateTime?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Requests');

  static Stream<RequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestsRecord.fromSnapshot(s));

  static Future<RequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestsRecord.fromSnapshot(s));

  static RequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestsRecordData({
  String? so,
  String? marca,
  String? tipoComputadora,
  String? tipoSoporte,
  String? descripcion,
  String? tipoRequest,
  String? tipoCliente,
  int? numeroEquipos,
  String? tipoEdificacion,
  DocumentReference? usuario,
  String? tipoUso,
  int? cantidadUsuarios,
  String? tipoSoftware,
  String? baseDatos,
  String? servidor,
  String? tipoConsultoria,
  String? estado,
  DateTime? diaRecoleccion,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'so': so,
      'marca': marca,
      'tipoComputadora': tipoComputadora,
      'tipoSoporte': tipoSoporte,
      'descripcion': descripcion,
      'tipoRequest': tipoRequest,
      'tipoCliente': tipoCliente,
      'numeroEquipos': numeroEquipos,
      'tipoEdificacion': tipoEdificacion,
      'usuario': usuario,
      'tipoUso': tipoUso,
      'cantidadUsuarios': cantidadUsuarios,
      'tipoSoftware': tipoSoftware,
      'base_datos': baseDatos,
      'servidor': servidor,
      'tipoConsultoria': tipoConsultoria,
      'estado': estado,
      'diaRecoleccion': diaRecoleccion,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestsRecordDocumentEquality implements Equality<RequestsRecord> {
  const RequestsRecordDocumentEquality();

  @override
  bool equals(RequestsRecord? e1, RequestsRecord? e2) {
    return e1?.so == e2?.so &&
        e1?.marca == e2?.marca &&
        e1?.tipoComputadora == e2?.tipoComputadora &&
        e1?.tipoSoporte == e2?.tipoSoporte &&
        e1?.descripcion == e2?.descripcion &&
        e1?.tipoRequest == e2?.tipoRequest &&
        e1?.tipoCliente == e2?.tipoCliente &&
        e1?.numeroEquipos == e2?.numeroEquipos &&
        e1?.tipoEdificacion == e2?.tipoEdificacion &&
        e1?.usuario == e2?.usuario &&
        e1?.tipoUso == e2?.tipoUso &&
        e1?.cantidadUsuarios == e2?.cantidadUsuarios &&
        e1?.tipoSoftware == e2?.tipoSoftware &&
        e1?.baseDatos == e2?.baseDatos &&
        e1?.servidor == e2?.servidor &&
        e1?.tipoConsultoria == e2?.tipoConsultoria &&
        e1?.estado == e2?.estado &&
        e1?.diaRecoleccion == e2?.diaRecoleccion &&
        e1?.email == e2?.email;
  }

  @override
  int hash(RequestsRecord? e) => const ListEquality().hash([
        e?.so,
        e?.marca,
        e?.tipoComputadora,
        e?.tipoSoporte,
        e?.descripcion,
        e?.tipoRequest,
        e?.tipoCliente,
        e?.numeroEquipos,
        e?.tipoEdificacion,
        e?.usuario,
        e?.tipoUso,
        e?.cantidadUsuarios,
        e?.tipoSoftware,
        e?.baseDatos,
        e?.servidor,
        e?.tipoConsultoria,
        e?.estado,
        e?.diaRecoleccion,
        e?.email
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestsRecord;
}
