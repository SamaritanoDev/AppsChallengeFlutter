import 'package:flutter/material.dart';
import 'package:pagebreakfast/widgets/my_card.dart';

class CardsRow extends StatelessWidget {
  const CardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MyCard(),
        MyCard(),
        MyCard(),
      ],
    );
  }
}
