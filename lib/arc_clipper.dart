///
/// Author: Damodar Lohani
/// profile: https://github.com/lohanidamodar
///

import 'package:flutter/material.dart';

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * .7);
    path.arcToPoint(
      Offset(size.width, size.height),
      radius: Radius.elliptical(20, 20),
    );
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) {
    return old != this;
  }
}
