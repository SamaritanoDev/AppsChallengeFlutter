import 'package:finance_app_bubbles/src/features/home/home_screen.dart';
import 'package:finance_app_bubbles/src/features/my_cards/my_cards_screen.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentPageIndex = 0;

  final List<Widget> screens = const [
    HomeScreen(),
    MyCardsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          indicatorColor: color.primary,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: color.onPrimary,
              ),
              icon: const Icon(
                Icons.home_outlined,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.favorite,
                color: color.onPrimary,
              ),
              icon: const Icon(
                Icons.favorite_outline,
              ),
              label: 'Complete Ticket',
            ),
          ]),
      body: screens[currentPageIndex],
    );
  }
}
