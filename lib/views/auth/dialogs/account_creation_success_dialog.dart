import 'package:d_grocery/core/components/app_elevated_button.dart';
import 'package:d_grocery/core/components/arc_container.dart';
import 'package:d_grocery/core/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../core/routes/app_routes.dart';

class AccountCreationSuccessfullDialog extends StatelessWidget {
  const AccountCreationSuccessfullDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ArcContainer(
      child: Padding(
        padding: const EdgeInsets.all(AppDefaults.padding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.2),
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.placeholder,
                  width: 15,
                ),
              ),
              child: const Icon(
                Icons.check_rounded,
                color: AppColors.primary,
                size: 80,
              ),
            ),
            AppDefaults.space,
            Text(
              'Success!',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              'You have successfully created\nyour account.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            AppDefaults.space,
            AppDefaults.space,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: AppElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.entryPoint),
                child: const Text('Browse Home'),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
