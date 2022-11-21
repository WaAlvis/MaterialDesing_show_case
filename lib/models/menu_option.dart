import 'package:flutter/cupertino.dart';

class OptionMenu {
  final String route;
  final String title;
  final IconData icon;
  final Widget screen;

  OptionMenu({
    required this.title,
    required this.route,
    required this.icon,
    required this.screen,
  });
}
