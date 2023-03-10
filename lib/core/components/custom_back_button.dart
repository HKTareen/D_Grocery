import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    this.isOnAppBar = false,
  });

  final bool isOnAppBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isOnAppBar
          ? const EdgeInsetsDirectional.only(
              start: 16,
              top: 8,
              bottom: 8,
            )
          : EdgeInsets.zero,
      child: SizedBox(
        width: 60,
        height: 40,
        child: OutlinedButton(
          onPressed: () => Navigator.pop(context),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.grey,
            side: BorderSide(color: Colors.grey.shade200),
            shape: const StadiumBorder(),
            padding: EdgeInsets.zero,
          ),
          child: const Icon(
            BootstrapIcons.arrow_left,
            size: 18,
          ),
        ),
      ),
    );
  }
}
