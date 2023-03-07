import 'package:d_grocery/core/app/initial_view.dart';
import 'package:d_grocery/core/app/loading_page.dart';
import 'package:d_grocery/views/onboarding/onboarding_page.dart';
import 'package:flutter/cupertino.dart';

import 'app_routes.dart';
import 'unknown_page.dart';

class RouteGenerator {
  static Route? onGenerate(RouteSettings settings) {
    final route = settings.name;
    final args = settings.arguments;

    switch (route) {
      case AppRoutes.initial:
        return CupertinoPageRoute(
          builder: (context) => const InitialView(),
        );

      case AppRoutes.onboarding:
        return CupertinoPageRoute(
          builder: (context) => const OnboardingPage(),
        );

      case AppRoutes.welcome:
        return CupertinoPageRoute(
          builder: (context) => const LoadingPage(),
        );

      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}
