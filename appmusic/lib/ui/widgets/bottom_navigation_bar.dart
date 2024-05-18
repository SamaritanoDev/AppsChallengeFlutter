import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MyBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.play_arrow_outlined), label: 'Playlist'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Config'),
      ],
    );
  }
}
