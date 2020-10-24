import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormLoginState();
  }
}

class FormLoginState extends State<FormLogin> {
  final _formKey = GlobalKey<FormState>();
  final _emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
        // height: size.height- 500,
        child: Form(
          key: _formKey,
          child: Column(
            children: [],
          ),
        ));
  }
}
