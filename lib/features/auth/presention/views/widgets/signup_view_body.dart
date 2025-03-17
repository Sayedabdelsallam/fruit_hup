import 'package:flutter/material.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';
import 'package:fruit_hub/core/extensions/padding_ext.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_form_field.dart';
import 'package:fruit_hub/features/auth/presention/views/widgets/dont_have_acc_widget.dart';
import 'package:fruit_hub/features/auth/presention/views/widgets/terms_and_conditions.dart';
import '../../../../../core/routs/page_routes_name.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          24.spaceVertical,
          CustomFormField(
            hintText: 'الاسم كامل',
            keyboardType: TextInputType.name,
          ),
          16.spaceVertical,
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
          TermsAndConditions(),
          30.spaceVertical,
          CustomButton(
            onPressed: () {},
            title: 'إنشاء حساب جديد',
          ),
          26.spaceVertical,
          DontHaveAccWidget(
            onTap: (){
              Navigator.pushNamed(context, PageRoutesName.loginView);
            },
            title:'تمتلك حساب بالفعل؟',
            clickTitle: 'تسجيل دخول',
          ),
        ],
      ).setHorizontalPadding(context, 0.04),
    );
  }
}
