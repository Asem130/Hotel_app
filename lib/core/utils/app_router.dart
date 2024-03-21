import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/features/onboarding/presentation/views/onboarding_first_view.dart';

class AppRouter {
  static const kOnBoarding1 = 'on boaring';
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingView();
      },
    ),
  ]);
}
