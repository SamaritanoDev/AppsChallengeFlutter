import 'package:finance_app_bubbles/src/features/home/widgets/background_home.dart';
import 'package:finance_app_bubbles/src/features/home/widgets/header_home.dart';
import 'package:finance_app_bubbles/src/features/home/widgets/list_cards.dart';
import 'package:finance_app_bubbles/src/features/home/widgets/list_menu.dart';
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
    return Padding(
      padding: const EdgeInsets.only(right: 22, left: 22),
      child: Column(
        children: [
          const SizedBox(height: 90),
          const HeaderHome(),
          const SizedBox(height: 49),
          const ListCards(),
          Container(
            color: Colors.amber,
            child: const ListMenu(),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
