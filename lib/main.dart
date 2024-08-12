// import 'package:cpp_course/Content/LearnContent/learn_satu_satu.dart';

import 'package:cpp_course/Login/login.dart';

import 'dart:async';

import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() {
  runApp(SplashScreenPage());
}

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => halamanLogin())));
  }

//SPLASH SCREEN
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
        decoration: const BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              const Color(0xFF0101FE),
              const Color(0xFF319CE4),
            ],
          ),
        ),
        child: Center(
          child: Image.asset("assets/logo/logo-cpp-krem.png"),
        ),
      ),
    );
  }
}
