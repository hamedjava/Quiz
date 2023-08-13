import 'package:flutter/material.dart';

class CustomStage3 extends CustomClipper<Path> {
  var radius = 2;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon(
        [Offset(0.0, 100), Offset(75, 100), Offset(50, 250), Offset(0.0, 250)],
        true);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
