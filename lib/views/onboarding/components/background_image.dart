import 'package:flutter/material.dart';

import '../../../core/components/network_image.dart';

class OnboardingBackgroundImage extends StatelessWidget {
  const OnboardingBackgroundImage(this.imageUrl, {super.key});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: NetworkImageWithLoader(imageUrl)),
        // const Expanded(
        //   child: SizedBox(),
        // )
      ],
    );
  }
}
