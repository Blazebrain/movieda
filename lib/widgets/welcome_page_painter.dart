import 'package:flutter/material.dart';

class WelcomePagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Color(0xffF79595);
    final paint1 = Paint()..color = Colors.white;
    final center = Offset(10, 50);
    final center1 = Offset(50, 180);
    final center2 = Offset(size.width - 100, 90);

    final p1 = Offset(30, 240);
    final p2 = Offset(30, size.height);
    final p3 = Offset(size.width - 30, 0);
    final p4 = Offset(size.width - 30, size.height - 200);
    final p5 = Offset(size.width - 30, 300);
    final p6 = Offset(size.width - 30, 400);
    final rect = Rect.fromPoints(p5, p6);
    canvas.drawCircle(center, 130, paint);
    canvas.drawCircle(center1, 6, paint1);
    canvas.drawCircle(center2, 25, paint1);
    canvas.drawLine(p1, p2, paint1);
    canvas.drawLine(p3, p4, paint1);
    canvas.drawArc(rect, 0, 90, false, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
