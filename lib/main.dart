import 'package:flutter/material.dart';

import 'core/routes/app_routes.dart';
import 'core/routes/route_generator.dart';
import 'core/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery',
      theme: AppTheme.lightTheme,
      onGenerateRoute: RouteGenerator.onGenerate,
      initialRoute: AppRoutes.initial,
    );
  }
}
