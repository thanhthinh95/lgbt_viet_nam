import 'package:flutter/material.dart';
import 'file:///E:/Project/lgbt_viet_nam/lib/constants/constants.dart';

// ignore: must_be_immutable
class TextForm extends StatefulWidget {
  final TextEditingController controller;
  final String name; //Thư điện tử
  final FormFieldValidator<String> validate; //Thư điện tử
  final TextInputType textInputType; //Loại
  final num maxLength; //Độ dài tối đa
  final String valueDefault; //Giá trị mặc định
  final String helperText; //Giá trị mặc định
  final IconData prefixIcon; //Icon ở đầu
  final IconData suffixIcon; //Icon ở cuối
  final IconData suffixIconReplace; //Icon sẽ được thay thế khi click vào
  final bool showCounterText; //Cho phép hiện thị số lượng kỹ tự còn lại
  final TextInputAction
      textInputAction; //Cho phép hiện thị số lượng kỹ tự còn lại
  bool obscureText; //Ẩn text (password)

  TextForm({
    this.controller,
    this.name,
    this.validate,
    this.textInputType,
    this.maxLength,
    this.valueDefault,
    this.prefixIcon,
    this.obscureText,
    this.helperText,
    this.suffixIcon,
    this.suffixIconReplace,
    this.showCounterText,
    this.textInputAction,
  });

  @override
  State<StatefulWidget> createState() {
    return _TextFormState(this);
  }
}

class _TextFormState extends State<TextForm> {
  TextForm textForm;

  _TextFormState(TextForm textForm) {
    this.textForm = textForm;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78.0,
      child: TextFormField(
        controller: textForm.controller,
        initialValue: textForm.valueDefault,
        textInputAction:
            textForm.textInputAction != null ? textForm.textInputAction : null,
        // cursorColor: text_color,
        validator: textForm.validate,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: textForm.textInputType,
        style: text_normal_style,
        enableSuggestions: false,
        obscureText: textForm.obscureText,
        maxLength: textForm.maxLength,
        decoration: InputDecoration(
          counterText: textForm.showCounterText == true ? null : '',
          contentPadding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 10.0,
          ),
          prefixIcon: textForm.prefixIcon != null
              ? (Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 2.0, end: 2.0),
                  child: Icon(
                    textForm.prefixIcon,
                    color: icon_color,
                    size: 30.0,
                  ), // myIcon is a 48px-wide widget.
                ))
              : null,

          // icon: Icon(
          //   Icons.favorite,
          //   color: icon_color,
          //   size: 16.0,
          // ),

          labelText: textForm.name,
          helperText: textForm.helperText,
          labelStyle: TextStyle(
            color: text_hind_color,
          ),
          helperStyle: TextStyle(
            color: text_hind_color,
          ),

          suffixIcon: textForm.suffixIcon != null
              ? (IconButton(
                  icon: Icon(textForm.obscureText
                      ? textForm.suffixIcon
                      : textForm.suffixIconReplace),
                  color: icon_color,
                  onPressed: _clickSuffixIcon,
                ))
              : null,
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

  void _clickSuffixIcon() {
    setState(() {
      if (textForm.textInputType.toString() ==
          TextInputType.visiblePassword.toString()) {
        textForm.obscureText = !textForm.obscureText;
      }
    });
  }
}
