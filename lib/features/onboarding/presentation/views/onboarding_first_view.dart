import 'package:flutter/material.dart';
import 'package:hotels/core/utils/shared.dart';
import 'package:hotels/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:hotels/features/register/presentation/views/register_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingViewBody(),
    );
  }
}


/*void submit(BuildContext context) {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) {
      if (value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const RegisterView()),
            (route) => false);
      }
    });
  }*/