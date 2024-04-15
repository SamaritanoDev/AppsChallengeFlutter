import 'package:finance_app_bubbles/src/features/signIn/sign_in.dart';
import 'package:finance_app_bubbles/src/features/signUp/sign_up.dart';
import 'package:flutter/material.dart';

class LinkCustom extends StatelessWidget {
  final String questionText;
  final String routeName;
  const LinkCustom({
    super.key,
    required this.routeName,
    required this.questionText,
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

    return InkWell(
      // onTap: () => Navigator.pushNamed(context, '/sign$routeName'),
      onTap: () => {
        Navigator.push(
          context,
          routeName == 'up'
              ? MaterialPageRoute(
                  builder: (context) => const SignUp(),
                )
              : MaterialPageRoute(
                  builder: (context) => const SignIn(),
                ),
        )
      },
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              text: questionText,
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
      ),
    );
  }
}
