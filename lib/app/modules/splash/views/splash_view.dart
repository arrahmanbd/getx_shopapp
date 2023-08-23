import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:zainik_task/app/core/constants/colors.dart';
import 'package:zainik_task/app/core/widgets/app_text.dart';

import '../../../core/widgets/svg_icon.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarColor: ColorPalette.secondaryDark, // Navigation bar
        statusBarColor: ColorPalette.secondaryDark, // Status bar
      ),
      ),
      backgroundColor:ColorPalette.primary,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const AppText(
                    text: 'Hello',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.secondaryLight,
                  ).animate().fade(
                      duration: 300.ms, begin: 0, curve: Curves.easeInSine),
                  const SizedBox(height: 10.0),
                  SVG(
                    color: Colors.white,
                    name: 'splash',
                    size: 40,
                  ).animate().fade().slideX(
                      duration: 800.ms,
                      delay: 150.ms,
                      begin: 0,
                      curve: Curves.easeInSine),
                  const SizedBox(height: 20.0),
                  LoadingAnimationWidget.beat(
                    color: Colors.white,
                    size: 48,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
