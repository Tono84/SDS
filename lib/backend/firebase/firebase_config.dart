import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDnWFK62TU03RkKA-FgdEbwKrAyBvKNlHI",
            authDomain: "solo-app-786fd.firebaseapp.com",
            projectId: "solo-app-786fd",
            storageBucket: "solo-app-786fd.appspot.com",
            messagingSenderId: "811826951752",
            appId: "1:811826951752:web:fb7474b4e4a848f22a0a7d",
            measurementId: "G-0DWMP77F4S"));
  } else {
    await Firebase.initializeApp();
  }
}
