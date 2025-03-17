import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presention/views/widgets/signup_view_body.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BuildAppBar(
        title: 'حساب جديد',
      ),
      body: SignupViewBody(),
    );
  }
}
