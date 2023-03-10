import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../core/components/app_elevated_button.dart';
import '../../../core/constants/constants.dart';
import '../../../core/routes/app_routes.dart';
import '../../../core/utils/form_validators.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isObscured = true;
  toggleObscured() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  void signUp() {
    bool isValid = formKey.currentState?.validate() ?? false;
    if (isValid) {
      debugPrint("Signup form is valid");
      Navigator.pushNamed(context, AppRoutes.verifyIdentity);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Full name'),
          const SizedBox(height: 8),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'John Xavier',
              prefixIcon: Icon(FluentIcons.mail_20_regular),
            ),
            validator: AppValidators.required,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
          ),
          AppDefaults.space,
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
            onFieldSubmitted: (v) => signUp(),
          ),
          AppDefaults.space,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: AppElevatedButton(
              onPressed: signUp,
              child: const Text('Sign Up'),
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
