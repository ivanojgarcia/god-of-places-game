import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserScoreRecord extends FirestoreRecord {
  UserScoreRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "points" field.
  int? _points;
  int get points => _points ?? 0;
  bool hasPoints() => _points != null;

  // "level" field.
  int? _level;
  int get level => _level ?? 0;
  bool hasLevel() => _level != null;

  // "category" field.
  Category? _category;
  Category? get category => _category;
  bool hasCategory() => _category != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _points = castToType<int>(snapshotData['points']);
    _level = castToType<int>(snapshotData['level']);
    _category = deserializeEnum<Category>(snapshotData['category']);
    _user = snapshotData['user'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_score');

  static Stream<UserScoreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserScoreRecord.fromSnapshot(s));

  static Future<UserScoreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserScoreRecord.fromSnapshot(s));

  static UserScoreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserScoreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserScoreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserScoreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserScoreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserScoreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserScoreRecordData({
  int? points,
  int? level,
  Category? category,
  DocumentReference? user,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'points': points,
      'level': level,
      'category': category,
      'user': user,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserScoreRecordDocumentEquality implements Equality<UserScoreRecord> {
  const UserScoreRecordDocumentEquality();

  @override
  bool equals(UserScoreRecord? e1, UserScoreRecord? e2) {
    return e1?.points == e2?.points &&
        e1?.level == e2?.level &&
        e1?.category == e2?.category &&
        e1?.user == e2?.user &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(UserScoreRecord? e) => const ListEquality()
      .hash([e?.points, e?.level, e?.category, e?.user, e?.createdTime]);

  @override
  bool isValidKey(Object? o) => o is UserScoreRecord;
}
