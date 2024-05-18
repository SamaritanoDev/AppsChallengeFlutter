import 'package:flutter/material.dart';

class TitleCustom extends StatelessWidget {
  final String title;
  const TitleCustom({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    //styles
    final titleStyle = textTheme.headlineLarge?.copyWith(
      color: color.onPrimaryContainer,
      fontFamily: 'latoRegular',
    );

    return Text(
      'Sign $title',
      style: titleStyle,
    );
  }
}
