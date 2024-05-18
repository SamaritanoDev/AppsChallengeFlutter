import 'package:finance_app_bubbles/src/features/onboarding/my_onboarding.dart';
import 'package:finance_app_bubbles/src/features/signIn/sign_in.dart';
import 'package:finance_app_bubbles/src/features/signUp/sign_up.dart';
import 'package:finance_app_bubbles/src/features/splash/splash_screen.dart';
import 'package:finance_app_bubbles/src/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      theme: MaterialTheme(textTheme).light(),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/onboarding': (context) => const MyOnboarding(),
        '/singin': (context) => const SignIn(),
        '/signup': (context) => const SignUp(),
      },
    );
  }
}
