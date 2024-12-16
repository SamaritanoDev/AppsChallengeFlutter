import 'package:finance_app_bubbles/src/features/home/widgets/icon_background.dart';
import 'package:flutter/material.dart';

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconBackground(),
        IconBackground(),
      ],
    );
  }
}
