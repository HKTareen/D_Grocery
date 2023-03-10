import 'package:flutter/material.dart';

import '../../core/components/custom_back_button.dart';
import '../../core/constants/app_defaults.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(isOnAppBar: true),
        leadingWidth: 76,
        title: const Text('Term and agreement'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TermsAndDescription(
              title: '1. YOUR AGREEMENT',
              description:
                  'By using this Site, you agree to be bound by, and to comply with, these Terms and Conditions. If you do not agree to these Terms and Conditions, please do not use this site.\n\nPLEASE NOTE: We reserve the right, at our sole discretion, to change, modify or otherwise alter these Terms and Conditions at any time. Unless otherwise indicated, amendments will become effective immediately. Please review these Terms and Conditions periodically. Your continued use of the Site following the posting of changes and/or modifications will constitute your acceptance of the revised Terms and Conditions and the reasonableness of these standards for notice of changes. For your information, this page was last updated as of the date at the top of these terms and conditions.',
            ),
            TermsAndDescription(
              title: '2. PRIVACY',
              description:
                  'Please review our Privacy Policy, which also governs your visit to this Site, to understand our practices.',
            ),
            TermsAndDescription(
              title: '3. LINKED SITES',
              description:
                  'This Site may contain links to other independent third-party Web sites ("Linked Sites”). provided solely as a convenience to our visitors. ',
            )
          ],
        ),
      ),
    );
  }
}

class TermsAndDescription extends StatelessWidget {
  const TermsAndDescription({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          AppDefaults.space,
          Text(description),
        ],
      ),
    );
  }
}
