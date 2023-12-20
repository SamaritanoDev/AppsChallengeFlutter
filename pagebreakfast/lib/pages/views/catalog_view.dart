import 'package:flutter/material.dart';
import 'package:pagebreakfast/responsive/responsive.dart';

class CatalogView extends ResponsiveLayaout {
  const CatalogView({super.key});

  @override
  Widget buildDesktop(BuildContext context) {
    return const CatalogViewDesktop();
  }

  @override
  Widget buildTablet(BuildContext context) {
    return const CatalogViewTablet();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const CatalogViewMobile();
  }
}

class CatalogViewDesktop extends StatelessWidget {
  const CatalogViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final width = media.size.width;
    final height = media.size.height;
    final color = Theme.of(context).colorScheme;
    double maxWidth = width > desktopWidth ? desktopWidth : width;
    double maxHeight = height > desktopHeight ? desktopHeight : height;

    return Container(
      color: color.secondary,
      width: maxWidth,
      height: maxHeight,
      child: const Center(
        child: Text('CatalogView Desktop'),
      ),
    );
  }
}

class CatalogViewTablet extends StatelessWidget {
  const CatalogViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: const Center(
        child: Text('CatalogView Tablet'),
      ),
    );
  }
}

class CatalogViewMobile extends StatelessWidget {
  const CatalogViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: const Center(
        child: Text('CatalogView Mobile'),
      ),
    );
  }
}
