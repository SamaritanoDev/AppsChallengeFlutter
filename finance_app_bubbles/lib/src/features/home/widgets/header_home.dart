import 'package:flutter/material.dart';
import '../../../constants/contants.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return Positioned(
      top: 90,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Lesly",
                    style: textTheme.titleLarge,
                  ),
                  Text(
                    "Invest Smarter, Not Harder.",
                    style: textTheme.labelMedium?.copyWith(
                      color: color.primary,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const CircleAvatar(
                maxRadius: 23,
                backgroundImage: AssetImage(photo),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
