import 'package:flutter/material.dart';

class LineLeters extends StatelessWidget {
  const LineLeters({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;
//styles
    final lineTextStyle = textTheme.headlineLarge?.copyWith(
      color: color.onPrimaryContainer,
      fontFamily: 'latoRegular',
      fontSize: 15,
    );
    return SizedBox(
      width: 279,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const LineCustom(),
          Text(
            'Or sign in with',
            style: lineTextStyle,
          ),
          const LineCustom(),
        ],
      ),
    );
  }
}

class LineCustom extends StatelessWidget {
  const LineCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff6F6F6F),
      width: 77,
      height: 1,
    );
  }
}
