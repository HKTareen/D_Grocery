import 'package:d_grocery/core/app/initial_view.dart';
import 'package:d_grocery/core/app/loading_page.dart';
import 'package:d_grocery/views/auth/forgot_password_page.dart';
import 'package:d_grocery/views/auth/login_page.dart';
import 'package:d_grocery/views/auth/reset_password_page.dart';
import 'package:d_grocery/views/auth/signup_page.dart';
import 'package:d_grocery/views/auth/terms_and_conditions_page.dart';
import 'package:d_grocery/views/auth/verify_your_identity_page.dart';
import 'package:d_grocery/views/entrypoint/entrypoint_page.dart';
import 'package:d_grocery/views/home/coupon_details_page.dart';
import 'package:d_grocery/views/home/notifications_page.dart';
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

      case AppRoutes.login:
        return CupertinoPageRoute(
          builder: (context) => const LoginPage(),
        );

      case AppRoutes.signup:
        return CupertinoPageRoute(
          builder: (context) => const SignUpPage(),
        );

      case AppRoutes.entryPoint:
        return CupertinoPageRoute(
          builder: (context) => const EntrypointPage(),
        );

      case AppRoutes.forgotPassword:
        return CupertinoPageRoute(
          builder: (context) => const ForgotPasswordPage(),
        );

      case AppRoutes.verifyIdentity:
        return CupertinoPageRoute(
          builder: (context) => const VerifyYourIdentityPage(),
        );

      case AppRoutes.resetPassword:
        return CupertinoPageRoute(
          builder: (context) => const ResetPasswordPage(),
        );

      case AppRoutes.termsAndConditions:
        return CupertinoPageRoute(
          builder: (context) => const TermsAndConditionsPage(),
        );

      case AppRoutes.couponDetails:
        return CupertinoPageRoute(
          builder: (context) => const CouponDetailsPage(),
        );

      case AppRoutes.notifications:
        return CupertinoPageRoute(
          builder: (context) => const NotificationsPage(),
        );

      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}
