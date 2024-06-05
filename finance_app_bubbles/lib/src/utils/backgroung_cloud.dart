import 'package:finance_app_bubbles/src/constants/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundCloud extends StatelessWidget {
  final Widget child;
  final double? heightCloudBottom;
  const BackgroundCloud({
    super.key,
    required this.child,
    this.heightCloudBottom,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 0,
          child: IgnorePointer(
            child: SvgPicture.asset(
              cloudTop,
              width: screenWidth,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: child,
        ),
        Positioned(
          bottom: 0,
          child: IgnorePointer(
            child: SizedBox(
              child: SvgPicture.asset(
                cloudBottom,
                width: screenWidth,
                height: heightCloudBottom != null
                    ? screenHeight * heightCloudBottom!
                    : screenHeight * 0.456,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
