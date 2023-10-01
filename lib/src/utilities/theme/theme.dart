import 'package:flutter/material.dart';
import 'package:flutterproject/src/utilities/theme/widget_themes/elevated_button_theme.dart';
import 'package:flutterproject/src/utilities/theme/widget_themes/outlined_button_theme.dart';
import 'package:flutterproject/src/utilities/theme/widget_themes/text_field_theme.dart';
import 'package:flutterproject/src/utilities/theme/widget_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: MyTextTheme.lightTextTheme,
      outlinedButtonTheme: SOutlinedButtonTheme.lightOutlineddButtonTheme,
      elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: STextFormFieldTheme.lightInputDecorationTheme);

  static ThemeData darkTheme = ThemeData(
      outlinedButtonTheme: SOutlinedButtonTheme.darkOutlineddButtonTheme,
      brightness: Brightness.dark,
      textTheme: MyTextTheme.darkTextTheme,
      elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: STextFormFieldTheme.darkInputDecorationTheme);
}
