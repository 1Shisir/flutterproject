import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/colors.dart';
import 'package:flutterproject/src/constants/sizes.dart';

class SOutlinedButtonTheme {
  SOutlinedButtonTheme._();

//for light theme
  static final lightOutlineddButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: sSecondaryColor,
      side: const BorderSide(color: sSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );

//for dark theme
  static final darkOutlineddButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: sWhiteColor,
      side: const BorderSide(color: sWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );
}
