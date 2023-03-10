import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/components/app_elevated_button.dart';
import '../../core/components/custom_back_button.dart';
import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'dialogs/account_creation_success_dialog.dart';

class VerifyYourIdentityPage extends StatelessWidget {
  const VerifyYourIdentityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBackButton(),
                  const Spacer(),
                  Text(
                    'Verify your\nIdentity',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  AppDefaults.space,
                  const Text('We have just sent a code to'),
                  const SizedBox(height: 4),
                  const Text('hello.john@email.com'),
                  AppDefaults.space,
                  AppDefaults.space,
                  const OTPTextInputs(),
                  AppDefaults.space,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Didn\'t receive the code?'),
                      Focus(
                        descendantsAreFocusable: false,
                        canRequestFocus: false,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Resend Code',
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppDefaults.space,
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: AppElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (c) =>
                                const AccountCreationSuccessfullDialog(),
                            backgroundColor: Colors.transparent);
                      },
                      child: const Text(
                        'Verification',
                      ),
                    ),
                  ),
                  AppDefaults.space,
                  AppDefaults.space,
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        const Text('By signing up, you agree to our'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, AppRoutes.termsAndConditions);
                          },
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          child: const Text('Terms and Conditions'),
                        ),
                      ],
                    ),
                  ),
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

class OTPTextInputs extends StatelessWidget {
  const OTPTextInputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 68,
          height: 68,
          child: TextFormField(
            onChanged: (v) {
              if (v.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(
          width: 68,
          height: 68,
          child: TextFormField(
            onChanged: (v) {
              if (v.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(
          width: 68,
          height: 68,
          child: TextFormField(
            onChanged: (v) {
              if (v.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(
          width: 68,
          height: 68,
          child: TextFormField(
            onChanged: (v) {
              if (v.length == 1) {
                FocusScope.of(context).nextFocus();
              } else {
                FocusScope.of(context).previousFocus();
              }
            },
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly,
            ],
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}
