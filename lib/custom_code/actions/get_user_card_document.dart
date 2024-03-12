// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<UserCardsRecord> getUserCardDocument(String kronosId) async {
  final firestoreInstance = FirebaseFirestore.instance;

  final documentSnapshot =
      await firestoreInstance.collection("user_cards").doc(kronosId).get();

  final documentData = documentSnapshot.data()!;
  final reference = documentSnapshot.reference;
  final userCards =
      UserCardsRecord.getDocumentFromData(documentData, reference);
  return userCards;
}
