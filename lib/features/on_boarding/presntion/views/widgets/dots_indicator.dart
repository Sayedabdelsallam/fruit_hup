import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/color_palette.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    super.key,required this.dotsCount, required this.position, required this.decorator,

  });
  final int dotsCount;
  final int position;
  final DotsDecorator decorator;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return DotsIndicator(
      dotsCount: 2,
      position: 0,
      decorator: DotsDecorator(
        color: AppColors.greyColor,
        // Inactive color
        activeColor: AppColors.greenColor,
        size: Size.square(screenSize.width * 0.025),
        activeSize: Size(
          screenSize.width * 0.03,
          screenSize.width * 0.025,
        ),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}