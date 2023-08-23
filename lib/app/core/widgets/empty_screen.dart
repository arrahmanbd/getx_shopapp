import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:zainik_task/app/core/widgets/app_text.dart';

import '../common/alert_dialouge.dart';
import '../constants/colors.dart';
import '../constants/image_assets.dart';
import '../constants/values.dart';
import '../utils/utils.dart';
import 'svg_icon.dart';

class Empty extends StatelessWidget {
  String image;
  String title;
  String subTitle;
  Function action;
  String ButtonText;
  Empty({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.action,
    required this.ButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SVG(
            name: 'empty',
            size: 220,
          ),
          AppText(
            text: title,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: ColorPalette.secondaryDark,
          )
              .animate()
              .fade(duration: 300.ms, begin: 0, curve: Curves.easeInSine),
          const SizedBox(height: 10.0),
          AppText(
            text: subTitle,
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: ColorPalette.secondaryDark,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0),
          SizedBox(
              width: size.width * .45,
              height: 48,
              child: TextButton(
                style:
                    TextButton.styleFrom(foregroundColor: Colors.transparent),
                child: Text(
                  ButtonText,
                  style: const TextStyle(
                      color: ColorPalette.primary, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Utility.blurDialog(
                      context,
                      CustomProfileCardDialog(
                        name: 'Saber Ali',
                        address: 'Dhaka,Bangladesh',
                        profile: ImageAsset.image('avatar_sm'),
                        image: ImageAsset.image('avatar'),
                      ));
                },
              )),
        ],
      ),
    );
  }
}
