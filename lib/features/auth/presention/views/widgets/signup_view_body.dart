import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/extensions/dimensions.dart';
import 'package:fruit_hub/core/extensions/padding_ext.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_form_field.dart';
import 'package:fruit_hub/features/auth/presention/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruit_hub/features/auth/presention/views/widgets/dont_have_acc_widget.dart';
import 'package:fruit_hub/features/auth/presention/views/widgets/terms_and_conditions.dart';
import '../../../../../core/routs/page_routes_name.dart';
import '../../../../../core/widgets/password_field.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  late String email, password, name;
  late bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: _autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            24.spaceVertical,
            CustomFormField(
              onSaved: (value) => name = value!,
              hintText: 'الاسم كامل',
              keyboardType: TextInputType.name,
            ),
            16.spaceVertical,
            CustomFormField(
              onSaved: (value) => email = value!,
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.emailAddress,
            ),
            16.spaceVertical,
            PasswordField(
              onSaved: (value) => password = value!,
            ),
            16.spaceVertical,
            TermsAndConditions(
              onChecked: (value) {
                setState(() {
                  isTermsAccepted = value;
                });
              },
            ),
            30.spaceVertical,
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState?.save();
                 if (isTermsAccepted) {
                    context.read<SignupCubit>().createUserWithEmailAndPassword(
                        email: email, password: password, name: name);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('يرجى قبول الشروط والأحكام'),
                      ),
                    );
                  }
                } else {
                  setState(() {
                    _autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
              title: 'إنشاء حساب جديد',
            ),
            26.spaceVertical,
            DontHaveAccWidget(
              onTap: () {
                Navigator.pushNamed(context, PageRoutesName.loginView);
              },
              title: 'تمتلك حساب بالفعل؟',
              clickTitle: 'تسجيل دخول',
            ),
          ],
        ).setHorizontalPadding(context, 0.04),
      ),
    );
  }
}
