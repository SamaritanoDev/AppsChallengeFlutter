import 'package:finance_app_bubbles/src/features/onboarding/domain/slide_info.dart';
import 'package:finance_app_bubbles/src/utils/backgroung_cloud.dart';
import 'package:flutter/material.dart';

class MyOnboarding extends StatelessWidget {
  const MyOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BackgroundCloud(
        child: _SliderOnboarding(),
      ),
    );
  }
}

class _SliderOnboarding extends StatefulWidget {
  const _SliderOnboarding();

  @override
  State<_SliderOnboarding> createState() => __SliderOnboardingState();
}

class __SliderOnboardingState extends State<_SliderOnboarding> {
  final PageController pageviewController = PageController();
  bool endReached = false;
  int selectedIndicator = 0;

  @override
  void initState() {
    super.initState();
    pageviewController.addListener(() {
      setState(() {
        selectedIndicator = pageviewController.page!.round();
      });
      if (!endReached && pageviewController.page! >= (slides.length - 1)) {
        endReached = true;
      }
    });
  }

  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final subtitleButton = textTheme.bodyLarge
        ?.copyWith(color: color.onPrimary, fontFamily: 'latoSemiBold');
    final subtitleTextButton = textTheme.titleLarge
        ?.copyWith(color: color.primary, fontFamily: 'latoRegular');

    return Stack(
      children: [
        PageView(
          controller: pageviewController,
          physics: const BouncingScrollPhysics(),
          children: slides
              .map(
                (slideData) => _SlideCustom(
                  title: slideData.title,
                  caption: slideData.caption,
                  imgaeUrl: slideData.imageUrl,
                ),
              )
              .toList(),
        ),

        //indicadores
        Positioned(
          bottom: 125,
          left: 0,
          right: 0,
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                //indicators
                Row(
                  children: List.generate(
                    slides.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedIndicator == index
                              ? color.primary
                              : const Color(0xffC6C5C5),
                          boxShadow: selectedIndicator == index
                              ? [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.5),
                                    blurRadius: 5.0,
                                    spreadRadius: 1.0,
                                  ),
                                ]
                              : null,
                        ),
                        width: 15.33,
                        height: 15.0,
                      ),
                    ),
                  ),
                ),
                //iconbutton
                const SizedBox(width: 83),
                if (selectedIndicator < slides.length - 1)
                  IconButton(
                    onPressed: () {
                      if (selectedIndicator < slides.length - 1) {
                        pageviewController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }
                    },
                    icon: Icon(
                      Icons.arrow_circle_right,
                      color: color.primary,
                      size: 40,
                    ),
                  ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: TextButton(
            onPressed: () {
              print("Skip button pressed");
              Navigator.pushReplacementNamed(context, '/singin');
            },
            child: Text('Skip', style: subtitleTextButton),
          ),
        ),
        endReached
            ? Visibility(
                visible: selectedIndicator == slides.length - 1,
                child: Positioned(
                  right: 19,
                  bottom: 125,
                  child: FilledButton(
                    onPressed: () {
                      print("Get Started button pressed");
                      Navigator.pushNamed(context, '/singin');
                    },
                    child: Text(
                      'Get Started',
                      style: subtitleButton,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}

class _SlideCustom extends StatelessWidget {
  final String title;
  final String caption;
  final String imgaeUrl;

  const _SlideCustom({
    required this.title,
    required this.caption,
    required this.imgaeUrl,
  });

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.headlineLarge
        ?.copyWith(color: color.primary, fontFamily: 'latoBold');
    final captionStyle = textTheme.titleLarge
        ?.copyWith(color: color.outline, fontFamily: 'latoRegular');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imgaeUrl,
              width: 430,
              height: 237,
            ),
            const SizedBox(height: 49),
            Text(title, style: titleStyle),
            const SizedBox(height: 35),
            Text(
              caption,
              style: captionStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
