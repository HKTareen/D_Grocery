import 'package:flutter/material.dart';

import '../../core/components/custom_back_button.dart';
import 'components/notification_search_box.dart';
import 'components/notification_status_selector.dart';
import 'components/notifications_current.dart';
import 'components/notifications_past.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(isOnAppBar: true),
        leadingWidth: 75,
        title: const Text('Notifications'),
      ),
      body: Column(
        children: const [
          NotificationSearchBox(),
          NotificationStatusSelector(),
          CurrentNotifications(),
          PastNotifications(),
        ],
      ),
    );
  }
}
