import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';
import 'package:fruit_hub/core/extensions/padding_ext.dart';
import 'package:fruit_hub/core/routs/page_routes_name.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/main.dart';
import '../../../../../core/theme/color_palette.dart';
import '../../../../../core/widgets/custom_form_field.dart';
import 'dont_have_acc_widget.dart';
import 'or_row.dart';
import 'social_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          24.spaceVertical,
          CustomFormField(
            hintText: 'البريد الإلكتروني',
            keyboardType: TextInputType.emailAddress,
          ),
          16.spaceVertical,
          CustomFormField(
            hintText: 'كلمة المرور',
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xFFC9CECF),
              ),
            ),
          ),
          16.spaceVertical,
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.greenColor,
                  ),
                ),
              ],
            ),
          ),
          33.spaceVertical,
          CustomButton(
            onPressed: () {},
            title: 'تسجيل الدخول',
          ),
          33.spaceVertical,
          // => Create account
          DontHaveAccWidget(
            onTap: ()
            {
              navigatorKey.currentState?.pushNamed(PageRoutesName.signUpView);
            },
            title: 'لا تملك حساب؟',
            clickTitle: 'قم بإنشاء حساب',
          ),
          33.spaceVertical,
          OrRow(
            title : 'أو',
          ),
          16.spaceVertical,
          // => google login
          SocialButton(
            imagePath: 'assets/icons/google_icon.svg', // Path to Google logo
            label: 'تسجيل بواسطة جوجل',
            onPressed: () {
              // Handle Google sign-in
              if (kDebugMode) {
                print('Google Sign-In pressed');
              }
            },
          ),
          16.spaceVertical,
          // => apple login
          SocialButton(
            imagePath: 'assets/icons/apple_icon.svg', // Path to Google logo
            label: 'تسجيل بواسطة أبل',
            onPressed: () {
              // Handle Google sign-in
              if (kDebugMode) {
                print('Apple Sign-In pressed');
              }
            },
          ),
          16.spaceVertical,
          // => facebook login
          SocialButton(
            imagePath: 'assets/icons/facebook_icon.svg', // Path to Google logo
            label: 'تسجيل بواسطة فيسبوك',
            onPressed: () {
              // Handle Google sign-in
              if (kDebugMode) {
                print('Facebook Sign-In pressed');
              }
            },
          ),
        ],
      ),
    ).setHorizontalPadding(context, 0.04);
  }
}




