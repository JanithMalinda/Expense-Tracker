import 'package:expense_tracker/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:expense_tracker/pages/auth-pages/login.dart';
import 'package:expense_tracker/pages/auth-pages/signup.dart';
import 'package:expense_tracker/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures binding is initialized before Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Initializes Firebase

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(primarySwatch: Colors.green),
      // initialRoute: '/login', // Set the initial page
      // routes: {
      //   '/login': (context) => LoginPage(), // Login page route
      //   '/signup': (context) => SignUpPage(), // Sign-Up page route
      // },
      home: const Home(),
    );
  }
}
