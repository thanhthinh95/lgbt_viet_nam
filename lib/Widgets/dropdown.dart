import 'package:flutter/material.dart';

import '../constants.dart';

class Dropdown extends StatefulWidget {
  final List<String> items;
  final String labelText;
  final Icon prefixIcon;
  final Icon suffixIcon;
  final FormFieldValidator<String> validator;

  Dropdown({
    this.items,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
  });

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
    return SizedBox(
      height: 78.0,
      child: DropdownButtonFormField(
        icon: Icon(Icons.keyboard_arrow_down),
        // elevation: 164,
        style: TextStyle(color: text_color),
        onChanged: (String newValue) {
          setState(() {
            // dropdownValue = newValue;
          });
        },
        items: dropdown.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Row(children: [
              Text(value),
            ]),
          );
        }).toList(),
        validator: dropdown.validator,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 13.5,
            horizontal: 10.0,
          ),
          labelText: dropdown.labelText,
          labelStyle: TextStyle(
            color: text_hind_color,
          ),
          // errorText: dropdown.validator,
          // hintText: dropdown.hintText,
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 2.0, end: 2.0),
            child: Icon(
              Icons.face,
              color: icon_color,
              size: 30.0,
            ), // myIcon is a 48px-wide widget.
          ),

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
      ),
    );
  }
}
