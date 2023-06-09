import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/app_defaults.dart';
import 'skeleton.dart';

class NetworkImageWithLoader extends StatelessWidget {
  final BoxFit fit;

  /// This widget is used for displaying network image with a placeholder
  const NetworkImageWithLoader(
    this.src, {
    Key? key,
    this.fit = BoxFit.cover,
    this.radius = AppDefaults.radius,
    this.borderRadius,
    this.placeHolder,
    this.onTap,
  }) : super(key: key);

  final String src;
  final double radius;
  final BorderRadius? borderRadius;
  final Widget? placeHolder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.all(Radius.circular(radius)),
      child: CachedNetworkImage(
        fit: fit,
        imageUrl: src,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: fit,
            ),
          ),
          child: onTap != null
              ? Material(
                  color: Colors.transparent,
                  borderRadius: AppDefaults.borderRadius,
                  child: InkWell(
                    onTap: onTap,
                    borderRadius: AppDefaults.borderRadius,
                  ),
                )
              : null,
        ),
        placeholder: (context, url) => placeHolder ?? const Skeleton(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
