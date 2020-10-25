import 'constants.dart';

class Helper {
  static Helper _instance;
  factory Helper() => _instance ??= new Helper._();
  Helper._();

  String validateEmail(value) {
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

  String validatePassWord(value) {
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
}
