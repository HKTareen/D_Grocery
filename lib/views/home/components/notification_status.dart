import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class NotificationStatus extends StatelessWidget {
  const NotificationStatus({
    Key? key,
    required this.name,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  final String name;
  final bool isActive;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: AppDefaults.borderRadius,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDefaults.padding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: isActive ? AppColors.primary.withOpacity(0.1) : null,
            border: Border.all(
              color: isActive ? AppColors.primary : AppColors.placeholder,
            ),
            borderRadius: AppDefaults.borderRadius,
          ),
          child: Text(
            name,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: isActive ? AppColors.primary : Colors.grey,
                ),
          ),
        ),
      ),
    );
  }
}
