import 'package:flutter/material.dart';

class CloudCustomPainter extends StatelessWidget {
  const CloudCustomPainter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _CloudCustomPainterPainter(),
      ),
    );
  }
}

class _CloudCustomPainterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // const Rect rect = Rect.fromLTWH(0, 60, 50, 40);
    Rect rect = Rect.fromCircle(center: const Offset(60, 80), radius: 40);
    const Gradient gradiente = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomRight,
      colors: <Color>[
        Color(0xff8E7AB5),
        Color(0xffB784B7),
      ],
    );

    final paint = Paint()..shader = gradiente.createShader(rect);

    //propiedades del lapiz
    paint.color = const Color(0xff8E7AB5);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    final path = Path();

    path.quadraticBezierTo(
      size.width * 0.05,
      size.height * 0.13,
      size.width * 0.25,
      size.height * 0.13,
    );

    path.quadraticBezierTo(
      size.width * 0.30,
      size.height * 0.28,
      size.width * 0.55,
      size.height * 0.32,
    );

    path.quadraticBezierTo(
      size.width * 0.85,
      size.height * 0.35,
      size.width,
      size.height * 0.25,
    );

    path.lineTo(
      size.width,
      size.height * 0.06,
    );

    path.moveTo(0, 0);

    path.lineTo(size.width * 0.90, 0);

    path.quadraticBezierTo(
      size.width * 0.99,
      size.height * 0.01,
      size.width,
      size.height * 0.06,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
