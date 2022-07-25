import 'package:flutter/material.dart';

const orange = Color(0xFFF15412);
const gray = Color(0xFFF5F5F5);
const white = Color(0xFFFFFFFF);
const black = Color(0xFF333333);
const red = Colors.red;

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: orange,
    secondary: orange,
    background: white,
    surface: gray,
    error: red,
    onBackground: black,
    onError: black,
    onPrimary: black,
    onSecondary: black,
    onSurface: black,
    surfaceTint: white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(black),
    ),
  ),
);

//TODO Check font theme