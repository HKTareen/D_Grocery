import 'package:d_grocery/core/components/app_elevated_button.dart';
import 'package:d_grocery/core/constants/app_defaults.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDefaults.padding),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(FluentIcons.search_20_regular),
                hintText: 'Search fresh groceries',
              ),
            ),
          ),
          AppDefaults.space,
          Transform.scale(
            scale: 0.9,
            child: AppElevatedButton(
              onPressed: () {},
              borderRadius: AppDefaults.borderRadius,
              child: const Icon(
                FluentIcons.scan_object_20_filled,
                size: 26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
