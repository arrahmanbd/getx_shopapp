import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zainik_task/app/core/constants/colors.dart';
import 'package:zainik_task/app/core/widgets/svg_icon.dart';

import '../constants/image_assets.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class InputField extends StatelessWidget {
  final String icon;
  final TextInputType type;
  final String hintText;
  final int maxLines;
  const InputField({
    Key? key,
    required this.icon,
    required this.type,
    required this.hintText,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 36, bottom: 26),
      height: 44,
      decoration: BoxDecoration(
        color: ColorPalette.secondaryLight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(ImageAsset.icon('search'),height: 24,width: 24,),
                    onPressed: () {
                      // Add your search functionality here
                      //_.searchApi('i phone');
                    },
                  ),
                  TextFormField(
                    decoration:  InputDecoration(
                      hintText: hintText,
                      hintStyle: TextStyle(color: ColorPalette.secondaryDark.withOpacity(0.4),fontWeight: FontWeight.w400,fontSize: 14,letterSpacing: -0.3),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 48,bottom:5),
                    ),
                  ),
                ],),
    );
  }
}
