import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import 'loading_page.dart';

class InitialView extends StatefulWidget {
  const InitialView({super.key});

  @override
  State<InitialView> createState() => _InitialViewState();
}

class _InitialViewState extends State<InitialView> {
  navigateToOnboarding() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.onboarding,
      (v) => false,
    );
  }

  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    return const LoadingPage();
  }
}
