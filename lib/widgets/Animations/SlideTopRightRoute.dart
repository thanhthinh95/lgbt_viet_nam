import 'package:flutter/material.dart';

class SlideTopRightRoute extends PageRouteBuilder {
  final Widget page;
  SlideTopRightRoute({this.page})
      : super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        ) =>
    page,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
        ) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, -1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}