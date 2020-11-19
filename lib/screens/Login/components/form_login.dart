import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Widgets/text_form.dart';
import 'package:lgbt_viet_nam/constants/constants.dart';
import 'package:lgbt_viet_nam/helper.dart';

class FormLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormLoginState();
  }
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.only(
          top: size.height * 0.09,
          left: distance_value * 3,
          right: distance_value * 4,
        ),
        child: Column(
          children: [
            TextForm(
              controller: _emailController,
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
              controller: _passwordController,
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
                sc_login_button_login,
                style: text_normal_style,
              ),
              onPressed: () {
                this._login();
              },
            ),
            Container(
                margin: EdgeInsets.only(top: 10.0),
                child: GestureDetector(
                  onTap: () {
                    this._forgotPassword();
                  },
                  child: Text(
                    sc_login_text_forgot_password,
                    style: text_normal_style,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Future<void> _login() async {
    try {
      print('begin login');
      if (_formKey.currentState.validate()) {
        // Scaffold.of(context).showSnackBar(SnackBar(content: Text(_emailController.text + _passwordController.text)));

        var response = await Helper.postData('/user/login', {
          'user_name': _emailController.text,
          'password': _passwordController.text,
        });

        print('abc: ' + response.toString());
      }
    } catch (ex) {
      print('ex: ' + ex.toString());
    }
  }

  void _forgotPassword() {
    print('begin forgot Password');
  }
}
