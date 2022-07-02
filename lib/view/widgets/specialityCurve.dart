import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class specialityCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.04024768);
    path_0.lineTo(size.width, size.height * 1.040248);
    path_0.lineTo(0, size.height * 1.040248);
    path_0.lineTo(0, size.height * 0.9492260);
    path_0.arcToPoint(Offset(size.width * 0.1682692, size.height * 0.5157895),
        radius:
            Radius.elliptical(size.width * 0.1680288, size.height * 0.4328173),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.8420673, size.height * 0.5176471);
    path_0.lineTo(size.width * 0.8423077, size.height * 0.5176471);
    path_0.cubicTo(
        size.width * 0.8932692,
        size.height * 0.5071207,
        size.width * 0.9884615,
        size.height * 0.4024768,
        size.width * 0.9978365,
        size.height * 0.1083591);
    path_0.cubicTo(
        size.width * 0.9985577,
        size.height * 0.08111455,
        size.width * 0.9995192,
        size.height * 0.05820433,
        size.width,
        size.height * 0.04024768);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
