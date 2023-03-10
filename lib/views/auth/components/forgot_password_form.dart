import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../core/components/app_elevated_button.dart';
import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/utils/form_validators.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({
    super.key,
  });

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  final formKey = GlobalKey<FormState>();

  void sendLink() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (isValid) {
      Navigator.pushNamed(context, AppRoutes.resetPassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Email Address'),
        const SizedBox(height: 8),
        Form(
          key: formKey,
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'you@email.com',
              prefixIcon: Icon(FluentIcons.mail_20_regular),
            ),
            validator: AppValidators.email,
            autofocus: true,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (v) => sendLink(),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        AppDefaults.space,
        AppDefaults.space,
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: AppElevatedButton(
            onPressed: sendLink,
            child: const Text('Send me link'),
          ),
        ),
      ],
    );
  }
}
