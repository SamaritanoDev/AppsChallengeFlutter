import 'package:appmusic/config/theme/app_theme.dart';
import 'package:appmusic/ui/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().getTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
      },
    );
  }
}
