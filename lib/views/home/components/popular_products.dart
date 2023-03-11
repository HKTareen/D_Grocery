import 'package:flutter/material.dart';

import '../../../core/components/product_tile.dart';
import '../../../core/constants/constants.dart';
import '../../../core/dummy/dummy.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Text(
            'Popular',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.only(
            left: AppDefaults.padding,
            right: AppDefaults.padding,
          ),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return ProductTile(
              product: dummyProducts[index],
              isFavourite: index == 0,
            );
          },
          itemCount: dummyProducts.length,
          physics: const NeverScrollableScrollPhysics(),
        )
      ],
    );
  }
}
