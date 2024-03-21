import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/features/onboarding/presentation/manger/cubit/on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  OnBoardingCubit() : super(OnBoardingInitial());


}
