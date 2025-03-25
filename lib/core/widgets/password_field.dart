import 'package:flutter/material.dart';
import 'custom_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomFormField(
      obscureText: obscureText,
      onSaved: (value) {},
      hintText: 'كلمة المرور',
      keyboardType: TextInputType.visiblePassword,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        icon: obscureText
            ? const Icon(
                Icons.remove_red_eye_outlined,
                color: Color(0xFFC9CECF),
              )
            : const Icon(
                Icons.visibility_off_outlined,
                color: Color(0xFFC9CECF),
              ),
      ),
    );
  }
}
