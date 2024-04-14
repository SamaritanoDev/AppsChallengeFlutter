import 'dart:async';

import 'package:finance_app_bubbles/src/constants/contants.dart';
import 'package:finance_app_bubbles/src/utils/backgroung_cloud.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool navigationPending = false;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
        () => Navigator.pushNamed(context, '/onboarding'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundCloud(
        child: Image.asset(logoPng),
      ),
    );
  }
}
