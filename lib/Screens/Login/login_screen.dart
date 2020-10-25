import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/Login/components/contents.dart';
import 'package:lgbt_viet_nam/Screens/Login/components/layout_registration.dart';
import 'package:lgbt_viet_nam/Widgets/background.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Background('assets/images/bg_login.png'),
          Contents(),
          LayoutRegistration(),
        ],
      ),
    );
  }
}
