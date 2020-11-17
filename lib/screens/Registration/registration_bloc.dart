import 'dart:async';

import 'package:lgbt_viet_nam/models/dropdown_data.dart';
import 'package:lgbt_viet_nam/models/gender.dart';
import 'package:lgbt_viet_nam/repositories/gender_api.dart';

class RegistrationBloc {
  StreamController<List<DropdownData>> _registrationController = new StreamController<List<DropdownData>>();

  Stream get registrationStream => _registrationController.stream;


  Future<void> getAllGender() async{
    List<DropdownData> dropDownData = [];
    List<Gender> genders =  await new GenderAPI().getAll();
    genders.forEach((element) {
      dropDownData.add(new DropdownData(element.id, element.name));
    });

    print('den day roi' + dropDownData.toString());
    _registrationController.sink.add(dropDownData);
  }

  void dispose(){
    _registrationController.close();
  }
}
