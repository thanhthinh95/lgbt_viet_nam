import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Widgets/dropdown.dart';
import 'package:lgbt_viet_nam/Widgets/text_form.dart';
import 'package:lgbt_viet_nam/constants/constants.dart';
import 'package:lgbt_viet_nam/models/dropdown_data.dart';
import 'package:lgbt_viet_nam/screens/Registration/registration_bloc.dart';

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
  TextEditingController _firstNameController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  RegistrationBloc _registrationBloc = new RegistrationBloc();

  @override
  void initState() {
    super.initState();
  }

  // Future<void> _getGenders() async {
  //   List<DropdownData> dropdownData = [];
  //   try {
  //     var response = await Helper.postData('/gender/get_all', {
  //       'status': gender_const['STATUS']['ACTIVE'].toInt(),
  //     });
  //
  //     var arrayJson = jsonDecode(response)['data'] as List;
  //     List<Gender> genders =
  //         arrayJson.map((item) => Gender.fromJson(item)).toList();
  //     genders.forEach((element) {
  //       dropdownData.add(new DropdownData(element.id, element.name));
  //     });
  //
  //     setState(() {
  //       print('size dropdownData: ' + dropdownData.length.toString());
  //       _dropdownData = dropdownData;
  //     });
  //   } catch (ex) {
  //     print('ex' + ex);
  //   }
  // }

  // Future<void> _registration() async {
  //   try {
  //     print('begin registration');
  //     if (_formKey.currentState.validate()) {
  //       var response = await Helper.postData('/user/registration', {
  //         'firstName': _firstNameController.text,
  //         'name': _nameController.text,
  //         'email': _emailController.text,
  //         'password': _passwordController.text,
  //       });
  //     }
  //   } catch (ex) {
  //     print('ex:' + ex);
  //   }
  // }

  void _backToLogin() {
    try {
      print('back screen login');
      Navigator.pop(_context);
    } catch (ex) {
      print('ex:' + ex);
    }
  }

  @override
  Widget build(BuildContext context) {
    this._context = context;
    final Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.only(
          top: size.height * 0.09,
          left: distance_value * 3,
          right: distance_value * 4,
        ),
        child: StreamBuilder(
          stream: _registrationBloc.registrationStream,
          builder: (context, snapshot) => Column(
            children: [
              Row(
                children: [
                  Container(
                    width: size.width * 0.53,
                    child: TextForm(
                      controller: _firstNameController,
                      name: ac_text_first_name,
                      helperText: ac_helper_first_name,
                      validate: Helper.validateFirstName,
                      maxLength: 20,
                      valueDefault: null,
                      prefixIcon: Icons.contact_page,
                      obscureText: false,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: distance_value * 3),
                      width: size.width * 0.3,
                      child: TextForm(
                        controller: _nameController,
                        name: ac_text_name,
                        helperText: ac_helper_name,
                        validate: Helper.validateName,
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
                // items: _dropdownData,
                items: snapshot.hasData ? snapshot.data : [],
                validator: Helper.validateGender,
                // hintText: ac_text_gender,
              ),
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
                  sc_registration_button_registration,
                  style: text_normal_style,
                ),
                onPressed: () {
                  _registrationBloc.getAllGender();

                  // this._registration();
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
