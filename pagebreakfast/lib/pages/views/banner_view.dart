import 'package:flutter/material.dart';
import 'package:pagebreakfast/components/navbar/navbar.dart';
import 'package:pagebreakfast/constants/colors.dart';
import 'package:pagebreakfast/responsive/responsive.dart';
import 'package:pagebreakfast/widgets/quadractic_custom.dart';

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
    final textTheme = Theme.of(context).textTheme;
    //final color = Theme.of(context).colorScheme;
    //double maxWidth = width > desktopWidth ? desktopWidth : width;
    double maxHeight = height > desktopHeight ? desktopHeight : height;

    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          const Align(alignment: Alignment.topCenter, child: Navbar()),
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                const SizedBox(width: 300),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'YUMMY',
                      style: textTheme.displayLarge?.copyWith(
                          fontFamily: 'rubik scribble', color: brown),
                    ),
                    Text(
                      'BREAKFAST!',
                      style: textTheme.displayLarge
                          ?.copyWith(fontFamily: 'acme', color: brown),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur',
                      style: textTheme.bodyLarge?.copyWith(color: brown),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton.icon(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(green)),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Buy now',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ],
            ),
          ),
          //quadractic
          const QuadraticCustom(),
          Positioned(
            top: 30,
            right: 50,
            child: CircleAvatar(
              backgroundColor: brown,
              child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart)),
            ),
          ),
          Positioned(
            top: 200,
            right: 200,
            child: Container(
              color: brown,
              width: 500,
              height: 550,
            ),
          )
        ],
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
