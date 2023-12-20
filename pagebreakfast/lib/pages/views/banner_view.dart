import 'package:flutter/material.dart';
import 'package:pagebreakfast/responsive/responsive.dart';

class BannerView extends ResponsiveLayaout {
  const BannerView({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const BannerViewDesktop();
  }

  @override
  Widget buildTablet(BuildContext context) {
    return const BannerViewTablet();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const BannerViewMobile();
  }
}

class BannerViewDesktop extends StatelessWidget {
  const BannerViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final width = media.size.width;
    final height = media.size.height;
    final color = Theme.of(context).colorScheme;
    double maxWidth = width > desktopWidth ? desktopWidth : width;
    double maxHeight = height > desktopHeight ? desktopHeight : height;

    return Container(
      width: maxWidth,
      height: maxHeight,
      color: color.primary,
      child: Center(
        child: Text('{$height}'),
      ),
    );
  }
}

class BannerViewTablet extends StatelessWidget {
  const BannerViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: const Center(
        child: Text('BannerView Tablet'),
      ),
    );
  }
}

class BannerViewMobile extends StatelessWidget {
  const BannerViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: const Center(
        child: Text('BannerView Mobile'),
      ),
    );
  }
}
