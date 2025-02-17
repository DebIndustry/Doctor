import 'package:doctore_app/screens/Forgot_password.dart';
import 'package:doctore_app/screens/OtpScreen.dart';
import 'package:doctore_app/screens/phone_auth_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/phone_auth': (context) => PhoneAuthScreen(),
        '/otp': (context) => OtpScreen(),
        '/forgetpassword':(context)=>ForgotPassword()


      },
    );
  }
}
