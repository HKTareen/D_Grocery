import 'package:flutter/material.dart';

import '../../../core/components/arc_container.dart';
import '../../../core/constants/app_defaults.dart';
import '../data/onboarding_model.dart';
import 'active_indicator.dart';

class OnboardingForegroundWidgets extends StatelessWidget {
  const OnboardingForegroundWidgets({
    Key? key,
    required this.data,
    required this.totalLength,
    required this.currentIndex,
    required this.onNext,
  }) : super(key: key);

  final OnboardingModel data;
  final int totalLength;
  final int currentIndex;
  final void Function() onNext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.8,
      width: MediaQuery.of(context).size.width,
      child: ArcContainer(
        child: Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    totalLength,
                    (int index) => ActiveIndicator(
                      isActive: currentIndex == index,
                      isLast: false,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppDefaults.padding),
                child: Text(
                  data.headline,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDefaults.padding,
                ),
                child: Text(
                  data.description,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        height: 1.5,
                        color: Theme.of(context).textTheme.bodySmall?.color,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(flex: 2),
              _NextButton(onNext: onNext),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _NextButton extends StatelessWidget {
  const _NextButton({
    required this.onNext,
  });

  final void Function() onNext;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        AppDefaults.padding / 2,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).primaryColor.withOpacity(0.4),
          width: 0.5,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
        onPressed: onNext,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(
            vertical: AppDefaults.padding * 1.5,
            horizontal: AppDefaults.padding * 4,
          ),
        ),
        child: const Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}
