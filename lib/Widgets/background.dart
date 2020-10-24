import 'package:flutter/material.dart';
import '../../../constants.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
          background_filter_color.withOpacity(0.38), BlendMode.dstATop),
      child: Positioned(
          child: Image.asset(
            'assets/images/bg_login.jpg',
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          )),
    );
  }
}
