import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RatingsRecord extends FirestoreRecord {
  RatingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "calidad" field.
  int? _calidad;
  int get calidad => _calidad ?? 0;
  bool hasCalidad() => _calidad != null;

  // "recomendaciones" field.
  int? _recomendaciones;
  int get recomendaciones => _recomendaciones ?? 0;
  bool hasRecomendaciones() => _recomendaciones != null;

  // "costo" field.
  int? _costo;
  int get costo => _costo ?? 0;
  bool hasCosto() => _costo != null;

  // "expectactiva" field.
  int? _expectactiva;
  int get expectactiva => _expectactiva ?? 0;
  bool hasExpectactiva() => _expectactiva != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _calidad = castToType<int>(snapshotData['calidad']);
    _recomendaciones = castToType<int>(snapshotData['recomendaciones']);
    _costo = castToType<int>(snapshotData['costo']);
    _expectactiva = castToType<int>(snapshotData['expectactiva']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ratings');

  static Stream<RatingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RatingsRecord.fromSnapshot(s));

  static Future<RatingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RatingsRecord.fromSnapshot(s));

  static RatingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RatingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RatingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RatingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RatingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RatingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRatingsRecordData({
  DocumentReference? usuario,
  int? calidad,
  int? recomendaciones,
  int? costo,
  int? expectactiva,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'calidad': calidad,
      'recomendaciones': recomendaciones,
      'costo': costo,
      'expectactiva': expectactiva,
    }.withoutNulls,
  );

  return firestoreData;
}

class RatingsRecordDocumentEquality implements Equality<RatingsRecord> {
  const RatingsRecordDocumentEquality();

  @override
  bool equals(RatingsRecord? e1, RatingsRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.calidad == e2?.calidad &&
        e1?.recomendaciones == e2?.recomendaciones &&
        e1?.costo == e2?.costo &&
        e1?.expectactiva == e2?.expectactiva;
  }

  @override
  int hash(RatingsRecord? e) => const ListEquality().hash(
      [e?.usuario, e?.calidad, e?.recomendaciones, e?.costo, e?.expectactiva]);

  @override
  bool isValidKey(Object? o) => o is RatingsRecord;
}
