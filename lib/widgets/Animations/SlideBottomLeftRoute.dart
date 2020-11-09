import 'package:flutter/material.dart';

class SlideBottomLeftRoute extends PageRouteBuilder {
  final Widget page;
  SlideBottomLeftRoute({this.page})
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
            begin: const Offset(-1, 1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}