import 'package:finance_app_bubbles/src/shared/buttons_social_media.dart';
import 'package:finance_app_bubbles/src/shared/form_email_password.dart';
import 'package:finance_app_bubbles/src/shared/line_leters.dart';
import 'package:finance_app_bubbles/src/shared/link_custom.dart';
import 'package:finance_app_bubbles/src/utils/backgroung_cloud.dart';
import 'package:finance_app_bubbles/src/utils/button_lage_custom.dart';
import 'package:finance_app_bubbles/src/utils/subtitle_custom.dart';
import 'package:finance_app_bubbles/src/utils/title_custom.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    String routeName = 'in';
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    //styles

    final linkStyle = textTheme.titleSmall?.copyWith(
      fontFamily: 'latoRegular',
      color: color.primary,
      decoration: TextDecoration.underline,
    );

    return Scaffold(
      body: BackgroundCloud(
        heightCloudBottom: 0.5,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 26,
            right: 25,
            bottom: 101,
            top: 92,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TitleCustom(title: routeName),
              const SizedBox(height: 17),
              const SubtitleCustom(
                  subtitle: 'Hi ! Welcome back, you have been missed.'),
              const SizedBox(height: 58),
              //form
              const FormEmailPassword(),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: linkStyle,
                ),
              ),
              const SizedBox(height: 34),
              //Sign in
              const ButtonLargeCustom(label: 'Sign in'),
              const SizedBox(height: 58),
              Align(
                alignment: Alignment.center,
                child: LineLeters(
                  routeName: routeName,
                ),
              ),
              const SizedBox(height: 58),
              //buttons social
              const ButtonsSocialMedia(),
              const SizedBox(height: 48),
              const LinkCustom(
                routeName: 'up',
                questionText: 'Don’t have an account?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
