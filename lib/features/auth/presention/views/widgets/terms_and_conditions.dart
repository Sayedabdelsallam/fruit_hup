import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../core/theme/color_palette.dart';
import 'custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {

  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (value) {
            setState(() {
              isTermsAccepted = value;
            });
          },
        ),
        6.spaceHorizontal,
        Text.rich(
          TextSpan(
            text: 'من خلال إنشاء حساب ، فإنك توافق على \n',
            style: TextStyles.semiBold13.copyWith(
              color: AppColors.greyColor,
            ),
            children: [
              TextSpan(
                text: ' الشروط والأحكام الخاصة بنا',
                style: TextStyles.semiBold13.copyWith(
                  color: AppColors.lightGreenColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Handle the tap event
                    print('الشروط والأحكام الخاصة بنا clicked');
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
