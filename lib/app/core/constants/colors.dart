import 'package:flutter/material.dart';

class ColorPalette {
  ColorPalette._();
  static const primary = Color(0xFFF15223);
  static const primaryLight = Color(0xFFFFFFFF);
  static const secondaryDark = Color(0xFF040415);
  static const secondaryLight = Color(0xFFF4F5F7);
  static const brandColor = Color(0xFF01C08D);
  static const unSelectedBottombar = Color(0XFF130F26);
  static const gradient = LinearGradient(
    colors: [
      Color(0xFFE9E9E9),
      Color(0xFFFFFAFA),
      Color(0xFFE7E6E6),
    ],
    stops: [0.4, 0.5, 0.6],
    begin: Alignment(-1, 0),
    end: Alignment(1, 0),
  );
}
