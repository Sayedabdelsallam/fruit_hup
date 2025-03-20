import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presention/views/forget_password_view.dart';
import 'package:fruit_hub/features/auth/presention/views/login_view.dart';
import 'package:fruit_hub/features/auth/presention/views/password_recovery_view.dart';
import 'package:fruit_hub/features/auth/presention/views/reset_password_view.dart';
import 'package:fruit_hub/features/auth/presention/views/signup_view.dart';
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
      case PageRoutesName.loginView:
        {
          return MaterialPageRoute(
            builder: (context) => const LoginView(),
            settings: settings,
          );
        }
      case PageRoutesName.signUpView:
        {
          return MaterialPageRoute(
            builder: (context) => const SignupView(),
            settings: settings,
          );
        }
      case PageRoutesName.forgotPasswordView:
        {
          return MaterialPageRoute(
            builder: (context) => const ForgetPasswordView(),
            settings: settings,
          );
        }
      case PageRoutesName.passwordRecovery:
        {
          return MaterialPageRoute(
            builder: (context) => const PasswordRecoveryView(),
            settings: settings,
          );
        }
      case PageRoutesName.resetPassword:
        {
          return MaterialPageRoute(
            builder: (context) => const ResetPasswordView(),
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