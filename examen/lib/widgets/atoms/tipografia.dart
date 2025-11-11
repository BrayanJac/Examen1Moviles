import 'package:flutter/material.dart';
import 'colores.dart';

class AppTextStyles {
  static const TextTheme textTheme = TextTheme(
    bodyLarge: TextStyle(fontSize: 18, color: ColoresApp.text),
    bodyMedium: TextStyle(fontSize: 16, color: ColoresApp.text),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: ColoresApp.primary,
    ),
  );
}
