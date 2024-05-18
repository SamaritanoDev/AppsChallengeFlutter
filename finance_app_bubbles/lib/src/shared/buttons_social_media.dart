import 'package:finance_app_bubbles/src/constants/contants.dart';
import 'package:flutter/material.dart';

class ButtonsSocialMedia extends StatelessWidget {
  const ButtonsSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 167 + 14,
      height: 43.49,
      child: Row(
        children: [
          _ButtonSocial(iconPath: iconGoogle),
          SizedBox(width: 18.27),
          _ButtonSocial(iconPath: iconLinkedin),
          SizedBox(width: 18.27),
          _ButtonSocial(iconPath: iconApple),
        ],
      ),
    );
  }
}

class _ButtonSocial extends StatelessWidget {
  final String iconPath;
  const _ButtonSocial({
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return CircleAvatar(
      maxRadius: 21,
      backgroundColor: color.primary,
      child: CircleAvatar(
        maxRadius: 20,
        backgroundColor: Colors.white,
        child: Image.asset(
          iconPath,
          width: 27,
          height: 27,
        ),
      ),
    );
  }
}
