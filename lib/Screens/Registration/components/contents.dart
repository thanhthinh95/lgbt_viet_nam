import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/Login/components/form_login.dart';
import 'package:lgbt_viet_nam/Screens/Welcome/welcome_screen.dart';
import 'package:lgbt_viet_nam/constants.dart';

import 'form_registration.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: padding_value,
      margin: EdgeInsets.only(top: 20.0, left: 15.0,),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sc_registration_name,
                    style: screen_name_style,
                  ),
                  Text(sc_registration_detail, style: detail_style),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: size.height * 0.15),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 155.0,
                          child: Image.asset(
                              'assets/images/logo_lgbt_vietnam.png'),
                        ),
                        Text(app_name, style: app_name_style),
                      ],
                    ),
                  ),
                  FormRegistration(),
                ]),
          )),
    );
  }
}
