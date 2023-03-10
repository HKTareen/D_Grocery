import 'package:d_grocery/core/components/custom_back_button.dart';
import 'package:d_grocery/core/constants/app_defaults.dart';
import 'package:flutter/material.dart';

import 'components/reset_password_form.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBackButton(),
                  const Spacer(),
                  Text(
                    'New\nPassword',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                      'At least 8 characters, with uppercase, lowercase and special character.'),
                  AppDefaults.space,
                  AppDefaults.space,
                  const ResetPasswordForm(),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
