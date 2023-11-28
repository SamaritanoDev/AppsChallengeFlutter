import 'package:app_hallene_two/widgets/bottle_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MiLataCompleta extends StatelessWidget {
  final Color colorPrimary;
  final Color colorLigth;
  final String urlSvg;
  final Color? colorSvg;
  const MiLataCompleta({
    super.key,
    required this.colorPrimary,
    required this.colorLigth,
    required this.urlSvg,
    this.colorSvg,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: media.size.width * 0.89,
          height: media.size.height * 0.7,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: BottleCustom(
            colorPrimary: colorPrimary,
          ),
        ),
        Positioned(
          left: media.size.height * 0.14,
          top: 250,
          child: SizedBox(
            width: 120,
            height: 120,
            child: SvgPicture.asset(
              urlSvg,
              fit: BoxFit.contain,
              color: colorSvg,
            ),
          ),
        ),
      ],
    );
  }
}
