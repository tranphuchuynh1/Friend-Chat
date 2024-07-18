import 'package:chat_app/Authenticate/Autheticate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb)
  { await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAqUvrkWYYg-fpGScFZ36XI9JFyaoJci5U",
          authDomain: "phat-trien-android-appchat.firebaseapp.com",
          projectId: "phat-trien-android-appchat",
          storageBucket: "phat-trien-android-appchat.appspot.com",
          messagingSenderId: "231388560017",
          appId: "1:231388560017:web:7673d4fc035d7e3ef11d30",
          measurementId: "G-WMJ08CJ5Z2"
      ));
  }else {
      Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
    );
  }
}
