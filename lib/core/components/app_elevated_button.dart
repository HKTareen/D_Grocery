import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const AppElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.borderRadius,
    this.width,
    this.gradient = const LinearGradient(
      colors: [
        Color(0xFF32CB4B),
        Color(0xFF26AD71),
      ],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(50);
    return Container(
      width: width,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: const StadiumBorder(),
        ),
        child: child,
      ),
    );
  }
}
