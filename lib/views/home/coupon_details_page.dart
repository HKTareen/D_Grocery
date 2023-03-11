import 'package:d_grocery/core/components/app_elevated_button.dart';
import 'package:d_grocery/core/components/custom_back_button.dart';
import 'package:d_grocery/core/constants/app_defaults.dart';
import 'package:d_grocery/views/home/components/coupons_list.dart';
import 'package:flutter/material.dart';

class CouponDetailsPage extends StatelessWidget {
  const CouponDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(isOnAppBar: true),
        leadingWidth: 75,
        title: const Text('Coupon Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'New Member \nDiscount',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                const Text('08/20/2021'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CouponTile(
              onTap: () {},
              width: MediaQuery.of(context).size.width,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Details'),
                const SizedBox(height: 8),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco laboris nisi ut.\n\nelit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Quis nostrud exercitation ullamco laboris nisi ut.'
                  '',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('How to use'),
                const SizedBox(height: 8),
                Text(
                  '-Lorem ipsum dolor sit amet, consectetur adipisicing\n-sed do eiusmod tempor incididunt ut labore\n-Ut enim ad minim veniam'
                  '',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        height: 1.6,
                      ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: AppElevatedButton(
                onPressed: () {},
                child: const Text('Claim Coupon'),
              ),
            ),
          ),
          AppDefaults.space,
        ],
      ),
    );
  }
}
