import 'package:flutter/material.dart';
import 'package:resume/contacpage.dart';
import 'package:resume/homescreen.dart';
import 'package:resume/login.dart';
import 'package:resume/splachscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,


      routes: {
        '/': (context) => SplachScreen(),
        'login': (context) => Loginscreen(),
        'home': (context) => HomeScreen(),
        'info': (context) => UserInfoScreen(),
      },
    ),
  );
}
