import 'package:flutter/material.dart';

var KLightScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFFFFF8E8),
);
ThemeData LightTheme = ThemeData().copyWith(
  colorScheme: KLightScheme,
  scaffoldBackgroundColor: KLightScheme.surface,
);

var KDarkScheme = ColorScheme.fromSeed(
  seedColor: const Color(0xFF424242),
  brightness: Brightness.dark,
);
ThemeData DarkTheme = ThemeData.dark().copyWith(
  colorScheme: KDarkScheme,
  scaffoldBackgroundColor: KDarkScheme.surface,
);
