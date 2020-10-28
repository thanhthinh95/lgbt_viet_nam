import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/Login/components/layout_contents.dart';
import 'package:lgbt_viet_nam/Widgets/Dropdown.dart';
import 'package:lgbt_viet_nam/Widgets/TextForm.dart';
import 'package:lgbt_viet_nam/constants.dart';

import '../../../helper.dart';

class FormRegistration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormRegistrationState();
  }
}

class _FormRegistrationState extends State<FormRegistration> {
  BuildContext _context;
  final _formKey = GlobalKey<FormState>();
  final _emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    this._context = context;
    final Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.only(
            top: distance_value * 10,
            right: distance_value * 4,
            left: distance_value),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: size.width * 0.53,
                  child: TextForm(
                    name: ac_text_first_name,
                    helperText: ac_helper_first_name,
                    maxLength: 20,
                    valueDefault: null,
                    prefixIcon: Icons.contact_page,
                    obscureText: false,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: distance_value),
                    width: size.width * 0.3,
                    child: TextForm(
                      name: ac_text_name,
                      helperText: ac_helper_name,
                      maxLength: 10,
                      valueDefault: null,
                      obscureText: false,
                    ),
                  ),
                ),
              ],
            ),
            Dropdown(
              labelText: ac_text_gender,
              items: list_gender,
              // hintText: ac_text_gender,

            ),
            TextForm(
              // controller: _emailController,
              name: ac_text_email,
              validate: Helper.validateEmail,
              textInputType: TextInputType.emailAddress,
              maxLength: 40,
              // valueDefault: 'null',
              prefixIcon: Icons.email,
              suffixIcon: null,
              suffixIconReplace: null,
              obscureText: false,
              showCounterText: false,
              textInputAction: TextInputAction.next,
              helperText: ac_helper_email,
            ),
            TextForm(
              // controller: _passwordController,
              name: ac_text_password,
              validate: Helper.validatePassWord,
              textInputType: TextInputType.visiblePassword,
              maxLength: 20,
              // valueDefault: null,
              showCounterText: true,
              suffixIcon: Icons.visibility,
              suffixIconReplace: Icons.visibility_off,
              prefixIcon: Icons.security,
              obscureText: true,
            ),

            MaterialButton(
              minWidth: 250.0,
              height: 40.0,
              color: button_color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: BorderSide(color: border_button_color),
              ),
              child: Text(
                sc_registration_button_registration,
                style: text_normal_style,
              ),
              onPressed: () {
                this._registration();
              },
            ),
            Container(
                margin: EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onTap: () {
                    this._backToLogin();
                  },
                  child: Text(
                    sc_registration_text_login,
                    style: text_normal_style,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void _registration() {
    print('begin login');
  }

  void _backToLogin() {
    try {
      print('back screen login');
      Navigator.pop(_context);
    } catch (ex) {
      print('ex:' + ex);
    }
  }
}
