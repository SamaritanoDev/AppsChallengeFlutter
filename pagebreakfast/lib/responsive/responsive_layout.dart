import 'package:flutter/material.dart';

abstract class ResponsiveLayaout extends StatelessWidget {
  const ResponsiveLayaout({super.key});

  Widget buildMobile(BuildContext context);

  Widget buildTablet(BuildContext context);

  Widget buildDesktop(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 700) {
          return buildMobile(context);
        } else if (constraints.maxWidth <= 1014) {
          return buildTablet(context);
        } else {
          return buildDesktop(context);
        }
      },
    );
  }
}
