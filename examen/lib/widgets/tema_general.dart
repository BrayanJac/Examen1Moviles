import 'package:flutter/material.dart';
import 'colores.dart';
import 'tipografia.dart';

class TemaGeneral {
  static ThemeData appTheme = ThemeData(
    primaryColor: ColoresApp.primary,
    scaffoldBackgroundColor: ColoresApp.background,
    textTheme: AppTextStyles.textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColoresApp.button,
        foregroundColor: Colors.white,
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColoresApp.primary, width: 2),
      ),
      labelStyle: TextStyle(
        color: ColoresApp.primary,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColoresApp.accent,
      error: ColoresApp.error,
    ),
  );
}
