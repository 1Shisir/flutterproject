import 'package:flutter/material.dart';
import 'package:flutterproject/src/constants/colors.dart';
import 'package:flutterproject/src/constants/sizes.dart';

class SElevatedButtonTheme {
  SElevatedButtonTheme._();

//for light theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      backgroundColor: sSecondaryColor,
      foregroundColor: sWhiteColor,
      side: const BorderSide(color: sSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );

//for dark theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(),
      backgroundColor: sWhiteColor,
      foregroundColor: sSecondaryColor,
      side: const BorderSide(color: sSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );
}
