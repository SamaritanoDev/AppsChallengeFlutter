import 'package:finance_app_bubbles/src/features/home/widgets/cloud_custom_painter.dart';
import 'package:flutter/material.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 300,
            height: 500,
            child: CloudCustomPainter(),
          ),
        ),
      ),
    );
  }
}
