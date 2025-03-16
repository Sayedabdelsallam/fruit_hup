import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../theme/color_palette.dart';

void configLoading () {
  EasyLoading.instance
    ..displayDuration = const Duration(seconds: 3)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = AppColors.blackColor
    ..backgroundColor = AppColors.blackColor
    ..indicatorColor = AppColors.whiteColor
    ..textColor = AppColors.whiteColor
    ..maskColor = AppColors.blackColor
    ..userInteractions = false
    ..dismissOnTap = false
    ..maskType = EasyLoadingMaskType.black
    ..animationStyle = EasyLoadingAnimationStyle.scale
    ..dismissOnTap = false;
}