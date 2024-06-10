import 'package:finance_app_bubbles/src/constants/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundHome extends StatelessWidget {
  const BackgroundHome({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final widthCloud = media.size.width;

    return Column(
      children: [
        SvgPicture.asset(
          cloudHome,
          width: widthCloud,
          //height: heightCloud * 0.15,
        ),
      ],
    );
  }
}
