import 'package:finance_app_bubbles/src/utils/text_field_custom.dart';
import 'package:flutter/material.dart';

class FormEmailPassword extends StatelessWidget {
  const FormEmailPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextFieldCustom(labelTextField: 'Email'),
        SizedBox(height: 21),
        TextFieldCustom(labelTextField: 'Password'),
      ],
    );
  }
}
