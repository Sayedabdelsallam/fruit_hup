import 'package:flutter/material.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';
import 'package:fruit_hub/core/extensions/padding_ext.dart';
import 'package:fruit_hub/core/theme/color_palette.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_form_field.dart';
import 'package:fruit_hub/main.dart';

import '../../../../../core/routs/page_routes_name.dart';
import '../../../../../core/theme/app_text_styles.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        24.spaceVertical,
        Text(
          'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.darkGreyColor,
          ),
        ),
        31.spaceVertical,
        CustomFormField(
          hintText: '',
          keyboardType: TextInputType.phone,
        ),
        30.spaceVertical,
        CustomButton(
          onPressed: () {
            navigatorKey.currentState
                ?.pushNamed(PageRoutesName.passwordRecovery);
          },
          title: 'نسيت كلمة المرور',
        ),
      ],
    ).setHorizontalPadding(context, 0.03);
  }
}
