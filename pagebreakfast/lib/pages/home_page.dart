import 'package:flutter/material.dart';
import 'package:pagebreakfast/constants/lists.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        primary: true,
        backgroundColor: Colors.grey[100],
        leading: Icon(
          Icons.computer,
          color: color.primary,
        ),
        title: const Text("flutterina studio"),
        elevation: 0,
      ),
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
