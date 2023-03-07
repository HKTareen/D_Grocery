import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class ActiveIndicator extends StatelessWidget {
  const ActiveIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppDefaults.duration,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 4,
      width: isActive ? 40 : 16,
      decoration: BoxDecoration(
        color:
            isActive ? Theme.of(context).primaryColor : AppColors.placeholder,
        borderRadius: AppDefaults.borderRadius,
      ),
    );
  }
}
