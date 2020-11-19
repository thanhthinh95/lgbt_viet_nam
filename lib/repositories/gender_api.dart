import 'dart:convert';
import 'package:lgbt_viet_nam/constants/models.dart';
import '../helper.dart';
import '../models/gender.dart';

class GenderAPI {
  getAll() async {
    try {
      List<Gender> genders = [];
      var response = await Helper.postData('/gender/get_all', {
        'status': gender_const['STATUS']['ACTIVE'].toInt(),
      });

      var arrayJsonData = response['data'] as List;
      genders = arrayJsonData.map((item) => Gender.fromJson(item)).toList();
      return genders;
    } catch (ex) {
      print('ex' + ex);
    }
  }
}
