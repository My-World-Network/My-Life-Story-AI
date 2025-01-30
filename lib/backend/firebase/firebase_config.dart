import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBRoG7mfCNommEbwzpMVfy9aV1_OpwFr4c",
            authDomain: "m-w-n-my-life-story-an-vwjfzv.firebaseapp.com",
            projectId: "m-w-n-my-life-story-an-vwjfzv",
            storageBucket: "m-w-n-my-life-story-an-vwjfzv.firebasestorage.app",
            messagingSenderId: "1084809000414",
            appId: "1:1084809000414:web:cfd00011978818b33f594f"));
  } else {
    await Firebase.initializeApp();
  }
}
