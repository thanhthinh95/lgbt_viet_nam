import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/CheckInternet/check_internet_screen.dart';
import 'package:lgbt_viet_nam/Widgets/background.dart';

import 'components/layout_contents.dart';

class Registration extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Background('assets/images/bg_registration.png'),
          Contents(),
          CheckInternet(),
        ],
      ),
    );
  }

}