import 'package:flutter/material.dart';

class ButtonLargeCustom extends StatelessWidget {
  final String label;
  final String nameRoute;
  const ButtonLargeCustom({
    super.key,
    required this.label,
    required this.nameRoute,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
    final titleButton = textTheme.titleSmall?.copyWith(
      color: color.onPrimary,
      fontFamily: 'latoSemiBold',
    );

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          nameRoute,
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color.primary,
        ),
        child: Text(
          label,
          style: titleButton,
        ),
      ),
    );
  }
}
