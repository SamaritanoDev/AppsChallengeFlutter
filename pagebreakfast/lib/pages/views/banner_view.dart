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

class BannerViewDesktop extends StatefulWidget {
  const BannerViewDesktop({super.key});

  @override
  State<BannerViewDesktop> createState() => _BannerViewDesktopState();
}

class _BannerViewDesktopState extends State<BannerViewDesktop>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();

    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        _rotationController.stop();
      }
    });
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final width = media.size.width;
    final height = media.size.height;
    final textTheme = Theme.of(context).textTheme;

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
            top: 100,
            right: 100,
            child: RotationTransition(
              turns: Tween(begin: 0.0, end: 1.0).animate(_rotationController),
              child: Container(
                width: 600,
                height: 650,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/bananna.png'),
                  ),
                ),
              ),
            ),
          ),
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
