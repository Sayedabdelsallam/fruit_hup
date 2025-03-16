import 'package:flutter/material.dart';
import 'package:fruit_hub/core/theme/color_palette.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var themeText = Theme.of(context).textTheme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(screenSize.width, screenSize.height * 0.06),
        backgroundColor: AppColors.greenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: themeText.bodyLarge?.copyWith(
          color: AppColors.whiteColor,
          fontSize: screenSize.width * 0.05,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
