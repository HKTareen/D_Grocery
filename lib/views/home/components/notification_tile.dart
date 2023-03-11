import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/constants.dart';

class DeliveryNotificationTile extends StatelessWidget {
  const DeliveryNotificationTile({
    Key? key,
    this.showMap = false,
    this.isCancelled = false,
    required this.thumbnail,
  }) : super(key: key);

  final bool showMap;
  final bool isCancelled;
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isCancelled
            ? Colors.red.shade100.withOpacity(0.5)
            : Theme.of(context).cardColor,
        borderRadius: AppDefaults.borderRadius,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: NetworkImageWithLoader(thumbnail),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order 08/18/2021',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    '\$25.4',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                  ),
                  const Divider(),
                  Text(
                    isCancelled
                        ? 'Cancelled by Buyer'
                        : 'Delivered to Yona\'s home',
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ],
          ),
          if (showMap)
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: const EdgeInsets.all(8),
              child: const NetworkImageWithLoader(
                'https://i.imgur.com/WhXXvLV.png',
              ),
            ),
        ],
      ),
    );
  }
}
