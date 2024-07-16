import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_practice/firebase_options.dart';
import 'package:firebase_practice/user_page.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized(); // Making sure widget initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  ); //Initialising the Firebase App


  //User data in Map<String, dynamic>
  // Map<String, dynamic> userData = {
  //   'name': 'Saurabh Saxena',
  //   'email': 'saurabhsaxena@gmail.com'
  // };

  // await FirebaseFirestore.instance.collection("users").doc("new-user").delete();
  // log('data update !');

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
      home: HomePage()
    );
  }
}



class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Login Page after register'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}