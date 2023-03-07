import 'package:flutter/material.dart';

import '../../core/components/network_image.dart';
import '../../core/constants/app_defaults.dart';
import '../../core/routes/app_routes.dart';
import 'data/onboarding_data.dart';
import 'components/onboarding_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController controller;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  gotoLogin() {
    Navigator.pushNamed(context, AppRoutes.login);
  }

  onNext() {
    if (currentIndex < onboardings.length - 1) {
      controller.nextPage(duration: AppDefaults.duration, curve: Curves.ease);
    } else {
      gotoLogin();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.55,
            child: PageView.builder(
              controller: controller,
              itemCount: onboardings.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) => NetworkImageWithLoader(
                onboardings[index].imageUrl,
                radius: 0,
              ),
            ),
          ),
          Expanded(
            child: Transform.translate(
              offset: const Offset(0, -40),
              child: OnboardingContent(
                data: onboardings[currentIndex],
                currentIndex: currentIndex,
                onNext: onNext,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
