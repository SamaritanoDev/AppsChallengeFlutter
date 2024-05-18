import 'package:flutter/material.dart';

class SubtitleCustom extends StatelessWidget {
  final String subtitle;
  const SubtitleCustom({
    super.key,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final subtitleStyle = textTheme.titleSmall?.copyWith(
      color: const Color(0xff666464),
      fontFamily: 'latoSemiBold',
    );

    return Text(
      subtitle,
      style: subtitleStyle,
    );
  }
}
