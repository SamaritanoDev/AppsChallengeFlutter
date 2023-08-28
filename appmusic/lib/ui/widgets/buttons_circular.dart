import 'package:flutter/material.dart';

class ButtonsCircular extends StatelessWidget {
  const ButtonsCircular({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: const Color(0xff1A1C20),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(16),
            shadowColor: Colors.black,
          ),
          child: const Icon(
            Icons.skip_previous,
            color: Colors.white,
            size: 20,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: color.primary,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(16),
            shadowColor: Colors.black,
          ),
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 48,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 10,
            backgroundColor: const Color(0xff1A1C20),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(16),
            shadowColor: Colors.black,
          ),
          child: const Icon(
            Icons.skip_next,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
