import 'package:flutter/material.dart';
import 'package:pagebreakfast/constants/colors.dart';

class QuadraticCustom extends StatelessWidget {
  const QuadraticCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final width = media.size.width;
    final height = media.size.height;
    double boxMaxWidth = width > 1200 ? 600 : width;
    double boxMaxHeight = height > 787 ? 787 : height;

    return SizedBox(
      width: boxMaxWidth,
      height: height,
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = secondaryBananna;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();

    path.moveTo(size.width, 0);
    path.lineTo(size.width * 0.6, 0);
    path.lineTo(size.width * 0.05, size.height);
    path.lineTo(size.width, size.height);

    //canvas dibujae el path
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
    //throw UnimplementedError();
  }
}
