// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';
import '../../../core/constants/app_defaults.dart';
import '../../../core/routes/app_routes.dart';

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
            children: List.generate(2, (index) {
              return CouponTile(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    AppRoutes.couponDetails,
                  );
                },
              );
            }),
          ),
        ));
  }
}

class CouponTile extends StatelessWidget {
  const CouponTile({
    Key? key,
    required this.onTap,
    this.width,
    this.height,
  }) : super(key: key);

  final void Function() onTap;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 150,
      width: width ?? 290,
      padding: const EdgeInsetsDirectional.only(end: 16),
      child: ClipRRect(
        borderRadius: AppDefaults.borderRadius,
        child: NetworkImageWithLoader(
          'https://i.imgur.com/9AlJraI.png',
          onTap: onTap,
          fit: BoxFit.contain,
          borderRadius: AppDefaults.borderRadius,
        ),
      ),
    );
  }
}
