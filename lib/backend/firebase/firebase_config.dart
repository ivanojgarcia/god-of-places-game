import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCkcah0rt2kwdNbESk7DYcPJDGQ6sHtmZs",
            authDomain: "god-of-places-game-ddglln.firebaseapp.com",
            projectId: "god-of-places-game-ddglln",
            storageBucket: "god-of-places-game-ddglln.appspot.com",
            messagingSenderId: "987165186169",
            appId: "1:987165186169:web:d13d67f606e2bfba5a9ca8"));
  } else {
    await Firebase.initializeApp();
  }
}
