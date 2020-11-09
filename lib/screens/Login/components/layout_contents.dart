import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/Login/components/form_login.dart';
import 'package:lgbt_viet_nam/Screens/Welcome/welcome_screen.dart';
import 'file:///E:/Project/lgbt_viet_nam/lib/constants/constants.dart';

import 'layout_registration.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        // padding: padding_value,
        margin: EdgeInsets.only(
          top: 20.0,
          left: 15.0,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sc_login_name,
                        style: screen_name_style,
                      ),
                      Text(sc_login_detail, style: detail_style),
                    ],
                  ),
                  LayoutRegistration(),
                ],
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Hero(
                          tag: 'logo_sc_login',
                          child: SizedBox(
                            height: 155.0,
                            child: Image.asset(
                                'assets/images/logo_lgbt_vietnam.png'),
                          ),
                        ),
                        Hero(tag: 'app_name_sc_login', child: Text(app_name, style: app_name_style)),
                        FormLogin(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
