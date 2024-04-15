import 'package:finance_app_bubbles/src/utils/backgroung_cloud.dart';
import 'package:finance_app_bubbles/src/utils/text_field_custom.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    //styles
    final titleStyle = textTheme.headlineLarge?.copyWith(
      color: color.onPrimaryContainer,
      fontFamily: 'latoRegular',
    );
    final subtitleStyle = textTheme.titleSmall?.copyWith(
      color: const Color(0xff666464),
      fontFamily: 'latoSemiBold',
    );

    return Scaffold(
      body: BackgroundCloud(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 55),
            Text('Sign in', style: titleStyle),
            const SizedBox(height: 17),
            Text(
              'Hi ! Welcome back, you have been missed.',
              style: subtitleStyle,
            ),
            const SizedBox(height: 58),
            const TextFieldCustom(labelTextField: 'Email'),
            const SizedBox(height: 21),
            const TextFieldCustom(labelTextField: 'Password'),
          ],
        ),
      ),
    );
  }
}
