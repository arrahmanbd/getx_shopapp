import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/image_assets.dart';

class TabIcon extends StatelessWidget {
  final Color color;
  final String iconName;
  final int index;

  const TabIcon({
    Key? key,
    required this.color,
    required this.iconName,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (index == 2) {
      return Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              color: ColorPalette.secondaryDark, shape: BoxShape.circle),
          child: const Icon(
            Icons.add,
            color: ColorPalette.primaryLight,
          ));
    }
    return SvgPicture.asset(
      ImageAsset.icon(iconName),
      width: 24,
      height: 24,
      color: color,
    );
  }
}
