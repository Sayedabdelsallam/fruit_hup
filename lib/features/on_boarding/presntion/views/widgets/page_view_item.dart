import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';
import 'package:fruit_hub/core/extensions/padding_ext.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/main.dart';

import '../../../../../core/constants/constants.dart';
import '../../../../../core/routs/page_routes_name.dart';
import '../../../../../core/services/shared_preferences.dart';
import '../../../../../core/theme/color_palette.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
    required this.isVisible,
  });

  final String image;
  final String backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: screenSize.width,
          height: screenSize.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                  visible: isVisible,
                  child: GestureDetector(
                    onTap: () {
                      SharedPreferencesHelper.saveBool(kIsOnBoardingSeen, true);
                      navigatorKey.currentState?.pushReplacementNamed(
                        PageRoutesName.loginView,
                      );
                    },
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ).setHorizontalAndVerticalPadding(context, 0.03, 0.02),
                  )),
            ],
          ),
        ),
        50.spaceVertical,
        title,
        24.spaceVertical,
        Text(
          subtitle,
          style: TextStyles.semiBold13.copyWith(
            color: AppColors.darkGreyColor,
          ),
          textAlign: TextAlign.center,
        ).setHorizontalAndVerticalPadding(context, 0.1, 0.02),
      ],
    );
  }
}
