import 'package:flutter/material.dart';
import 'package:pop/core/config/theme/app_color.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.ligthBacground,
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 0,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    ),
  );
  static final darkTheme = ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.darkBacground,
      brightness: Brightness.dark,
      fontFamily: 'Satoshi',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          elevation: 0,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          //padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ));
}
