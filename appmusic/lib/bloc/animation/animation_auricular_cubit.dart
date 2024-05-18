import 'package:flutter_bloc/flutter_bloc.dart';
part 'animation_auricular_state.dart';

class AnimationAuricularCubit extends Cubit<AnimationAuricularState> {
  AnimationAuricularCubit() : super(ShadowlessImageState());

  void showImageWithShadow() {
    emit(ImageWithShadowState());
  }

  void showShadowlessImage() {
    emit(ShadowlessImageState());
  }
}
