import 'package:flutter/material.dart';

class LinkCustom extends StatelessWidget {
  final String routeName;
  const LinkCustom({
    super.key,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    //styles
    final textLinkStyle = textTheme.titleMedium?.copyWith(
      color: const Color(0xff3F3F3F),
      fontFamily: 'latoRegular',
    );
    final boldTextLinkStyle = textTheme.titleSmall?.copyWith(
      color: color.primary,
      fontFamily: 'latoSemiBold',
    );

    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: 'Don’t have an account?',
            style: textLinkStyle,
            children: <InlineSpan>[
              TextSpan(
                text: ' Sign $routeName',
                style: boldTextLinkStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
