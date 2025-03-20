import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(title: 'نسيان كلمة المرور'),
      body: ForgetPasswordViewBody(),
    );
  }
}
