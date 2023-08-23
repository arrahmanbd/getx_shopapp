import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zainik_task/app/core/constants/colors.dart';

import '../../../core/constants/image_assets.dart';
import '../../../core/constants/values.dart';
import '../../../core/widgets/svg_icon.dart';


const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide.none,
);

class Filtering extends StatelessWidget {
  const Filtering({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
        child: TextFormField(
          onSaved: (value) {},
          decoration: InputDecoration(
            filled: true,
            fillColor:ColorPalette.secondaryLight,
            hintText: 'Search Best Deals',
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            errorBorder: outlineInputBorder,
            prefixIcon:  Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset(ImageAsset.icon('search')),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(
              horizontal: defaultSpacing, vertical: defaultSpacing / 2),
              child: SizedBox(
                 width: 48,
                height: 48,
                child: MaterialButton(onPressed: () {  }, 
                elevation: 0,
                color: ColorPalette.primary,
                 shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),),
                child: SVG(name:'Filter',color: ColorPalette.primaryLight)),
              ),
            ),
          
          ),
        ),
      ),
    );
  }
}
