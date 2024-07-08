import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_practice/firebase_options.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //Making sure widget initialization
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  ); //Initialising the Firebase App
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Practice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:HomePage()
    );
  }
}