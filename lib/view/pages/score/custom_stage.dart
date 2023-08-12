import 'package:flutter/material.dart';

class CustomStage extends CustomClipper<Path> {
  var radius = 2;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addPolygon(
        [Offset(0, 40), Offset(130, 40), Offset(130, 40), Offset(70, 600)],
        true);
    path.addPolygon(
        [Offset(0, 40), Offset(130, 40), Offset(130, 40), Offset(70, 600)],
        true);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
