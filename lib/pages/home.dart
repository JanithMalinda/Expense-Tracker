import 'package:flutter/material.dart';
import '../pages/auth-pages/login.dart'; 
import 'package:firebase_auth/firebase_auth.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedCategory = ''; // Track the selected category
  List foodItems = [];
  List displayedItems = [];
  List cartItems = []; // List to track items in the cart
  late String userId;

  

void getUserId() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        userId = user.uid; // Store user ID
      });
    }
  }
  

  void logout() {
    // Clear session data, if any
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

  
  
}
