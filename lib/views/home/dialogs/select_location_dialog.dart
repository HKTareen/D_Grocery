import 'package:flutter/material.dart';

import '../../../core/components/arc_container.dart';
import '../../../core/components/network_image.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_defaults.dart';

class LocationSelectSheet extends StatelessWidget {
  const LocationSelectSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const BottomSheetTopHandle(),
        const SizedBox(height: 8),
        ArcContainer(
          child: Padding(
            padding: const EdgeInsets.all(AppDefaults.padding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppDefaults.space,
                LocationSelectTile(
                  isSelected: true,
                  mapImage: 'https://i.imgur.com/pUwxdTU.png',
                  label: 'Yona\'s home',
                  address:
                      'Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta, Indonesia',
                  onTap: () {},
                ),
                LocationSelectTile(
                  mapImage: 'https://i.imgur.com/UgM3pjc.png',
                  label: 'John\'s Home',
                  address:
                      'RT.001/RW.006, Cikiwul, Bantargebang, Kota Bks, Jawa Barat 17152, Indonesia',
                  onTap: () {},
                ),
                AppDefaults.space,
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BottomSheetTopHandle extends StatelessWidget {
  const BottomSheetTopHandle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 4,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: AppDefaults.borderRadius,
      ),
    );
  }
}

class LocationSelectTile extends StatelessWidget {
  const LocationSelectTile({
    Key? key,
    required this.label,
    required this.address,
    required this.mapImage,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  final String label;
  final String address;
  final String mapImage;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppDefaults.padding / 2),
      child: Material(
        color: Theme.of(context).cardColor,
        borderRadius: AppDefaults.borderRadius,
        child: InkWell(
          onTap: () {},
          borderRadius: AppDefaults.borderRadius,
          child: Container(
            padding: const EdgeInsets.all(AppDefaults.padding),
            decoration: BoxDecoration(
              borderRadius: AppDefaults.borderRadius,
              border: isSelected ? Border.all(color: AppColors.primary) : null,
            ),
            child: Row(
              children: [
                SizedBox(
                  height: 88,
                  width: 88,
                  child: NetworkImageWithLoader(
                    mapImage,
                  ),
                ),
                AppDefaults.spaceWidth,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(label),
                      const Divider(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 12,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              address,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
