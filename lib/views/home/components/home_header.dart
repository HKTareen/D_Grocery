import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 40,
            width: 40,
            child: ClipOval(
              child: NetworkImageWithLoader(
                'https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=689&q=80',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDefaults.padding * 1.5,
              vertical: AppDefaults.padding / 1.5,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.grey),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Yona\'s home',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const Icon(
                  FluentIcons.caret_down_20_filled,
                  size: 16,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Stack(
              alignment: Alignment.topRight,
              children: [
                const Icon(Icons.notifications),
                Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
