import 'package:flutter/material.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/color_palette.dart';

class OrRow extends StatelessWidget {
  const OrRow({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.greyColor,
          ),
        ),
        18.spaceHorizontal,
        Text(
          title,
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.blackColor,
          ),
        ),
        18.spaceHorizontal,
        Expanded(
          child: Container(
            height: 1,
            color: AppColors.greyColor,
          ),
        ),
      ],
    );
  }
}