import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/features/home/presentation/views/destination_view.dart';
import 'package:hotels/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:hotels/features/Auth/presentation/views/login_view.dart';
import 'package:hotels/features/Auth/presentation/views/register_view.dart';
import '../../features/home/presentation/views/home_view.dart';

class AppRouter {
  static const kOnBoarding = 'on boaring';
  static const kRigester = '/Register';
  static const kLogin = '/Login';
  static const kHome = '/Home';
  static const kDestination = '/Destination';
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const OnBoardingView();
      },
    ),
    GoRoute(
      path: kRigester,
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterView();
      },
    ),
    GoRoute(
      path: kLogin,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginView();
      },
    ),
    GoRoute(
      path: kHome,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kDestination,
      builder: (BuildContext context, GoRouterState state) {
        return const DestinationView();
      },
    ),
  ]);
}
