import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class NotificationSearchBox extends StatelessWidget {
  const NotificationSearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDefaults.padding),
      child: TextFormField(
        decoration: const InputDecoration(
          labelText: 'Search your notifications',
          suffixIcon: Icon(FluentIcons.search_20_regular),
        ),
      ),
    );
  }
}
