// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ArcContainer extends StatelessWidget {
  const ArcContainer({
    Key? key,
    required this.child,
    this.color,
  }) : super(key: key);

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ArcCustomPaint(
        color: color ?? Theme.of(context).scaffoldBackgroundColor,
      ),
      child: child,
    );
  }
}

class ArcCustomPaint extends CustomPainter {
  final Color color;
  ArcCustomPaint({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.9975000);
    path0.quadraticBezierTo(size.width * -0.0195250, size.height * 0.3007500, 0,
        size.height * 0.0823500);
    path0.cubicTo(
        size.width * 0.2474750,
        size.height * -0.0090750,
        size.width * 0.7505250,
        size.height * 0.0021750,
        size.width * 0.9995750,
        size.height * 0.0814250);
    path0.quadraticBezierTo(size.width * 1.0104500, size.height * 0.3003250,
        size.width, size.height);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
