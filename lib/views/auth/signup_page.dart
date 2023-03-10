import 'package:flutter/material.dart';

import '../../core/components/custom_back_button.dart';
import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'components/signup_form.dart';
import 'components/social_logins.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                    'Welcome to Grofast!',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const SignUpForm(),
                  const SocialLogins(),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.login);
                        },
                        child: const Text('Sign In'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
