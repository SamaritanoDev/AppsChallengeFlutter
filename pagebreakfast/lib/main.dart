import 'package:flutter/material.dart';
import 'package:pagebreakfast/constants/colors.dart';
import 'package:pagebreakfast/pages/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: secondaryBananna),
        home: const Scaffold(
          body: HomePage(),
        ));
  }
}
