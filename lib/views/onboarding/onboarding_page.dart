import 'package:flutter/material.dart';

import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'components/onboarding_view.dart';
import 'data/onboarding_data.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController controller;
  final data = onboardings;
  int currentIndex = 0;

  gotoLogin() {
    Navigator.pushNamed(context, AppRoutes.login);
  }

  onNext() {
    if (currentIndex < data.length - 1) {
      controller.nextPage(
        duration: AppDefaults.duration,
        curve: Curves.ease,
      );
    } else {
      gotoLogin();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        onPageChanged: (v) {
          setState(() {
            currentIndex = v;
          });
        },
        itemBuilder: (context, index) {
          return OnboardingView(
            onboarding: data[index],
            currentIndex: currentIndex,
            onNext: onNext,
            totalLength: data.length,
          );
        },
      ),
    );
  }
}
