import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/main.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/routs/page_routes_name.dart';
import '../../../../../core/services/shared_preferences.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset('assets/images/splash_top.svg'),
          ],
        ),
        SvgPicture.asset('assets/images/app_logo.svg'),
        SvgPicture.asset(
          'assets/images/splash_bottom.svg',
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 2), () {
      bool? isOnBoardingSeen = SharedPreferencesHelper.getBool(kIsOnBoardingSeen);
      if (isOnBoardingSeen ?? false) {
        navigatorKey.currentState!.pushReplacementNamed(PageRoutesName.loginView);
      } else {
        navigatorKey.currentState!.pushReplacementNamed(PageRoutesName.onboardingView);
      }
    });
  }
}
