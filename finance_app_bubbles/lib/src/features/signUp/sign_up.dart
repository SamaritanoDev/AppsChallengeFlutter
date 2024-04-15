import 'package:finance_app_bubbles/src/utils/backgroung_cloud.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundCloud(
        child: Center(
          child: Text('Sign Up'),
        ),
      ),
    );
  }
}
