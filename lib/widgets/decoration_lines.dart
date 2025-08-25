import 'package:flutter/material.dart';
import 'dart:math' as math;

class DecorationLines extends StatelessWidget {
  const DecorationLines({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinesPainter(),
      child: Container(),
    );
  }
}

class LinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.pink.withOpacity(0.3)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    // Draw dashed lines
    _drawDashedLine(
      canvas,
      Offset(50, 100),
      Offset(200, 150),
      paint,
    );

    _drawDashedLine(
      canvas,
      Offset(size.width - 100, 80),
      Offset(size.width - 50, 200),
      paint,
    );

    _drawDashedLine(
      canvas,
      Offset(80, size.height * 0.4),
      Offset(250, size.height * 0.5),
      paint,
    );

    _drawDashedLine(
      canvas,
      Offset(size.width - 150, size.height * 0.3),
      Offset(size.width - 30, size.height * 0.4),
      paint,
    );

    // Draw decorative circles
    final circlePaint = Paint()
      ..color = Colors.green.withOpacity(0.4)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(80, 120),
      8,
      circlePaint,
    );

    final purpleCirclePaint = Paint()
      ..color = Colors.purple.withOpacity(0.4)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(size.width - 60, 180),
      6,
      purpleCirclePaint,
    );

    canvas.drawCircle(
      Offset(120, size.height * 0.6),
      10,
      purpleCirclePaint,
    );
  }

  void _drawDashedLine(
    Canvas canvas,
    Offset start,
    Offset end,
    Paint paint,
  ) {
    const dashLength = 8.0;
    const dashSpace = 4.0;
    
    final distance = (end - start).distance;
    final direction = (end - start) / distance;
    
    double currentDistance = 0;
    bool drawDash = true;
    
    while (currentDistance < distance) {
      final currentPoint = start + direction * currentDistance;
      
      if (drawDash) {
        final dashEnd = start + direction * (currentDistance + dashLength);
        canvas.drawLine(currentPoint, dashEnd, paint);
      }
      
      currentDistance += dashLength + dashSpace;
      drawDash = !drawDash;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
