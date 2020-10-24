import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/constants.dart';

class TextForm extends StatelessWidget {
  final String name; //Thư điện tử
  final num max_length; //Độ dài tối đa
  final String value_default; //Giá trị mặc định
  final IconData prefix_icon; //Icon ở đầu
  final bool obscureText; //Ẩn text (password)

  TextForm({this.name, this.max_length, this.value_default, this.prefix_icon, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value_default,
      // cursorColor: text_color,
      style: text_normal_style,
      enableSuggestions: false,
      obscureText: this.obscureText,
      maxLength: this.max_length,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsetsDirectional.only(start: 2.0, end: 2.0),
          child: Icon(
            this.prefix_icon,
            color: icon_color,
            size: 30.0,
          ), // myIcon is a 48px-wide widget.
        ),
        // icon: Icon(
        //   Icons.favorite,
        //   color: icon_color,
        //   size: 16.0,
        // ),

        labelText: name,
        helperText: null,
        labelStyle: TextStyle(
          color: text_hind_color,
        ),
        helperStyle: TextStyle(
          color: text_hind_color,
        ),
        suffixIcon:
            Icon(Icons.check_circle, color: icon_color, semanticLabel: 'gdfg'),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: border_color),
          gapPadding: 8.0,
          borderRadius: BorderRadius.circular(18.0),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: border_color),
            borderRadius: BorderRadius.circular(18.0),
            gapPadding: 8.0),
      ),
    );
  }
}
