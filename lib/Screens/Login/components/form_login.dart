import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Widgets/TextFormField.dart';
import 'package:lgbt_viet_nam/constants.dart';
import 'package:lgbt_viet_nam/helper.dart';

class FormLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FormLoginState();
  }
}

class _FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.only(top: 40.0, left: 15.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextForm(
              name: sc_login_text_form_username,
              validate: Helper().validateEmail,
              textInputType: TextInputType.emailAddress,
              maxLength: 40,
              // valueDefault: 'null',
              prefixIcon: Icons.email,
              suffixIcon: null,
              suffixIconReplace: null,
              obscureText: false,
              showCounterText: false,
              textInputAction: TextInputAction.next,
              helperText: sc_login_helper_email,
            ),
            TextForm(
              name: sc_login_text_form_password,
              validate: Helper().validatePassWord,
              textInputType: TextInputType.visiblePassword,
              maxLength: 20,
              // valueDefault: null,
              showCounterText: true,
              suffixIcon: Icons.visibility,
              suffixIconReplace: Icons.visibility,
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

  void _login() {
    try {
      print('begin login');
      if (_formKey.currentState.validate()) {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text('ok')));
      }
    } catch (ex) {
      print('ex: ' + ex.toString());
    }
  }

  void _forgotPassword() {
    print('begin forgot Password');
  }
}
