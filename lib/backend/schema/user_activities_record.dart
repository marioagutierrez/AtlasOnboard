import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserActivitiesRecord extends FirestoreRecord {
  UserActivitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "activity_id" field.
  String? _activityId;
  String get activityId => _activityId ?? '';
  bool hasActivityId() => _activityId != null;

  void _initializeFields() {
    _activityId = snapshotData['activity_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User_activities');

  static Stream<UserActivitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserActivitiesRecord.fromSnapshot(s));

  static Future<UserActivitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserActivitiesRecord.fromSnapshot(s));

  static UserActivitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserActivitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserActivitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserActivitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserActivitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserActivitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserActivitiesRecordData({
  String? activityId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'activity_id': activityId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserActivitiesRecordDocumentEquality
    implements Equality<UserActivitiesRecord> {
  const UserActivitiesRecordDocumentEquality();

  @override
  bool equals(UserActivitiesRecord? e1, UserActivitiesRecord? e2) {
    return e1?.activityId == e2?.activityId;
  }

  @override
  int hash(UserActivitiesRecord? e) =>
      const ListEquality().hash([e?.activityId]);

  @override
  bool isValidKey(Object? o) => o is UserActivitiesRecord;
}
