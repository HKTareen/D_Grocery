import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../core/components/app_elevated_button.dart';
import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/utils/form_validators.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController newPassword;
  late TextEditingController confirmPassword;

  bool isObscured = true;
  toggleObscured() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  void resetPassword() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (isValid) {
      Navigator.pushNamed(context, AppRoutes.entryPoint);
    }
  }

  @override
  void initState() {
    super.initState();
    newPassword = TextEditingController();
    confirmPassword = TextEditingController();
  }

  @override
  void dispose() {
    newPassword.dispose();
    confirmPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('New Password'),
          const SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              hintText: '***********',
              prefixIcon: const Icon(FluentIcons.lock_closed_20_regular),
              suffixIcon: IconButton(
                onPressed: toggleObscured,
                icon: Icon(
                  isObscured
                      ? FluentIcons.eye_off_20_regular
                      : FluentIcons.eye_20_regular,
                ),
              ),
            ),
            obscureText: isObscured,
            validator: AppValidators.password,
            textInputAction: TextInputAction.next,
            controller: newPassword,
            autofocus: true,
            keyboardType: TextInputType.visiblePassword,
          ),
          AppDefaults.space,
          const Text('Confirm Password'),
          const SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              hintText: '***********',
              prefixIcon: const Icon(FluentIcons.lock_closed_20_regular),
              suffixIcon: IconButton(
                onPressed: toggleObscured,
                icon: Icon(
                  isObscured
                      ? FluentIcons.eye_off_20_regular
                      : FluentIcons.eye_20_regular,
                ),
              ),
            ),
            obscureText: isObscured,
            validator: (v) => AppValidators.passwordMatcher(
                newPassword.text, confirmPassword.text),
            textInputAction: TextInputAction.done,
            controller: confirmPassword,
            onFieldSubmitted: (v) => resetPassword(),
            keyboardType: TextInputType.visiblePassword,
          ),
          AppDefaults.space,
          AppDefaults.space,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: AppElevatedButton(
              onPressed: resetPassword,
              child: const Text(
                'Reset Password',
              ),
            ),
          )
        ],
      ),
    );
  }
}
