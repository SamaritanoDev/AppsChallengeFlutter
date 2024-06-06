import 'package:finance_app_bubbles/src/shared/buttons_social_media.dart';
import 'package:finance_app_bubbles/src/shared/form_email_password.dart';
import 'package:finance_app_bubbles/src/shared/line_leters.dart';
import 'package:finance_app_bubbles/src/shared/link_custom.dart';
import 'package:finance_app_bubbles/src/utils/backgroung_cloud.dart';
import 'package:finance_app_bubbles/src/utils/button_lage_custom.dart';
import 'package:finance_app_bubbles/src/utils/subtitle_custom.dart';
import 'package:finance_app_bubbles/src/utils/text_field_custom.dart';
import 'package:finance_app_bubbles/src/utils/title_custom.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = 160.00;
    String routeName = 'up';

    return Scaffold(
      body: BackgroundCloud(
        heightCloudBottom: 0.52,
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
              const SubtitleCustom(subtitle: 'Create your new account'),
              const SizedBox(height: 58),
              //form
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFieldCustom(
                    labelTextField: 'First name',
                    width: width,
                  ),
                  const Spacer(),
                  TextFieldCustom(
                    labelTextField: 'Last name',
                    width: width,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const FormEmailPassword(),
              const SizedBox(height: 33),
              ButtonLargeCustom(label: 'Sign $routeName'),
              const SizedBox(height: 34.5),
              Align(
                alignment: Alignment.center,
                child: LineLeters(
                  routeName: routeName,
                ),
              ),
              const SizedBox(height: 40),
              const ButtonsSocialMedia(),
              const SizedBox(height: 21),
              const LinkCustom(
                routeName: 'in',
                questionText: 'If you have an account?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
