import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class NotificationsNowIndicator extends StatelessWidget {
  const NotificationsNowIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: Row(
        children: [
          Text(
            'Now',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(start: 8),
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefaults.padding,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              gradient: AppDefaults.gradient,
              borderRadius: AppDefaults.borderRadius,
            ),
            child: Text(
              '1',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
