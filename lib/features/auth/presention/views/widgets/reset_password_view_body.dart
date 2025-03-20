import 'package:flutter/material.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';
import 'package:fruit_hub/core/extensions/padding_ext.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/core/theme/color_palette.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_form_field.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        24.spaceVertical,
        Text(
          'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.blackColor,
          ),
        ),
        34.spaceVertical,
        CustomFormField(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.remove_red_eye_outlined,
              color: AppColors.greyColor,
            ),
          ),
          hintText: '',
          keyboardType: TextInputType.visiblePassword,
        ),
        24.spaceVertical,
        CustomFormField(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.remove_red_eye_outlined,
              color: AppColors.greyColor,
            ),
          ),
          hintText: '',
          keyboardType: TextInputType.visiblePassword,
        ),
        24.spaceVertical,
        CustomButton(
          onPressed: (){},
          title: 'إنشاء كلمة مرور جديدة',
        ),
      ],
    ).setHorizontalPadding(context , 0.03);
  }
}
