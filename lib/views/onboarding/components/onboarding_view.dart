import 'package:flutter/material.dart';

import '../data/onboarding_model.dart';
import 'background_image.dart';
import 'foreground_widgets.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    Key? key,
    required this.onboarding,
    required this.currentIndex,
    required this.onNext,
    required this.totalLength,
  }) : super(key: key);

  final OnboardingModel onboarding;
  final int currentIndex;
  final void Function() onNext;
  final int totalLength;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        OnboardingBackgroundImage(onboarding.imageUrl),
        Positioned(
          bottom: 0,
          child: OnboardingForegroundWidgets(
            data: onboarding,
            currentIndex: currentIndex,
            onNext: onNext,
            totalLength: totalLength,
          ),
        ),
      ],
    );
  }
}
