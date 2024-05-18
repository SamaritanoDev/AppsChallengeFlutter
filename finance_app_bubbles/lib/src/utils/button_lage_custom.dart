import 'package:flutter/material.dart';

class ButtonLargeCustom extends StatelessWidget {
  final String label;
  const ButtonLargeCustom({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    final titleButton = textTheme.titleSmall?.copyWith(
      color: color.onPrimary,
      fontFamily: 'latoSemiBold',
    );

    return Container(
      alignment: Alignment.center,
      width: 339,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color.primary,
      ),
      child: Text(
        label,
        style: titleButton,
      ),
    );
  }
}
