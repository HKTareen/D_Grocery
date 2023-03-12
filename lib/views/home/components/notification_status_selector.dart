import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import 'notification_status.dart';

class NotificationStatusSelector extends StatelessWidget {
  const NotificationStatusSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsetsDirectional.only(
        start: AppDefaults.padding,
      ),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NotificationStatus(
            name: 'All',
            isActive: true,
            onTap: () {},
          ),
          NotificationStatus(
            name: 'On Delivery',
            isActive: false,
            onTap: () {},
          ),
          NotificationStatus(
            name: 'Delivered',
            isActive: false,
            onTap: () {},
          ),
          NotificationStatus(
            name: 'Cancelled',
            isActive: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
