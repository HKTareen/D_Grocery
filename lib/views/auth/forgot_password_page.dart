import 'package:flutter/material.dart';

import '../../core/components/custom_back_button.dart';
import '../../core/constants/app_defaults.dart';
import 'components/forgot_password_form.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),
              const Spacer(),
              Text(
                'Forgot \nPassword',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              AppDefaults.space,
              const Text(
                'Please enter your number. We will send a code to your phone to reset your password.',
              ),
              AppDefaults.space,
              AppDefaults.space,
              const ForgetPasswordForm(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
