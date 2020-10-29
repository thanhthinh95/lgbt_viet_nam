import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lgbt_viet_nam/Screens/Registration/registration_screen.dart';
import 'package:lgbt_viet_nam/Widgets/Animations/SlideRightRoute.dart';

import '../../../constants.dart';

// ignore: must_be_immutable
class LayoutRegistration extends StatelessWidget {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    this._context = context;
    return Container(
      padding: EdgeInsets.only(top: 4.0),
      width: double.infinity,
      height: 60.0,
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
      FocusScope.of(_context).unfocus();
      // Navigator.push(
      //   _context,
      //   SlideRightRoute(page: Registration()),
      // );

      // Navigator.push(
      //     _context,
      //     MaterialPageRoute(
      //       builder: (context) => Registration(),
      //     ),
      // );

      Navigator.push(
        _context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => Registration(),
          transitionDuration: Duration(milliseconds: 300),
          reverseTransitionDuration: Duration(milliseconds: 300),
        ),
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
