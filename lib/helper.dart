import 'dart:convert';

import 'package:http/http.dart' as http;
import 'constants.dart';

class Helper {
  // static Helper _instance;
  // factory Helper() => _instance ??= new Helper._();
  // Helper._();

  static String validateEmail(value) {
    try {
      RegExp regex = new RegExp(reg_email);
      if (!regex.hasMatch(value) || value == null)
        return validate_warning_email;
      else
        return null;
    } catch (ex) {
      print('ex: ' + ex);
      return null;
    }
  }

  static String validatePassWord(value) {
    try {
      if (value.toString().length < 6 || value.toString().length > 20)
        return validate_warning_pass;
      else
        return null;
    } catch (ex) {
      print('ex: ' + ex);
      return null;
    }
  }

  static Future<String> postData(endPoint, body) async {
    try {
      String url = 'http://' + host + ':' + port + endPoint;
      var response = await http.post(url,
          headers: {
            'Content-Type': 'application/json',
            'referer': 'dev',
          },
          body: json.encode(body));
      return response.body.toString();
    } catch (ex) {
      print('ex: ' + ex.toString());
      return null;
    }
  }
}
