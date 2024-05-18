import 'package:flutter_bloc/flutter_bloc.dart';

part 'circular_slider_state.dart';

class CircularSliderCubit extends Cubit<CircularSliderState> {
  CircularSliderCubit() : super(CircularSliderState());

  void updateVolume(double value) {
    emit(CircularSliderState());
  }
}
