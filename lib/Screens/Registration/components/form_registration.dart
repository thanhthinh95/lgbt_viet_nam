import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Widgets/TextFormField.dart';
import 'package:lgbt_viet_nam/constants.dart';

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
        margin: EdgeInsets.only(top: 40.0, left: 15.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextForm(
              name: sc_login_text_form_username,
              maxLength: 40,
              valueDefault: null,
              prefixIcon: Icons.email,
              obscureText: false,
            ),
            TextForm(
              name: sc_login_text_form_password,
              maxLength: 20,
              valueDefault: null,
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
