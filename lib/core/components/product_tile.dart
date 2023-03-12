import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../models/dummy_product.dart';
import 'app_elevated_button.dart';
import 'network_image.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.product,
    this.isFavourite = false,
  }) : super(key: key);

  final DummyProduct product;
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.5,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(AppDefaults.padding),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: AppDefaults.borderRadius,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 140,
                    width: 140,
                    child: NetworkImageWithLoader(
                      product.thumbnail,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Mango',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$ 1.8',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                      ),
                      const Text('/kg')
                    ],
                  )
                ],
              ),
            ),
            Positioned.directional(
              bottom: 0,
              end: 0,
              textDirection: Directionality.of(context),
              child: AppElevatedButton(
                onPressed: () {},
                borderRadius: const BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(AppDefaults.radius),
                  topStart: Radius.circular(AppDefaults.radius),
                ),
                padding: EdgeInsets.zero,
                child: const Icon(Icons.add),
              ),
            ),
            Positioned.directional(
              textDirection: Directionality.of(context),
              top: 10,
              end: 10,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: isFavourite
                      ? Border.all(
                          color: Colors.redAccent,
                          width: 0.3,
                        )
                      : null,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: isFavourite ? Colors.red : Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite,
                    size: 14,
                    color: isFavourite ? Colors.white : Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
