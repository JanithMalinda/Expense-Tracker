import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFieldStyle(){
    return const TextStyle(
      color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold,fontFamily: 'Montserrat'
    );
  }

  static TextStyle headLineTextFieldStyle(){
    return const TextStyle(
      color: Colors.black,fontSize: 24.0, fontWeight: FontWeight.bold,fontFamily: 'Montserrat'
    );
  }

  static TextStyle LightTextFieldStyle(){
    return const TextStyle(
      color: Colors.black38,fontSize: 16.0, fontWeight: FontWeight.w500,fontFamily: 'Montserrat'
    );
  }
}