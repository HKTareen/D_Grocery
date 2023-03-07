import 'package:flutter/material.dart';

import '../components/network_image.dart';
import '../constants/app_colors.dart';
import '../constants/app_defaults.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.placeholder,
      body: Column(
        children: [
          const Expanded(
            flex: 3,
            child: NetworkImageWithLoader(
              'https://i.imgur.com/ytWPAW0.png',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(AppDefaults.padding),
              child: Image.asset(
                'assets/images/logo_with_text.png',
                width: 120,
                height: 120,
              ),
            ),
          ),
          const LinearProgressIndicator(),
        ],
      ),
    );
  }
}
