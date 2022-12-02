import 'package:chat/interfaz/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCrPwYRP5jXLQPETLUPIY65ih-Cb6kV-Vc",
          authDomain: "reto3chat-a2848.firebaseapp.com",
          projectId: "reto3chat-a2848",
          storageBucket: "reto3chat-a2848.appspot.com",
          messagingSenderId: "442386755571",
          appId: "1:442386755571:web:a4cba310987320697dec86",
          measurementId: "G-GHE5MLLGH6"));
  runApp(const MyApp());
}
