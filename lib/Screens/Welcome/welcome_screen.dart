import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/Login/login_screen.dart';
import 'package:lgbt_viet_nam/Screens/Welcome/compoments/contents.dart';
import 'package:lgbt_viet_nam/Widgets/background.dart';
import 'package:lgbt_viet_nam/constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WelcomeState();
  }
}

class WelcomeState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Background('assets/images/bg_welcome.png'),
          Contents(),
        ],
      ),
    );
  }

  // Chờ 2s rồi điều hướng sang màn hình login
  startTime() async {
    Duration duration = new Duration(seconds: 2);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
}
