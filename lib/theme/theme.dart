import 'package:flutter/material.dart';
import 'generator.dart';

MaterialColor teal = createColorSwatch(const Color(0xff008080));
MaterialColor lavender = createColorSwatch(const Color(0xff967bb6));
MaterialColor crimson = createColorSwatch(const Color(0xffb90e0a));
MaterialColor charcoal = createColorSwatch(const Color(0xff36454f));

ThemeData theme = ThemeData(
  colorScheme: lightScheme,
  textTheme: textTheme
);
ColorScheme lightScheme =  ColorScheme.light(
  primary: teal[40]!,
  onPrimary: teal[100]!,
  primaryContainer: teal[90],
  onPrimaryContainer: teal[10],
  secondary: lavender[40]!,
  onSecondary: lavender[100]!,
  secondaryContainer: lavender[90],
  onSecondaryContainer: lavender[10],
  error: crimson[40]!,
  onError: crimson[100]!,
  errorContainer: crimson[90],
  onErrorContainer: crimson[10],
  background: charcoal[99]!,
  onBackground: charcoal[10]!
);

TextTheme textTheme = const TextTheme(
  bodyLarge: TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w700
  ),
  bodyMedium: TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500
  ),
  bodySmall: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300
  ),
);