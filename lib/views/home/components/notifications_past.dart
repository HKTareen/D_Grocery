import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/dummy/dummy.dart';
import 'notification_tile.dart';

class PastNotifications extends StatelessWidget {
  const PastNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppDefaults.space,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          child: Text(
            'Past',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        ...List.generate(
          2,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefaults.padding,
              vertical: AppDefaults.padding / 2,
            ),
            child: DeliveryNotificationTile(
              isCancelled: index == 1,
              thumbnail: dummyProducts[4].thumbnail,
            ),
          ),
        ),
      ],
    );
  }
}
