import 'package:firebase_auth/firebase_auth.dart';import 'package:firebase_practice/user_page.dart';import 'package:flutter/foundation.dart';import 'package:flutter/material.dart';class HomePage extends StatefulWidget {  @override  State<HomePage> createState() => HomePageState();}class HomePageState extends State<HomePage> {  TextEditingController emailController = TextEditingController();  TextEditingController passwordController = TextEditingController();  @override  Widget build(BuildContext context) {    return Scaffold(      appBar: AppBar(        title: const Text('Firebase Practice Project'),        centerTitle: true,        backgroundColor: Colors.blue,      ),      body: Container(          color: Colors.blue,          width: double.infinity,          height: double.infinity,          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),          alignment: Alignment.center,          child: Column(            mainAxisAlignment: MainAxisAlignment.center,            crossAxisAlignment: CrossAxisAlignment.center,            children: [              //Email              TextField(                controller: emailController,                decoration: const InputDecoration(                    enabledBorder: OutlineInputBorder(                        borderSide: BorderSide(                          color: Colors.white,                          width: 0.5,                        )                    ),                    focusedBorder: OutlineInputBorder(                        borderSide: BorderSide(                          color: Colors.white,                          width: 1.5,                        )                    ),                  hintText: "Email",                  hintStyle: TextStyle(color: Colors.white),                ),                cursorColor: Colors.white,                style:const TextStyle(color: Colors.white),              ),              const SizedBox(height: 30,),              //Password              TextField(                controller: passwordController,                decoration: const InputDecoration(                  enabledBorder: OutlineInputBorder(                      borderSide: BorderSide(                        color: Colors.white,                        width: 0.5,                      )                  ),                  focusedBorder: OutlineInputBorder(                      borderSide: BorderSide(                        color: Colors.white,                        width: 1.5,                      )                  ),                  hintText: "Password",                  hintStyle: TextStyle(color: Colors.white),                ),                cursorColor: Colors.white,                style:const TextStyle(color: Colors.white),              ),              const SizedBox(height: 30,),              ElevatedButton(onPressed: (){                String email = emailController.text.toString().trim();                String password = passwordController.text.toString().trim();                onLoginPressed(email, password);              }, child: const Text("Login",style: TextStyle(color: Colors.black),))            ],          )),    );  }  void onLoginPressed(String email, String password)async{    try{      UserCredential credential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);      Navigator.push(context, MaterialPageRoute(builder: (context)=> UserPage(credential: credential)));      print("Login Successful");    }catch(e){      print("Login Failed");      if (kDebugMode) {        print("User Creation Exception $e");      }    }  }}