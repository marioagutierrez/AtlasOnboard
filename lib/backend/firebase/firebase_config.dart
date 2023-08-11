import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyChDo0lhg0UaA9Nd5qrFM0yv_DZzCawoPo",
            authDomain: "atlas-23079.firebaseapp.com",
            projectId: "atlas-23079",
            storageBucket: "atlas-23079.appspot.com",
            messagingSenderId: "48030854463",
            appId: "1:48030854463:web:f19a4c4e27af658b11b78a",
            measurementId: "G-5P3KD5M6JW"));
  } else {
    await Firebase.initializeApp();
  }
}
