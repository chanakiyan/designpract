import 'package:flutter/material.dart';

/// Oval bottom clipper to clip widget in oval shape at the bottom side
class OvalBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;
    var path = Path();

    /*path.moveTo(radius, 0);
    path.lineTo(size.width-radius, 0);
    path.arcToPoint(Offset(size.width,radius));
    path.lineTo(size.width, size.height-radius);
    path.arcToPoint(Offset(size.width - radius, size.height),radius: Radius.circular(radius));//softCorner bottom
    path.lineTo(radius, size.height);
    path.arcToPoint(Offset(0, size.height - radius), radius: Radius.circular(radius), clockwise: false);
    path.lineTo(0, radius);
    path.arcToPoint(Offset(radius, 0), radius: Radius.elliptical(40, 20));//corner edge top*/

    /*path.moveTo(size.width*.074, 0);
    path.arcToPoint(
      Offset(0, size.height*.074),
      radius: Radius.circular(45),clockwise: false
    );
    // path.lineTo(0, size.height*.074);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width*.7, 0);
    path.arcToPoint(
      Offset(size.width*.3, 0),
      radius: Radius.circular(10),
    );
    path.lineTo(0, 0);*/

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(size.width*.7, 0);
    path.arcToPoint(
      Offset(size.width*.3, 0),
      radius: Radius.circular(10),
    );
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
