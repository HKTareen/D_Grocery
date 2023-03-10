import 'package:flutter/material.dart';
import 'package:iconforest_grommet_icons/grommet_icons.dart';

import '../../../core/constants/constants.dart';

class SocialLogins extends StatelessWidget {
  const SocialLogins({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Material(
          borderRadius: AppDefaults.borderRadius,
          color: Theme.of(context).cardColor,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              onPressed: () {},
              icon: const GrommetIcons(
                GrommetIcons.apple,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Material(
          borderRadius: AppDefaults.borderRadius,
          color: Theme.of(context).cardColor,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              onPressed: () {},
              icon: const GrommetIcons(GrommetIcons.google),
            ),
          ),
        ),
        Material(
          borderRadius: AppDefaults.borderRadius,
          color: Theme.of(context).cardColor,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              onPressed: () {},
              icon: const GrommetIcons(GrommetIcons.twitter),
            ),
          ),
        ),
        Material(
          borderRadius: AppDefaults.borderRadius,
          color: Theme.of(context).cardColor,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              onPressed: () {},
              icon: const GrommetIcons(GrommetIcons.facebook_option),
            ),
          ),
        ),
      ],
    );
  }
}
