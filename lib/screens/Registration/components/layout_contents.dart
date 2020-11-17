import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/constants/constants.dart';

import 'form_registration.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 15.0,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sc_registration_name,
                      style: screen_name_style,
                    ),
                    Text(sc_registration_detail, style: detail_style),
                  ],
                ),
                Expanded(
                  child: Hero(
                    tag: 'logo_sc_login',
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 10.0),
                      child: SizedBox(
                        height: 60.0,
                        child:
                            Image.asset('assets/images/logo_lgbt_vietnam.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Hero(tag: 'app_name_sc_login', child: Text(app_name, style: app_name_style)),

                      // Text(
                      //   app_name,
                      //   style: app_name_style,
                      // ),
                      FormRegistration(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
