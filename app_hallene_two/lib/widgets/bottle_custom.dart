import 'package:flutter/material.dart';

class BottleCustom extends StatelessWidget {
  final Color colorPrimary;

  const BottleCustom({
    Key? key,
    required this.colorPrimary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    return SizedBox(
      // width: media.size.width * 0.80,
      // height: media.size.height * 0.9,
      child: CustomPaint(
        size: const Size(double.infinity, double.infinity),
        painter: _LataPainter(colorPrimary: colorPrimary),
      ),
    );
  }
}

class _LataPainter extends CustomPainter {
  final Color colorPrimary;

  _LataPainter({required this.colorPrimary});

  @override
  void paint(Canvas canvas, Size size) {
    final redPaint = Paint();
    final greyPaint = Paint();

    // Utilizar el color pasado como parámetro
    redPaint.color = colorPrimary;
    redPaint.style = PaintingStyle.fill; // Rellenar después
    redPaint.strokeWidth = 2;

    // Propiedades del lápiz gris para la tapa
    greyPaint.color = const Color(0xff9c8c86);
    greyPaint.style = PaintingStyle.fill; // Rellenar la tapa
    greyPaint.strokeWidth = 2;
    redPaint.style = PaintingStyle.fill; // Rellenar después
    redPaint.strokeWidth = 2;

    // Propiedades del lápiz gris para la tapa
    greyPaint.color = const Color(0xff9c8c86);
    greyPaint.style = PaintingStyle.fill; // Rellenar la tapa
    greyPaint.strokeWidth = 2;

    final path = Path();
    final tapaPath = Path(); // Nuevo path para la tapa
    final width = size.width;
    final height = size.height;

    // Lado derecho
    // Dibujar con el path y paint rojo
    path.moveTo(width * 0.70, height * 0.20);
    path.lineTo(width * 0.70, height * 0.22);
    path.lineTo(width * 0.74, height * 0.25);
    path.quadraticBezierTo(
      width * 0.755,
      height * 0.26,
      width * 0.76,
      height * 0.27,
    );

    path.lineTo(width * 0.76, height * 0.50);

    path.quadraticBezierTo(
      width * 0.76,
      height * 0.52,
      width * 0.74,
      height * 0.53,
    );

    path.lineTo(width * 0.70, height * 0.55);

    path.quadraticBezierTo(
      width * 0.68,
      height * 0.56,
      width * 0.65,
      height * 0.565,
    );

    path.lineTo(width * 0.35, height * 0.565);

    // Lado izquierdo
    // Reflejar sobre el eje vertical para hacer simétrico el lado izquierdo
    path.moveTo(width * (1 - 0.70), height * 0.20);
    path.lineTo(width * (1 - 0.70), height * 0.22);
    path.lineTo(width * (1 - 0.74), height * 0.25);
    path.quadraticBezierTo(
      width * (1 - 0.755),
      height * 0.26,
      width * (1 - 0.76),
      height * 0.27,
    );

    path.lineTo(width * (1 - 0.76), height * 0.50);

    path.quadraticBezierTo(
      width * (1 - 0.76),
      height * 0.52,
      width * (1 - 0.74),
      height * 0.53,
    );

    path.lineTo(width * (1 - 0.70), height * 0.55);

    path.quadraticBezierTo(
      width * (1 - 0.68),
      height * 0.56,
      width * (1 - 0.65),
      height * 0.565,
    );

    // Eliminar el último moveTo antes de la línea de cierre
    path.lineTo(width * 0.70, height * 0.20);

    // Dibujar la tapa con el nuevo path y paint gris
    tapaPath.moveTo(width * 0.74, height * 0.53);
    tapaPath.lineTo(width * 0.70, height * 0.55);
    tapaPath.lineTo(width * 0.30, height * 0.55);
    tapaPath.lineTo(width * (1 - 0.74), height * 0.53);
    tapaPath.lineTo(width * 0.74, height * 0.53);

    tapaPath.moveTo(width * 0.70, height * 0.20);
    tapaPath.lineTo(width * 0.71, height * 0.19);
    tapaPath.lineTo(width * (1 - 0.71), height * 0.19);
    tapaPath.lineTo(width * 0.30, height * 0.20);

    //tapaPath.close();

    canvas.drawPath(path, redPaint);
    canvas.drawPath(tapaPath, greyPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
