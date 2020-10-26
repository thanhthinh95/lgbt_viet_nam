import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/Login/login_screen.dart';
import 'package:lgbt_viet_nam/Screens/Welcome/welcome_screen.dart';
import 'Screens/CheckInternet/CheckInternet.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: app_name,
      color: primary_color,
      theme: ThemeData(
        primaryColor: primary_color,
        scaffoldBackgroundColor: primary_color,
        appBarTheme: AppBarTheme(color: primary_color),
      ),
      home: Stack(
        children: [
          WelcomeScreen(),
        ],
      ),
    );
  }
}
