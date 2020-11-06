import 'dart:math';

import 'package:flutter/material.dart';

class WelcomePagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    num degToRad(num deg) => deg * (pi / 180.0);
    final paint = Paint()..color = Color(0xffF79595);
    final paint1 = Paint()..color = Colors.white;
    final paint2 = Paint()..color = Color(0xff9BBCC6);

    final center = Offset(10, 50);
    final center1 = Offset(50, 169);
    final center2 = Offset(size.width - 100, 90);
    final semicircleCenter1 = Offset(size.width - 30, 290);
    final semicircleCenter2 = Offset(size.width - 30, 240);
    final semicircleCenter3 = Offset(30, 419);
    final semicircleCenter4 = Offset(30, 404);
    final semicircleCenter5 = Offset(size.width, 590);
    final p1 = Offset(30, 240);
    final p2 = Offset(30, size.height);
    final p3 = Offset(size.width - 30, 0);
    final p4 = Offset(size.width - 30, size.height - 200);
    final p5 = Offset(size.width / 2, 240);
    final p6 = Offset(size.width / 2, 400);
    canvas.drawLine(p5, p6, paint1);
    canvas.drawCircle(center, 120, paint);
    canvas.drawCircle(center1, 6, paint1);
    canvas.drawCircle(center2, 25, paint1);
    canvas.drawLine(p1, p2, paint1);
    canvas.drawLine(p3, p4, paint1);
    canvas.drawArc(
      Rect.fromCenter(
        center: semicircleCenter1,
        height: 200,
        width: 150,
      ),
      degToRad(90),
      degToRad(180),
      false,
      paint1,
    );
    canvas.drawArc(
      Rect.fromCenter(
        center: semicircleCenter2,
        height: 200,
        width: 150,
      ),
      degToRad(270),
      degToRad(180),
      false,
      paint1,
    );
    canvas.drawArc(
      Rect.fromCenter(
        center: semicircleCenter3,
        height: 200,
        width: 200,
      ),
      degToRad(270),
      degToRad(180),
      false,
      paint2,
    );
    canvas.drawArc(
      Rect.fromCenter(
        center: semicircleCenter4,
        height: 230,
        width: 150,
      ),
      degToRad(90),
      degToRad(180),
      false,
      paint2,
    );
    canvas.drawArc(
      Rect.fromCenter(
        center: semicircleCenter5,
        height: 50,
        width: 50,
      ),
      degToRad(90),
      degToRad(180),
      false,
      paint2,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
