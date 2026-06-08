import 'package:flutter/material.dart';
import 'package:bilal_masala/utility/constants/app_colors.dart';

class AppTheme {

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColor.primary,
      brightness: Brightness.light,
      ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColor.primary,
      brightness: Brightness.dark,
      ),
  );
}