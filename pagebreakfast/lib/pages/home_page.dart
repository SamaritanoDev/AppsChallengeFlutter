import 'package:flutter/material.dart';
import 'package:pagebreakfast/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBanana,
      body: Center(
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (final section in views) section,

                //footer
              ],
            ),
          ),
        ),
      ),
    );
  }
}
