import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zainik_task/app/core/constants/colors.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'DMSans',
    colorSchemeSeed: ColorPalette.primary,
    scaffoldBackgroundColor: ColorPalette.primaryLight,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        systemNavigationBarColor: ColorPalette.secondaryDark, // Navigation bar
        statusBarColor: ColorPalette.secondaryDark, // Status bar
      ),
      backgroundColor: ColorPalette.primary,
      centerTitle: false,
      titleTextStyle: TextStyle(color: ColorPalette.primaryLight),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: ColorPalette.primaryLight),
    cardColor: ColorPalette.primaryLight
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: ColorPalette.secondaryDark,
  );
}
