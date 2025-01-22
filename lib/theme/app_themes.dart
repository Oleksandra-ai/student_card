import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black, fontSize: 16),
    titleLarge: TextStyle(color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
    surface: Colors.grey[850]!,
    onSurface: Colors.white,

  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
    titleLarge: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
  ),
);