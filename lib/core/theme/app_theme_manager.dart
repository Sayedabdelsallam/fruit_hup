
import 'package:flutter/material.dart';

import 'color_palette.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      centerTitle: true,
      titleTextStyle: TextStyle(color: AppColors.whiteColor, fontSize: 18),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.blackColor,
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.blackColor,
        centerTitle: true,
        titleTextStyle:
        TextStyle(color: AppColors.whiteColor, fontSize: 18),
        iconTheme: IconThemeData(
          color: AppColors.whiteColor,
        )),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        color: AppColors.whiteColor,
        fontFamily: "Inter",
      ),
    ),
  );
}