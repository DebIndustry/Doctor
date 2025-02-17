import 'package:flutter/material.dart';
import 'dart:async'; // For Timer

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child:Image(
          image: AssetImage('assets/mainlogo.png'),
          width: 350,
          height: 350,),
      )
      );

  }
}
