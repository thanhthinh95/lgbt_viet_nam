import 'package:flutter/material.dart';

import '../constants.dart';

class Dropdown extends StatefulWidget {
  final List<String> items;
  final String hintText;
  final String labelText;
  final Icon prefixIcon;
  final Icon suffixIcon;

  Dropdown(
      {this.items,
      this.hintText,
      this.labelText,
      this.prefixIcon,
      this.suffixIcon});

  @override
  State<StatefulWidget> createState() {
    return _Dropdown(this);
  }
}

class _Dropdown extends State<Dropdown> {
  Dropdown dropdown;

  _Dropdown(this.dropdown);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      // value: 'One',
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      // value: 'Đồng tính nam',
      // style: TextStyle(color: Colors.deepPurple),

      onChanged: (String newValue) {
        setState(() {
          // dropdownValue = newValue;
        });
      },
      items: dropdown.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),

      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        labelText: dropdown.labelText,
        labelStyle: TextStyle(
          color: text_hind_color,
        ),
        // errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
        hintText: dropdown.hintText,


        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: border_color),
          gapPadding: 8.0,
          borderRadius: BorderRadius.circular(18.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: border_color),
          borderRadius: BorderRadius.circular(18.0),
          gapPadding: 8.0,
        ),
      ),
    );
  }
}
