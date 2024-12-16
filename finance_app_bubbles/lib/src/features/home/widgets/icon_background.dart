import 'package:flutter/material.dart';

class IconBackground extends StatelessWidget {
  const IconBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          maxRadius: 22,
          backgroundColor: color.primary,
          child: const Icon(Icons.face_3),
        ),
        const Text('Transfer'),
      ],
    );
  }
}
