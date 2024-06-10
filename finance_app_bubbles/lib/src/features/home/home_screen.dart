import 'package:finance_app_bubbles/src/features/home/widgets/background_home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: BackgroundHome(),
          ),
          Align(
            alignment: Alignment.center,
            child: _ContendHome(),
          ),
        ],
      ),
    );
  }
}

class _ContendHome extends StatelessWidget {
  const _ContendHome();

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('hola que tal'),
      ],
    );
  }
}
