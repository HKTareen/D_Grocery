import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../core/components/app_elevated_button.dart';
import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/utils/form_validators.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isObscured = true;
  toggleObscured() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  void login() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (isValid) {
      debugPrint("Login form is valid");
      Navigator.pushNamed(context, AppRoutes.entryPoint);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Email Address'),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'you@email.com',
              prefixIcon: Icon(FluentIcons.mail_20_regular),
            ),
            validator: AppValidators.email,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
          ),
          AppDefaults.space,
          const Text('Password'),
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
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.visiblePassword,
            onFieldSubmitted: (v) => login(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () =>
                  Navigator.pushNamed(context, AppRoutes.forgotPassword),
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(),
              ),
              child: const Text('Forgot password?'),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: AppElevatedButton(
              onPressed: login,
              child: const Text('Sign In'),
            ),
          ),
          AppDefaults.space,
          const Align(
            alignment: Alignment.center,
            child: Text('or with'),
          ),
          AppDefaults.space,
        ],
      ),
    );
  }
}
