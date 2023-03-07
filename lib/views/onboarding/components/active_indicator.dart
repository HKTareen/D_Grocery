import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class ActiveIndicator extends StatelessWidget {
  const ActiveIndicator({
    Key? key,
    required this.isActive,
    required this.isLast,
  }) : super(key: key);

  final bool isActive;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 4,
      width: isActive ? 70 : 30,
      decoration: BoxDecoration(
        color:
            isActive ? Theme.of(context).primaryColor : AppColors.placeholder,
        borderRadius: AppDefaults.borderRadius,
      ),
    );
  }
}
