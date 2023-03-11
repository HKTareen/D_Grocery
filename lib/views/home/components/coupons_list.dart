import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/app_defaults.dart';

class CouponsListHorizontal extends StatelessWidget {
  const CouponsListHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.only(
            top: AppDefaults.padding,
            start: AppDefaults.padding,
          ),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(2, (index) => const CouponTile()),
          ),
        ));
  }
}

class CouponTile extends StatelessWidget {
  const CouponTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 290,
      padding: const EdgeInsetsDirectional.only(end: 16),
      child: ClipRRect(
        borderRadius: AppDefaults.borderRadius,
        child: NetworkImageWithLoader(
          'https://i.imgur.com/9AlJraI.png',
          onTap: () {},
          fit: BoxFit.contain,
          borderRadius: AppDefaults.borderRadius,
        ),
      ),
    );
  }
}
