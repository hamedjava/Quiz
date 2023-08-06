import 'package:flutter/material.dart';

class CircleClipper extends CustomClipper<Path> {
  double radius = 50; //tw & th = triangle width & height

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CircleClipper oldClipper) => false;
}
