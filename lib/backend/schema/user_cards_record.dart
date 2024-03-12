import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserCardsRecord extends FirestoreRecord {
  UserCardsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "god_section" field.
  String? _godSection;
  String get godSection => _godSection ?? '';
  bool hasGodSection() => _godSection != null;

  // "progress" field.
  int? _progress;
  int get progress => _progress ?? 0;
  bool hasProgress() => _progress != null;

  // "complete" field.
  bool? _complete;
  bool get complete => _complete ?? false;
  bool hasComplete() => _complete != null;

  // "kronos_name" field.
  String? _kronosName;
  String get kronosName => _kronosName ?? '';
  bool hasKronosName() => _kronosName != null;

  // "Kronos_description" field.
  String? _kronosDescription;
  String get kronosDescription => _kronosDescription ?? '';
  bool hasKronosDescription() => _kronosDescription != null;

  // "kronos_mission" field.
  String? _kronosMission;
  String get kronosMission => _kronosMission ?? '';
  bool hasKronosMission() => _kronosMission != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "color_card" field.
  String? _colorCard;
  String get colorCard => _colorCard ?? '';
  bool hasColorCard() => _colorCard != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _godSection = snapshotData['god_section'] as String?;
    _progress = castToType<int>(snapshotData['progress']);
    _complete = snapshotData['complete'] as bool?;
    _kronosName = snapshotData['kronos_name'] as String?;
    _kronosDescription = snapshotData['Kronos_description'] as String?;
    _kronosMission = snapshotData['kronos_mission'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _logo = snapshotData['logo'] as String?;
    _colorCard = snapshotData['color_card'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_cards');

  static Stream<UserCardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserCardsRecord.fromSnapshot(s));

  static Future<UserCardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserCardsRecord.fromSnapshot(s));

  static UserCardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserCardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserCardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserCardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserCardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserCardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserCardsRecordData({
  DocumentReference? user,
  String? godSection,
  int? progress,
  bool? complete,
  String? kronosName,
  String? kronosDescription,
  String? kronosMission,
  DateTime? createdTime,
  String? logo,
  String? colorCard,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'god_section': godSection,
      'progress': progress,
      'complete': complete,
      'kronos_name': kronosName,
      'Kronos_description': kronosDescription,
      'kronos_mission': kronosMission,
      'created_time': createdTime,
      'logo': logo,
      'color_card': colorCard,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserCardsRecordDocumentEquality implements Equality<UserCardsRecord> {
  const UserCardsRecordDocumentEquality();

  @override
  bool equals(UserCardsRecord? e1, UserCardsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.godSection == e2?.godSection &&
        e1?.progress == e2?.progress &&
        e1?.complete == e2?.complete &&
        e1?.kronosName == e2?.kronosName &&
        e1?.kronosDescription == e2?.kronosDescription &&
        e1?.kronosMission == e2?.kronosMission &&
        e1?.createdTime == e2?.createdTime &&
        e1?.logo == e2?.logo &&
        e1?.colorCard == e2?.colorCard;
  }

  @override
  int hash(UserCardsRecord? e) => const ListEquality().hash([
        e?.user,
        e?.godSection,
        e?.progress,
        e?.complete,
        e?.kronosName,
        e?.kronosDescription,
        e?.kronosMission,
        e?.createdTime,
        e?.logo,
        e?.colorCard
      ]);

  @override
  bool isValidKey(Object? o) => o is UserCardsRecord;
}
