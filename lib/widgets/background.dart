import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Background extends StatelessWidget {
  final String _image_path;

  Background(this._image_path);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
            background_filter_color.withOpacity(0.48), BlendMode.dstATop),
        child: Image.asset(
          this._image_path,
          width: size.width,
          height: size.height,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
