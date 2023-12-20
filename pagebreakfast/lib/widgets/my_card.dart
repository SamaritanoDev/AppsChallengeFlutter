import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double? ancho;
  final double? alto;
  const MyCard({super.key, this.ancho, this.alto});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final media = MediaQuery.of(context);
    final width = media.size.width;
    final height = media.size.height;

    return Center(
      child: Card(
        elevation: 0,
        color: color.surfaceVariant,
        child: SizedBox(
          width: ancho ?? width * 0.25,
          height: alto ?? height * 0.50,
          child: const Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}
