import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/image_assets.dart';

class SVG extends StatelessWidget {
  Color? color;
  String name;
  double? size;

  SVG({
    Key? key,
    this.color,
    required this.name,
    this.size=24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      ImageAsset.icon(name),
      color: color,
      height: size,
      width: size,
    );
  }
}
