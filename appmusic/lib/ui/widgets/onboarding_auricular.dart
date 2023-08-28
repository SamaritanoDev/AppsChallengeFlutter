import 'package:appmusic/bloc/cubit/animation_auricular_cubit.dart';
import 'package:appmusic/config/enviroments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingAuricular extends StatelessWidget {
  const OnboardingAuricular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: BlocProvider(
        create: (context) => AnimationAuricularCubit(),
        child: _AnimatedImageSwitcher(),
      ),
    );
  }
}

class _AnimatedImageSwitcher extends StatelessWidget {
  void _switchImages(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 800), () {
      BlocProvider.of<AnimationAuricularCubit>(context).showImageWithShadow();
    });
  }

  @override
  Widget build(BuildContext context) {
    _switchImages(context);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        const _BackgroundAuricular(),
        Positioned(
          top: -200,
          right: -162,
          child: SizedBox(
            height: 600,
            child: BlocBuilder<AnimationAuricularCubit, AnimationAuricularState>(
              builder: (context, state) {
                if (state is ShadowlessImageState) {
                  return const _ImageWithShadow();
                } else if (state is ImageWithShadowState) {
                  return const _ShadowlessImage();
                }
                return const _ShadowlessImage(); // Return a default widget if needed
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _BackgroundAuricular extends StatelessWidget {
  const _BackgroundAuricular();

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: Image.asset(
        backgroundAuricularPath,
        fit: BoxFit.contain,
        height: 370,
      ),
    );
  }
}

class _ShadowlessImage extends StatelessWidget {
  const _ShadowlessImage();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      auricularPath,
      width: 600,
    );
  }
}

class _ImageWithShadow extends StatelessWidget {
  const _ImageWithShadow();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      auricularShadowPath,
      width: 600,
    );
  }
}
