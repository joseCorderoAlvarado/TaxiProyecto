import 'package:flutter/material.dart';

class CustomPaintDiagonal extends StatelessWidget {
  const CustomPaintDiagonal({
    Key key,
    CirculPainter painter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CirculPainter(),
    );
  }
}

class CirculPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    //Propierties
    paint.color = Color(0xff7d488e);
    paint.style = PaintingStyle.fill;

    final path = new Path();
    path.moveTo(0, size.height * 0.9);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
