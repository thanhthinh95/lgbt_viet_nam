import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/Registration/registration_screen.dart';
import 'package:lgbt_viet_nam/Widgets/Animations/SlideBottomLeftRoute.dart';
import 'package:lgbt_viet_nam/Widgets/Animations/SlideRightRoute.dart';
import 'package:lgbt_viet_nam/Widgets/Animations/SlideTopLeftRoute.dart';
import 'package:lgbt_viet_nam/Widgets/Animations/SlideTopRightRoute.dart';

import '../../../constants.dart';

class LayoutRegistration extends StatelessWidget { // ignore: must_be_immutable
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      alignment: Alignment(1, -1),
      child: Stack(
        children: [
          Positioned(
            right: 0.0,
            child: MaterialButton(
              height: 28.0,
              color: button_color,
              child: Text(
                sc_login_button_registration,
                style: text_normal_style,
              ),
              onPressed: () => this._registration(),
            ),
          ),
          Positioned(
            right: 87.0,
            top: 10.0,
            child: CustomPaint(
              size: Size(28, 28),
              painter: DrawTriangleShape(),
            ),
          ),
        ],
      ),
    );
  }

  void _registration() {
    try {
      print('doing click button registration');
      Navigator.push(
        _context,
        SlideRightRoute(page : Registration()),
      );
    } catch (ex) {
      print('ex:' + ex);
    }
  }
}

//Vẽ hình tam giác
class DrawTriangleShape extends CustomPainter {
  Paint painter;

  DrawTriangleShape() {
    painter = Paint()
      ..color = button_color
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    path.moveTo(0, size.width);
    path.lineTo(size.height, 0);
    path.lineTo(size.height, size.width);
    path.close();

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
