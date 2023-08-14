import 'package:flutter/material.dart';

class AppTheme {
  static const lightColor = Colors.indigo;
  static const darkColor = Colors.greenAccent;

  static final claro = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(color: lightColor, elevation: 0),
      primaryColor: lightColor,
      textButtonTheme: boton);

  static final oscuro = ThemeData.dark().copyWith(
      primaryColor: darkColor,
      appBarTheme: const AppBarTheme(color: darkColor, elevation: 0));

  static final boton = TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: lightColor));
}
