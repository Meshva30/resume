import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume/login.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Loginscreen(),
        ),
      );
    });
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 840,
          width: 800,
          decoration: BoxDecoration(color: Color(0xffF0FF42)),
          child: Image.asset("assets/resume.jpeg",fit: BoxFit.fitWidth),
        ),
      ),
    );
  }
}
