import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/Login/components/form_login.dart';
import 'package:lgbt_viet_nam/Screens/Welcome/welcome_screen.dart';
import 'package:lgbt_viet_nam/constants.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        padding: padding_value,
        margin: EdgeInsets.only(
          top: 20.0,
          left: 15.0,
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  sc_login_name,
                  style: screen_name_style,
                ),
                Text(sc_login_detail, style: detail_style),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        bottom: size.height * 0.04,
                        top: size.height * 0.02,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 155.0,
                            child: Image.asset(
                                'assets/images/logo_lgbt_vietnam.png'),
                          ),
                          Text(app_name, style: app_name_style),
                          FormLogin()
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
        ));
  }
}
