import 'package:appmusic/ui/widgets/onboarding_auricular.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ContendOnboarding();
  }
}

class _ContendOnboarding extends StatelessWidget {
  const _ContendOnboarding();

  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).textTheme;
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(17, 60, 0, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customize Your Beat',
              style: styles.titleLarge?.copyWith(
                color: color.primary,
              ),
            ),
            Text(
              'Customize YLet’s vibe together , create your own playlist\n and enjoy music.',
              style: styles.bodyMedium,
            ),
            const SizedBox(height: 175),
            const Expanded(child: OnboardingAuricular()),
            const SizedBox(height: 40),
            Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                  color.primary,
                )),
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                label: Text(
                  'Get Started',
                  style: styles.labelSmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
