import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/constants/constants.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';
import 'package:fruit_hub/core/extensions/padding_ext.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/on_boarding/presntion/views/widgets/on_boarding_page_view.dart';
import '../../../../../core/routs/page_routes_name.dart';
import '../../../../../core/services/shared_preferences.dart';
import '../../../../../main.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;

  int currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        64.spaceVertical,
        DotsIndicator(
          dotsCount: 2,
          position: currentPage.toDouble(),
        ),
        currentPage == 1 ? 20.spaceVertical : 115.spaceVertical,
        currentPage == 1
            ? CustomButton(
                onPressed: () {
                  SharedPreferencesHelper.saveBool(kIsOnBoardingSeen, true);
                  navigatorKey.currentState?.pushReplacementNamed(
                    PageRoutesName.loginView,
                  );
                },
                title: 'ابدأ الان',
              ).setHorizontalAndVerticalPadding(
                context,
                0.03,
                0.02,
              )
            : const SizedBox(),
      ],
    );
  }
}
