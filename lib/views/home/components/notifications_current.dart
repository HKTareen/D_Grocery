import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/dummy/dummy.dart';
import 'notification_tile.dart';
import 'notifications_now_indicator.dart';

class CurrentNotifications extends StatelessWidget {
  const CurrentNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NotificationsNowIndicator(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          child: DeliveryNotificationTile(
            showMap: true,
            thumbnail: dummyProducts[0].thumbnail,
          ),
        ),
      ],
    );
  }
}
