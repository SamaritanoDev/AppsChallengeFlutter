import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() {
    const seedColor = Color(0xff6F259C);

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: seedColor,
      listTileTheme: const ListTileThemeData(iconColor: seedColor),
      iconTheme: const IconThemeData(color: seedColor),
    );
  }
}
