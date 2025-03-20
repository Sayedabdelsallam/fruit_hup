import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'widgets/password_recovery_view_body.dart';

class PasswordRecoveryView extends StatelessWidget {
  const PasswordRecoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(title: 'التحقق من الرمز'),
      body: PasswordRecoveryViewBody(),
    );
  }
}
