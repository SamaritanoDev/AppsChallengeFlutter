import 'package:flutter/material.dart';
import 'package:pagebreakfast/responsive/responsive.dart';
import 'package:pagebreakfast/widgets/widgets.dart';

class BenefitsView extends ResponsiveLayaout {
  const BenefitsView({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const BenefitsViewDesktop();
  }

  @override
  Widget buildTablet(BuildContext context) {
    return const BenefitsViewTablet();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const BenefitsViewMobile();
  }
}

class BenefitsViewDesktop extends StatelessWidget {
  const BenefitsViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final width = media.size.width;
    final height = media.size.height;
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    double maxWidth = width > desktopWidth ? desktopWidth : width;
    double maxHeight = height > desktopHeight ? desktopHeight : height;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      color: color.tertiary,
      width: maxWidth,
      height: maxHeight,
      child: Center(
        child: Column(
          children: [
            Text(
              'BenefitsView Desktop',
              style: textTheme.titleLarge!.copyWith(color: color.onTertiary),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                const CardsRow(),
                const SizedBox(height: 30),
                MyCard(
                  ancho: width * 0.82,
                  alto: height * 0.20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BenefitsViewTablet extends StatelessWidget {
  const BenefitsViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: const Center(
        child: Text('BenefitsView Tablet'),
      ),
    );
  }
}

class BenefitsViewMobile extends StatelessWidget {
  const BenefitsViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: const Center(
        child: Column(
          children: [
            Text('BenefitsView Mobile'),
            CardsRow(),
          ],
        ),
      ),
    );
  }
}
