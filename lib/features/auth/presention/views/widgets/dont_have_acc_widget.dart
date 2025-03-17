import 'package:flutter/material.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/color_palette.dart';

class DontHaveAccWidget extends StatelessWidget {
  const DontHaveAccWidget({
    super.key,
    required this.title,
    required this.clickTitle,
    this.onTap,
  });

  final String title;
  final String clickTitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.greyColor,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            clickTitle,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.lightGreenColor,
            ),
          ),
        ),
      ],
    );
  }
}
