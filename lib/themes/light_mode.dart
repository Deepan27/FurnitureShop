import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.blueAccent.shade700,
    secondary: Colors.blueAccent.shade400,
    tertiary: Colors.blueAccent.shade200
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black
  )
);