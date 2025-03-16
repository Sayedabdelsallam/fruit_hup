import 'package:flutter/material.dart';
import 'package:fruit_hub/features/on_boarding/presntion/views/on_boarding_view.dart';


import '../../features/splash/presntion/views/splash_view.dart';
import 'page_routes_name.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PageRoutesName.initial:
        {
          return MaterialPageRoute(
            builder: (context) => const SplashView(),
            settings: settings,
          );
        }
      case PageRoutesName.onboardingView:
        {
          return MaterialPageRoute(
            builder: (context) => const OnBoardingView(),
            settings: settings,
          );
        }
      default:
        {
          return MaterialPageRoute(
            builder: (context) => const SizedBox(),
            settings: settings,
          );
        }
    }
  }
}