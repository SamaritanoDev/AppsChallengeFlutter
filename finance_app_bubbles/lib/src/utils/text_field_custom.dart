import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String labelTextField;
  const TextFieldCustom({
    super.key,
    required this.labelTextField,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    //styles
    final labelStyle = textTheme.titleMedium?.copyWith(
      color: color.primary,
      fontFamily: 'latoRegular',
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelTextField, style: labelStyle),
        const SizedBox(height: 5),
        const SizedBox(
          width: 339,
          height: 44,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
