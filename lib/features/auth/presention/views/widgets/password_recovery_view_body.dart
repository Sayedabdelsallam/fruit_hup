import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';
import 'package:fruit_hub/core/extensions/extensions.dart';
import 'package:fruit_hub/core/routs/page_routes_name.dart';
import 'package:fruit_hub/core/theme/app_text_styles.dart';
import 'package:fruit_hub/core/theme/color_palette.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presention/views/widgets/dont_have_acc_widget.dart';
import 'package:fruit_hub/features/auth/presention/views/widgets/login_view_body.dart';
import 'package:fruit_hub/main.dart';

class PasswordRecoveryViewBody extends StatefulWidget {
  const PasswordRecoveryViewBody({super.key});

  @override
  State<PasswordRecoveryViewBody> createState() =>
      _PasswordRecoveryViewBodyState();
}

class _PasswordRecoveryViewBodyState extends State<PasswordRecoveryViewBody> {
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _submitCode() {
    String code = _controllers.map((controller) => controller.text).join();
    if (code.length == 4) {
      if (kDebugMode) {
        print('Submitted Code: $code');
      }
      // Handle the submitted code (e.g., verify OTP)
    } else {
      if (kDebugMode) {
        print('Please enter a 4-digit code.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        24.spaceVertical,
        Text(
          'أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي Maxxx@email.com',
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.darkGreyColor,
          ),
        ),
        29.spaceVertical,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(4, (index) {
            return SizedBox(
              width: 50.w,
              child: TextField(
                controller: _controllers[index],
                focusNode: _focusNodes[index],
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 1,
                decoration: InputDecoration(
                  counterText: '', // Hide the character counter
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (value) {
                  if (value.isNotEmpty && index < 3) {
                    _focusNodes[index + 1]
                        .requestFocus(); // Move to the next field
                  } else if (value.isEmpty && index > 0) {
                    _focusNodes[index - 1]
                        .requestFocus(); // Move to the previous field
                  }
                },
              ),
            );
          }),
        ),
        29.spaceVertical,
        CustomButton(
          onPressed: () {
            navigatorKey.currentState?.pushNamed(PageRoutesName.resetPassword);
          },
          title: 'تحقق من الرمز',
        ),
        24.spaceVertical,
        DontHaveAccWidget(
          onTap: (){},
          title: '',
          clickTitle: 'إعادة إرسال الرمز',
        ),
      ],
    ).setHorizontalPadding(context , 0.03);
  }
}
