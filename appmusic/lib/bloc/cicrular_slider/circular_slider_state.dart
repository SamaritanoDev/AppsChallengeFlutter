part of 'circular_slider_cubit.dart';

class CircularSliderState {
  final double volumeValue;

  CircularSliderState({
    this.volumeValue = 0.0,
  });

  CircularSliderState copyWhith({
    double? volumeValue,
  }) =>
      CircularSliderState(
        volumeValue: volumeValue ?? this.volumeValue,
      );

  @override
  List<Object> get props => [volumeValue];
}
