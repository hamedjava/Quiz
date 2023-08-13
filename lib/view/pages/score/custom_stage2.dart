import 'package:flutter/material.dart';

class CustomStage2 extends CustomClipper<Path> {
  var radius = 2;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon(
        [Offset(0.0, 75), Offset(200, 75), Offset(0.0, 800), Offset(35, 250)],
        true);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
