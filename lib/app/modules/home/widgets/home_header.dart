import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:zainik_task/app/core/constants/colors.dart';
import 'package:zainik_task/app/core/widgets/svg_icon.dart';
import '../../../core/common/alert_dialouge.dart';
import '../../../core/utils/utils.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SVG(color: ColorPalette.secondaryDark, name: 'Location'),
                  const SizedBox(width: 6),
                  const Text(
                    'AR Rahman',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.45,
                    ),
                  ).animate().fade().slideY(
                        duration: 250.ms,
                        begin: -1,
                        curve: Curves.easeInSine,
                      ),
                ],
              ),
              InkWell(
                onTap: () {
                  Utility.blurDialog(
                      context,
                      const CustomProfileCardDialog(
                        name: 'AR Rahman',
                        address: 'Bangladesh',
                        profile: 'assets/images/dev-modified.png',
                        image: 'assets/images/slider_2.jpg',
                      ));
                },
                child: Image.asset(
                  'assets/images/dev-modified.png',
                  width: 50,
                  height: 50,
                ).animate().fade().slideX(
                      duration: 300.ms,
                      begin: -1,
                      curve: Curves.easeInSine,
                    ),
              ),
            ],
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Discover',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ).animate()
            .slideY(duration: 500.ms, curve: Curves.easeOutCubic)
            .fadeIn(),
              const Text(
                'New Products',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              ).animate()
            .slideX(duration: 600.ms, curve: Curves.easeOutCubic)
            .fadeIn(),
            ],
          ),
        ],
      ),
    );
  }
}
