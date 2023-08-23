import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/core/themes/theme_data.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ZainikLab Task",
      theme: AppTheme.lightTheme,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
