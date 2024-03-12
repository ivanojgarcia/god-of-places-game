import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UserPathRecord extends FirestoreRecord {
  UserPathRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "path_name" field.
  String? _pathName;
  String get pathName => _pathName ?? '';
  bool hasPathName() => _pathName != null;

  // "completed" field.
  bool? _completed;
  bool get completed => _completed ?? false;
  bool hasCompleted() => _completed != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _pathName = snapshotData['path_name'] as String?;
    _completed = snapshotData['completed'] as bool?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_path');

  static Stream<UserPathRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserPathRecord.fromSnapshot(s));

  static Future<UserPathRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserPathRecord.fromSnapshot(s));

  static UserPathRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserPathRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserPathRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserPathRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserPathRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserPathRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserPathRecordData({
  String? pathName,
  bool? completed,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'path_name': pathName,
      'completed': completed,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserPathRecordDocumentEquality implements Equality<UserPathRecord> {
  const UserPathRecordDocumentEquality();

  @override
  bool equals(UserPathRecord? e1, UserPathRecord? e2) {
    return e1?.pathName == e2?.pathName &&
        e1?.completed == e2?.completed &&
        e1?.user == e2?.user;
  }

  @override
  int hash(UserPathRecord? e) =>
      const ListEquality().hash([e?.pathName, e?.completed, e?.user]);

  @override
  bool isValidKey(Object? o) => o is UserPathRecord;
}
