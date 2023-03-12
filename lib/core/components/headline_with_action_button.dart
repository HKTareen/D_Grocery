import 'package:flutter/material.dart';

class HeadlineWithActionButton extends StatelessWidget {
  const HeadlineWithActionButton({
    Key? key,
    required this.headline,
    required this.actionTitle,
    required this.onTap,
  }) : super(key: key);

  final String headline;
  final String actionTitle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headline,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.bodySmall,
          ),
          child: Text(actionTitle),
        ),
      ],
    );
  }
}
