import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lgbt_viet_nam/Screens/Login/login_screen.dart';
import 'package:lgbt_viet_nam/Screens/Welcome/welcome_screen.dart';
import 'Screens/CheckInternet/check_internet_screen.dart';
import 'constants/constants.dart';

Future main() async {
  await DotEnv().load('.env');
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
        // backgroundColor: primary_color,
        primaryColor: primary_color,
        // scaffoldBackgroundColor: primary_color,
        // appBarTheme: AppBarTheme(color: primary_color),
        brightness: Brightness.dark,
        // cursorColor: primary_color,
        // primaryContrastingColor: primary_color,
      ),
      home: Stack(
        children: [
          WelcomeScreen(),
        ],
      ),
    );
  }
}
