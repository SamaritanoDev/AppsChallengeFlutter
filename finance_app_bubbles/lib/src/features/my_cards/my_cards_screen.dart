import 'package:finance_app_bubbles/src/features/home/widgets/cloud_custom_painter.dart';
import 'package:flutter/material.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CloudCustomPainter(),
      ),
    );
  }
}
