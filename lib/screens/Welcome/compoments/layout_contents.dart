import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: padding_value,
      margin: EdgeInsets.only(top: size.height * 0.25),
      alignment: Alignment.center,
      child: Column(
        textBaseline: TextBaseline.alphabetic,
        children: [
          SizedBox(
            height: 155.0,
            child: Image.asset('assets/images/logo_lgbt_vietnam.png'),
          ),
          Text(app_name, style: app_name_style),
          Text(slogan, style: detail_style),
        ],
      ),
    );
  }
}
