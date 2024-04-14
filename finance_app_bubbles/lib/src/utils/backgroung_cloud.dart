import 'package:finance_app_bubbles/src/constants/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundCloud extends StatelessWidget {
  final Widget child;
  const BackgroundCloud({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            child: SizedBox(
              child: SvgPicture.asset(
                cloudTop,
              ),
            ),
          ),
          Align(alignment: Alignment.center, child: child),
          Positioned(
            bottom: 0,
            child: SizedBox(
              child: SvgPicture.asset(
                cloudBottom,
              ),
            ),
          )
        ],
      ),
    );
  }
}
