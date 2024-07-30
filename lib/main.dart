import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/pages/HomePage.dart';
import 'package:project1/pages/LoginPage.dart';
import 'package:project1/pages/SignUpPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Always ensure Flutter binding is initialized
  
  // Initialize Firebase app
  await Firebase.initializeApp(
    options: kIsWeb
        ? FirebaseOptions(
            apiKey: "YOUR API KEY",
  authDomain: "PROJECT_ID.firebaseapp.com",
  projectId: "PROJECT_ID",
  storageBucket: "STORAGE_BUCKET",
  messagingSenderId: "MessagingSenderId",
  appId: "AppId",
          )
        : FirebaseOptions(
            apiKey: "YOUR API KEY",
  authDomain: "PROJECT_ID.firebaseapp.com",
  projectId: "PROJECT_ID",
  storageBucket: "STORAGE_BUCKET",
  messagingSenderId: "MessagingSenderId",
  appId: "AppId",
          ),//YOU WILL GET ALL OF THIS IN FIREBASE AFTER YOU CREATE AUTHENTICATION DATABASE
  );

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
  title: 'Flutter Firebase Auth',
  theme: ThemeData(
    primarySwatch: Colors.blue,
  ),
  initialRoute: '/login',
  routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}