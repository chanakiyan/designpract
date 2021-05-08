import 'package:flutter/material.dart';

import 'arc_clipper.dart';
import 'oval_bottom_clipper.dart';

class FrontPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    double mobileWidth = MediaQuery.of(context).size.width;
    double mobileHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.white,
          height: mobileHeight,
          width: mobileWidth,
        ),
        Positioned(
          top: mobileHeight*.2,
          bottom: mobileHeight*.1,
          left: 20,
          right: 20,
          child: ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: ClipRRect(borderRadius: BorderRadius.circular(15.0),
              child: Container(
                color: Colors.orange,
                height: mobileHeight / .90,
                width: mobileWidth * .9,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
