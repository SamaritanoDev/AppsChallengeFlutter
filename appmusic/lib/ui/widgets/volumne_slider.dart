/// The `CircularSliderCustom` class is a Flutter widget that displays a sleek circular slider with a
/// custom appearance and functionality for controlling volume.
import 'package:appmusic/bloc/cicrular_slider/circular_slider_cubit.dart';
import 'package:appmusic/config/enviroments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularSliderCustom extends StatelessWidget {
  const CircularSliderCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CircularSliderCubit, CircularSliderState>(
      builder: (context, state) {
        return SleekCircularSlider(
          appearance: CircularSliderAppearance(
            animationEnabled: false,
            customWidths: CustomSliderWidths(
              shadowWidth: 0,
              handlerSize: 15,
              progressBarWidth: 20,
              trackWidth: 20,
            ),
            startAngle: 180,
            angleRange: 180,
            size: 300,
            customColors: CustomSliderColors(
              progressBarColor: const Color(0xffa96af1),
              trackColor: const Color(0xffdbdadc),
              dynamicGradient: true,
              dotColor: const Color(0xff6a2496),
            ),
          ),
          initialValue: state.volumeValue,
          min: 0,
          max: 100,
          onChange: (double value) {
            context.read<CircularSliderCubit>().updateVolume(value);
          },
          innerWidget: (double value) {
            return Center(
              child: ClipOval(
                child: Image.asset(
                  imageCircularSlider,
                  height: 200,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
