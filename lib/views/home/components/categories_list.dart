import 'package:flutter/material.dart';

import '../../../core/components/headline_with_action_button.dart';
import '../../../core/components/network_image.dart';
import '../../../core/constants/app_defaults.dart';
import '../../../core/dummy/dummy.dart';
import '../../../core/models/dummy_category.dart';

class CategoriesListHorizontal extends StatelessWidget {
  const CategoriesListHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppDefaults.space,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
          child: HeadlineWithActionButton(
            headline: 'Categories',
            actionTitle: 'see all',
            onTap: () {},
          ),
        ),
        SingleChildScrollView(
          padding: const EdgeInsetsDirectional.only(start: AppDefaults.padding),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              dummyCategories.length,
              (index) => CategoryTile(
                data: dummyCategories[index],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.data,
  }) : super(key: key);

  final DummyCategory data;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: AppDefaults.borderRadius,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 65,
            width: 70,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            padding: const EdgeInsets.all(AppDefaults.padding),
            decoration: BoxDecoration(
              borderRadius: AppDefaults.borderRadius,
              color: const Color(0xFFEBF4F1),
            ),
            child: NetworkImageWithLoader(
              data.thumbnail,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 4),
          Text(data.name),
        ],
      ),
    );
  }
}
